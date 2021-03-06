package org.plos.ned_client.api;

import com.sun.jersey.api.client.GenericType;

import org.plos.ned_client.ApiException;
import org.plos.ned_client.ApiClient;
import org.plos.ned_client.Configuration;
import org.plos.ned_client.Pair;

import org.plos.ned_client.model.Typedescription;
import org.plos.ned_client.model.Globaltype;

import java.util.*;

@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen")

public class TypeclassesApi {
  private ApiClient apiClient;

  public TypeclassesApi() {
    this(Configuration.getDefaultApiClient());
  }

  public TypeclassesApi(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  public ApiClient getApiClient() {
    return apiClient;
  }

  public void setApiClient(ApiClient apiClient) {
    this.apiClient = apiClient;
  }

  
  /**
   * Create global type
   * 
   * @param body 
   * @return Typedescription
   */
  public Typedescription create(Typedescription body) throws ApiException {
    Object postBody = body;
    
    // create path and map variables
    String path = "/typeclasses".replaceAll("\\{format\\}","json");

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Typedescription> returnType = new GenericType<Typedescription>() {};
    return apiClient.invokeAPI(path, "POST", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * Create global type value
   * 
   * @param typeclassid 
   * @param body 
   * @return Globaltype
   */
  public Globaltype createGlobalType(Integer typeclassid, Globaltype body) throws ApiException {
    Object postBody = body;
    
     // verify the required parameter 'typeclassid' is set
     if (typeclassid == null) {
        throw new ApiException(400, "Missing the required parameter 'typeclassid' when calling createGlobalType");
     }
     
    // create path and map variables
    String path = "/typeclasses/{typeclassid}/typevalues".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "typeclassid" + "\\}", apiClient.escapeString(typeclassid.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Globaltype> returnType = new GenericType<Globaltype>() {};
    return apiClient.invokeAPI(path, "POST", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * Delete global type
   * 
   * @param id 
   * @return void
   */
  public void delete(Integer id) throws ApiException {
    Object postBody = null;
    
     // verify the required parameter 'id' is set
     if (id == null) {
        throw new ApiException(400, "Missing the required parameter 'id' when calling delete");
     }
     
    // create path and map variables
    String path = "/typeclasses/{id}".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "id" + "\\}", apiClient.escapeString(id.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    apiClient.invokeAPI(path, "DELETE", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, null);
    
  }
  
  /**
   * Delete global type value
   * 
   * @param typeclassid 
   * @param typevalueid 
   * @return void
   */
  public void deleteGlobalType(Integer typeclassid, Integer typevalueid) throws ApiException {
    Object postBody = null;
    
     // verify the required parameter 'typeclassid' is set
     if (typeclassid == null) {
        throw new ApiException(400, "Missing the required parameter 'typeclassid' when calling deleteGlobalType");
     }
     
     // verify the required parameter 'typevalueid' is set
     if (typevalueid == null) {
        throw new ApiException(400, "Missing the required parameter 'typevalueid' when calling deleteGlobalType");
     }
     
    // create path and map variables
    String path = "/typeclasses/{typeclassid}/typevalues/{typevalueid}".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "typeclassid" + "\\}", apiClient.escapeString(typeclassid.toString()))
      .replaceAll("\\{" + "typevalueid" + "\\}", apiClient.escapeString(typevalueid.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    apiClient.invokeAPI(path, "DELETE", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, null);
    
  }
  
  /**
   * Read global type value
   * 
   * @param typeclassid 
   * @param typevalueid 
   * @return Globaltype
   */
  public Globaltype getGlobalType(Integer typeclassid, Integer typevalueid) throws ApiException {
    Object postBody = null;
    
     // verify the required parameter 'typeclassid' is set
     if (typeclassid == null) {
        throw new ApiException(400, "Missing the required parameter 'typeclassid' when calling getGlobalType");
     }
     
     // verify the required parameter 'typevalueid' is set
     if (typevalueid == null) {
        throw new ApiException(400, "Missing the required parameter 'typevalueid' when calling getGlobalType");
     }
     
    // create path and map variables
    String path = "/typeclasses/{typeclassid}/typevalues/{typevalueid}".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "typeclassid" + "\\}", apiClient.escapeString(typeclassid.toString()))
      .replaceAll("\\{" + "typevalueid" + "\\}", apiClient.escapeString(typevalueid.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Globaltype> returnType = new GenericType<Globaltype>() {};
    return apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * List global type values
   * 
   * @param typeclassid 
   * @return void
   */
  public void getGlobalTypeForTypeClass(Integer typeclassid) throws ApiException {
    Object postBody = null;
    
     // verify the required parameter 'typeclassid' is set
     if (typeclassid == null) {
        throw new ApiException(400, "Missing the required parameter 'typeclassid' when calling getGlobalTypeForTypeClass");
     }
     
    // create path and map variables
    String path = "/typeclasses/{typeclassid}/typevalues".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "typeclassid" + "\\}", apiClient.escapeString(typeclassid.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, null);
    
  }
  
  /**
   * List global types
   * 
   * @param offset 
   * @param limit 
   * @return List<Typedescription>
   */
  public List<Typedescription> list(Integer offset, Integer limit) throws ApiException {
    Object postBody = null;
    
    // create path and map variables
    String path = "/typeclasses".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, Object> formParams = new HashMap<String, Object>();

    
    queryParams.addAll(apiClient.parameterToPairs("", "offset", offset));
    
    queryParams.addAll(apiClient.parameterToPairs("", "limit", limit));
    

    

    

    final String[] accepts = {
      "application/json"
    };
    final String accept = apiClient.selectHeaderAccept(accepts);

    final String[] contentTypes = {
      
    };
    final String contentType = apiClient.selectHeaderContentType(contentTypes);

    String[] authNames = new String[] { "basic" };

    
    GenericType<List<Typedescription>> returnType = new GenericType<List<Typedescription>>() {};
    return apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * Read global type
   * 
   * @param id 
   * @return Typedescription
   */
  public Typedescription read(Integer id) throws ApiException {
    Object postBody = null;
    
     // verify the required parameter 'id' is set
     if (id == null) {
        throw new ApiException(400, "Missing the required parameter 'id' when calling read");
     }
     
    // create path and map variables
    String path = "/typeclasses/{id}".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "id" + "\\}", apiClient.escapeString(id.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Typedescription> returnType = new GenericType<Typedescription>() {};
    return apiClient.invokeAPI(path, "GET", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * Update global type
   * 
   * @param body 
   * @return Typedescription
   */
  public Typedescription update(Typedescription body) throws ApiException {
    Object postBody = body;
    
    // create path and map variables
    String path = "/typeclasses/{id}".replaceAll("\\{format\\}","json");

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Typedescription> returnType = new GenericType<Typedescription>() {};
    return apiClient.invokeAPI(path, "PUT", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
  /**
   * Update global type value
   * 
   * @param typeclassid 
   * @param typevalueid 
   * @param body 
   * @return Globaltype
   */
  public Globaltype updateGlobalType(Integer typeclassid, Integer typevalueid, Globaltype body) throws ApiException {
    Object postBody = body;
    
     // verify the required parameter 'typeclassid' is set
     if (typeclassid == null) {
        throw new ApiException(400, "Missing the required parameter 'typeclassid' when calling updateGlobalType");
     }
     
     // verify the required parameter 'typevalueid' is set
     if (typevalueid == null) {
        throw new ApiException(400, "Missing the required parameter 'typevalueid' when calling updateGlobalType");
     }
     
    // create path and map variables
    String path = "/typeclasses/{typeclassid}/typevalues/{typevalueid}".replaceAll("\\{format\\}","json")
      .replaceAll("\\{" + "typeclassid" + "\\}", apiClient.escapeString(typeclassid.toString()))
      .replaceAll("\\{" + "typevalueid" + "\\}", apiClient.escapeString(typevalueid.toString()));

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

    String[] authNames = new String[] { "basic" };

    
    GenericType<Globaltype> returnType = new GenericType<Globaltype>() {};
    return apiClient.invokeAPI(path, "PUT", queryParams, postBody, headerParams, formParams, accept, contentType, authNames, returnType);
    
  }
  
}
