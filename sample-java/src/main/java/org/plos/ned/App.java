/*
 * Copyright (c) 2017 Public Library of Science
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package org.plos.ned;

import org.plos.ned_client.*;
import org.plos.ned_client.api.*;
import org.plos.ned_client.auth.*;

import java.io.UnsupportedEncodingException;
import javax.xml.bind.DatatypeConverter;

public class App {
  public static void main( String[] args ) throws ApiException {

    ApiClient apiclient = new ApiClient();
    apiclient.setBasePath("http://digitus.plos.org:8080/v1");
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
