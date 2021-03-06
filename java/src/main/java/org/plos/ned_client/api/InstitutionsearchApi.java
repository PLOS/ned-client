package org.plos.ned_client.api;

import com.sun.jersey.api.client.GenericType;

import org.plos.ned_client.ApiException;
import org.plos.ned_client.ApiClient;
import org.plos.ned_client.Configuration;
import org.plos.ned_client.Pair;


import java.util.*;

@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen")

public class InstitutionsearchApi {
  private ApiClient apiClient;

  public InstitutionsearchApi() {
    this(Configuration.getDefaultApiClient());
  }

  public InstitutionsearchApi(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  public ApiClient getApiClient() {
    return apiClient;
  }

  public void setApiClient(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  
  /**
   * Find institution(s) by name fragment (wildcard search).
   * 
   * @param substring 
   * @return void
   */
  public void findInstitutionsByName(String substring) throws ApiException {
    Object postBody = null;
    
    // create path and map variables
    String path = "/institutionsearch".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, Object> formParams = new HashMap<String, Object>();

    
    queryParams.addAll(apiClient.parameterToPairs("", "substring", substring));
    

    

    

    final String[] accepts = {
      "application/json"
    };
    final String accept = apiClient.selectHeaderAccept(accepts);

    final String[] contentTypes = {
      
    };
    final String contentType = apiClient.selectHeaderContentType(contentTypes);

    String[] authNames = new String[] {  };

    
    apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, null);
    
  }
  
}
