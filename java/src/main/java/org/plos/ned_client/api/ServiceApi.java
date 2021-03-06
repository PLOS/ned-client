package org.plos.ned_client.api;

import com.sun.jersey.api.client.GenericType;

import org.plos.ned_client.ApiException;
import org.plos.ned_client.ApiClient;
import org.plos.ned_client.Configuration;
import org.plos.ned_client.Pair;

import org.plos.ned_client.model.ConfigInfo;
import org.plos.ned_client.model.NedErrorResponse;

import java.util.*;

@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen")

public class ServiceApi {
  private ApiClient apiClient;

  public ServiceApi() {
    this(Configuration.getDefaultApiClient());
  }

  public ServiceApi(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  public ApiClient getApiClient() {
    return apiClient;
  }

  public void setApiClient(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  
  /**
   * Config info
   * 
   * @return ConfigInfo
   */
  public ConfigInfo config() throws ApiException {
    Object postBody = null;
    
    // create path and map variables
    String path = "/service/config".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, Object> formParams = new HashMap<String, Object>();

    

    

    

    final String[] accepts = {
      "application/json"
    };
    final String accept = apiClient.selectHeaderAccept(accepts);

    final String[] contentTypes = {
      
    };
    final String contentType = apiClient.selectHeaderContentType(contentTypes);

    String[] authNames = new String[] {  };

    
    GenericType<ConfigInfo> returnType = new GenericType<ConfigInfo>() {};
    return apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * List possible error codes
   * 
   * @return List<NedErrorResponse>
   */
  public List<NedErrorResponse> errorcodes() throws ApiException {
    Object postBody = null;
    
    // create path and map variables
    String path = "/service/errorcodes".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, Object> formParams = new HashMap<String, Object>();

    

    

    

    final String[] accepts = {
      "application/json"
    };
    final String accept = apiClient.selectHeaderAccept(accepts);

    final String[] contentTypes = {
      
    };
    final String contentType = apiClient.selectHeaderContentType(contentTypes);

    String[] authNames = new String[] {  };

    
    GenericType<List<NedErrorResponse>> returnType = new GenericType<List<NedErrorResponse>>() {};
    return apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
}
