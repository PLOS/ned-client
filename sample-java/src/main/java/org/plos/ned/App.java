package org.plos.ned;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.auth.*;

import java.io.UnsupportedEncodingException;
import javax.xml.bind.DatatypeConverter;

public class App {
    public static void main( String[] args ) throws ApiException {

        ApiClient apiclient = new ApiClient();
        apiclient.setBasePath("https://prod-ned01.plos.org/v1");
        apiclient.setUsername("akita");
        apiclient.setPassword("6AhNM9Mb9rFQhSPx0zJa");
        apiclient.setDebugging(true);

        ServiceApi serviceApi = new ServiceApi(apiclient);
        TypeclassesApi typeclassesapi = new TypeclassesApi(apiclient);

        IndividualsApi individualsApi = new IndividualsApi(apiclient);

        System.out.println(serviceApi.config());

        System.out.println("typeclass description: " + typeclassesapi.read(12).getDescription());

        System.out.println("groups: " + individualsApi.readIndividual(1012).getGroups());

    }
}
