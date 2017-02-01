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

package org.plos.ned_client.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;





@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen")

public class NedErrorResponse   {
  
  private String failureMsg = null;
  private Integer errorCode = null;
  private String errorMsg = null;
  private String detailedMsg = null;
  private List<String> acceptableValues = new ArrayList<String>();
  private Date timestamp = null;

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("failureMsg")
  public String getFailureMsg() {
    return failureMsg;
  }
  public void setFailureMsg(String failureMsg) {
    this.failureMsg = failureMsg;
  }

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("errorCode")
  public Integer getErrorCode() {
    return errorCode;
  }
  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("errorMsg")
  public String getErrorMsg() {
    return errorMsg;
  }
  public void setErrorMsg(String errorMsg) {
    this.errorMsg = errorMsg;
  }

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("detailedMsg")
  public String getDetailedMsg() {
    return detailedMsg;
  }
  public void setDetailedMsg(String detailedMsg) {
    this.detailedMsg = detailedMsg;
  }

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("acceptableValues")
  public List<String> getAcceptableValues() {
    return acceptableValues;
  }
  public void setAcceptableValues(List<String> acceptableValues) {
    this.acceptableValues = acceptableValues;
  }

  
  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("timestamp")
  public Date getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(Date timestamp) {
    this.timestamp = timestamp;
  }

  

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NedErrorResponse nedErrorResponse = (NedErrorResponse) o;
    return Objects.equals(failureMsg, nedErrorResponse.failureMsg) &&
        Objects.equals(errorCode, nedErrorResponse.errorCode) &&
        Objects.equals(errorMsg, nedErrorResponse.errorMsg) &&
        Objects.equals(detailedMsg, nedErrorResponse.detailedMsg) &&
        Objects.equals(acceptableValues, nedErrorResponse.acceptableValues) &&
        Objects.equals(timestamp, nedErrorResponse.timestamp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(failureMsg, errorCode, errorMsg, detailedMsg, acceptableValues, timestamp);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NedErrorResponse {\n");
    
    sb.append("    failureMsg: ").append(toIndentedString(failureMsg)).append("\n");
    sb.append("    errorCode: ").append(toIndentedString(errorCode)).append("\n");
    sb.append("    errorMsg: ").append(toIndentedString(errorMsg)).append("\n");
    sb.append("    detailedMsg: ").append(toIndentedString(detailedMsg)).append("\n");
    sb.append("    acceptableValues: ").append(toIndentedString(acceptableValues)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

