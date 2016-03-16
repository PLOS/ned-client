package org.plos.ned;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.auth.*;

import java.io.UnsupportedEncodingException;
import javax.xml.bind.DatatypeConverter;

// import com.fasterxml.jackson.databind.ObjectMapper;
// import com.fasterxml.jackson.datatype.jdk8.Jdk8Module;

public class App {
    public static void main( String[] args ) throws ApiException {

        // ObjectMapper mapper = new ObjectMapper();
        // mapper.registerModule(new Jdk8Module());

        ApiClient apiclient = new ApiClient();
        apiclient.setBasePath("http://localhost:8080/v1");
        apiclient.setUsername("akita");
        apiclient.setPassword("akita");
        apiclient.setDebugging(true);

        ServiceApi serviceApi = new ServiceApi(apiclient);
        TypeclassesApi typeclassesapi = new TypeclassesApi(apiclient);
        IndividualsApi individualsApi = new IndividualsApi(apiclient);

        System.out.println(serviceApi.config());

        System.out.println("typeclass description: " + typeclassesapi.read(12).getDescription());

        individualsApi.readIndividual(476550);

    }
}
