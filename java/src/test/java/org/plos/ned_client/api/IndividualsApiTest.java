package org.plos.ned_client.api;

// import org.plos.ned_client.api.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.time.*;
import org.junit.*;
import java.time.format.DateTimeFormatter;

import static org.junit.Assert.*;

public class IndividualsApiTest {

  @Test
  public void testIndividual() {

    ApiClient client = new ApiClient();
    client.setBasePath("http://example.com");
    client.setDebugging(true);

    IndividualsApi api = new IndividualsApi(client);


    // TODO: finish from https://github.com/fehguy/swagger-codegen/blob/sample/java8/samples/client/petstore/java/default/src/test/java/io/swagger/petstore/test/PetApiTest.java

    // Group g = new Group();
    //
    // g.setStartdate(LocalDate.of(1994, 2, 4));
    //
    // DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    //
    // g.setEnddate(LocalDate.parse("2005-01-12", formatter));
    //
    // assertEquals(g.getEnddate().toString(), "2005-01-12");
    // assertEquals(g.getStartdate().toString(), "1994-02-04");

    // g.setCreated = new Date(1994, 2, 6);

    // assertEquals(g.getCreated().toString(), "1994-02-06");
  }
}
