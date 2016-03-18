package org.plos.ned_client.api;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.model.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.time.*;
import org.junit.*;
import java.time.format.DateTimeFormatter;

import static org.junit.Assert.*;

public class IndividualsApiTest {

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

    IndividualsApi api = new IndividualsApi();

    IndividualComposite c = new IndividualComposite();

    Individualprofile p = new Individualprofile();
    p.setId(1);
    p.setFirstname("test");
    List<Individualprofile> ps = new ArrayList<Individualprofile>();
    ps.add(p);

    c.setIndividualprofiles(ps);

    Group g = new Group();
    g.setId(1);
    g.setStartdate(LocalDate.of(1996, 2, 4));

    List<Group> gs = new ArrayList<Group>();
    gs.add(g);

    c.setGroups(gs);

    // TODO: mock request to/from server
    api.createIndividual(c, null);

  }

  // TODO: finish from https://github.com/fehguy/swagger-codegen/blob/sample/java8/samples/client/petstore/java/default/src/test/java/io/swagger/petstore/test/PetApiTest.java

}
