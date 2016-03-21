package org.plos.ned_client.api;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.datatype.joda.*;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.model.*;

import java.text.DateFormat;
import java.util.*;

import org.joda.time.LocalDate;
import org.junit.*;

import static org.junit.Assert.*;

public class IndividualsApiTest {

  private ObjectMapper mapper = createObjectMapper();

  @Test
  public void testCreateApi() {

    ApiClient client = new ApiClient();
    client.setBasePath("http://example.com");
    client.setDebugging(true);

    IndividualsApi api = new IndividualsApi(client);

    assertNotNull(api.getApiClient());
  }

  @Test
  public void testCreateIndividual() throws ApiException {

    IndividualComposite ic = minimalIndividualComposite();

    // mimic over-the-wire marshalling (client model -> json)
    byte[] bytes = serializeJson(ic).getBytes();

    // unmarshal (json -> client model)
    IndividualComposite ic2 = deserializeJson(new String(bytes), IndividualComposite.class);

    assertEquals(ic, ic2);
  }

  @Test
  public void testInvalidJsonPayload() throws ApiException {

    IndividualComposite ic = minimalIndividualComposite();
    String icJson = serializeJson(ic);

    // invalidate group startdate
    icJson = icJson.replaceAll("1996-02-04", "2016-03-16T15:09:15.763-07:00");

    try {
      IndividualComposite composite = deserializeJson(icJson, IndividualComposite.class);
    } catch (RuntimeException expected) {
      // JsonMappingException: Invalid format: "2016-03-16T15:09:15.763-07:00"
    }
  }

  private IndividualComposite minimalIndividualComposite() {

    IndividualComposite c = new IndividualComposite();

    Individualprofile p = new Individualprofile();
    p.setId(1);
    p.setFirstname("test");
    List<Individualprofile> ps = new ArrayList<Individualprofile>();
    ps.add(p);

    c.setIndividualprofiles(ps);

    Group g = new Group();
    g.setId(1);
    g.setStartdate(new LocalDate(1996, 2, 4));

    List<Group> gs = new ArrayList<Group>();
    gs.add(g);

    c.setGroups(gs);

    return c;
  }

  private String serializeJson(Object o) {
    try {
      return mapper.writeValueAsString(o);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  private <T> T deserializeJson(String json, Class<T> klass) {
    try {
      return mapper.readValue(json, klass);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  private ObjectMapper createObjectMapper() {
    ObjectMapper mapper = new ObjectMapper();
    mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);

    // NOTE: ApiClient is configured to ignore unknown properties which may
    //       be appropriate for consumers (ie, silently fails). however, 
    //       for testing, it is helpful to fail on this.
    mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, true);

    mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    mapper.enable(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
    mapper.enable(DeserializationFeature.READ_ENUMS_USING_TO_STRING);
    mapper.registerModule(new JodaModule());

    DateFormat dateFormat = new ClientDateTimeFormat();
    dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    mapper.setDateFormat((DateFormat) dateFormat);

    return mapper;
  }

  // TODO: finish from https://github.com/fehguy/swagger-codegen/blob/sample/java8/samples/client/petstore/java/default/src/test/java/io/swagger/petstore/test/PetApiTest.java
}
