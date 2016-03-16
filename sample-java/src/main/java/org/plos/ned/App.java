package org.plos.ned;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.auth.*;

import java.io.UnsupportedEncodingException;
import javax.xml.bind.DatatypeConverter;

public class App {
    public static void main( String[] args ) throws ApiException {

        ApiClient apiclient = new ApiClient();
        apiclient.setBasePath("http://localhost:8080/v1");
        apiclient.setUsername("akita");
        apiclient.setPassword("akita");
        apiclient.setDebugging(true);

        ServiceApi serviceApi = new ServiceApi(apiclient);
        TypeclassesApi typeclassesapi = new TypeclassesApi(apiclient);
        IndividualsApi individualsApi = new IndividualsApi(apiclient);

        System.out.println(serviceApi.config());

        System.out.println("typeclass description: " +
        typeclassesapi.read(12).getDescription());

        individualsApi.readIndividual(476550);

        System.out.println("Start date: " +individualsApi.getGroups(476550).get(0).getStartdate());

    }
}
