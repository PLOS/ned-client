package org.plos.ned_client.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Date;
import org.joda.time.LocalDate;

import org.plos.ned_client.*;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaClientCodegen")
public class Group   {

  private Integer id = null;
  private Integer nedid = null;
  private String source = null;
  private Integer sourcetypeid = null;
  private Date created = null;
  private Date lastmodified = null;
  private Integer createdby = null;
  private String createdbyname = null;
  private Integer lastmodifiedby = null;
  private String lastmodifiedbyname = null;
  private Integer typeid = null;
  private String type = null;
  private String applicationtype = null;
  private Integer applicationtypeid = null;

  @JsonSerialize(using = LocalDateSerializer.class)
  @JsonDeserialize(using = LocalDateDeserializer.class)
  private LocalDate startdate = null;

  @JsonSerialize(using = LocalDateSerializer.class)
  @JsonDeserialize(using = LocalDateDeserializer.class)
  private LocalDate enddate = null;

  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("nedid")
  public Integer getNedid() {
    return nedid;
  }
  public void setNedid(Integer nedid) {
    this.nedid = nedid;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("source")
  public String getSource() {
    return source;
  }
  public void setSource(String source) {
    this.source = source;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("sourcetypeid")
  public Integer getSourcetypeid() {
    return sourcetypeid;
  }
  public void setSourcetypeid(Integer sourcetypeid) {
    this.sourcetypeid = sourcetypeid;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("created")
  public Date getCreated() {
    return created;
  }
  public void setCreated(Date created) {
    this.created = created;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("lastmodified")
  public Date getLastmodified() {
    return lastmodified;
  }
  public void setLastmodified(Date lastmodified) {
    this.lastmodified = lastmodified;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("createdby")
  public Integer getCreatedby() {
    return createdby;
  }
  public void setCreatedby(Integer createdby) {
    this.createdby = createdby;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("createdbyname")
  public String getCreatedbyname() {
    return createdbyname;
  }
  public void setCreatedbyname(String createdbyname) {
    this.createdbyname = createdbyname;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("lastmodifiedby")
  public Integer getLastmodifiedby() {
    return lastmodifiedby;
  }
  public void setLastmodifiedby(Integer lastmodifiedby) {
    this.lastmodifiedby = lastmodifiedby;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("lastmodifiedbyname")
  public String getLastmodifiedbyname() {
    return lastmodifiedbyname;
  }
  public void setLastmodifiedbyname(String lastmodifiedbyname) {
    this.lastmodifiedbyname = lastmodifiedbyname;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("typeid")
  public Integer getTypeid() {
    return typeid;
  }
  public void setTypeid(Integer typeid) {
    this.typeid = typeid;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }








  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("startdate")
  public LocalDate getStartdate() {
    return startdate;
  }

  public void setStartdate(LocalDate startdate) {
    this.startdate = startdate;
  }




  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("enddate")
  public LocalDate getEnddate() {
    return enddate;
  }

  public void setEnddate(LocalDate enddate) {
    this.enddate = enddate;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("applicationtype")
  public String getApplicationtype() {
    return applicationtype;
  }
  public void setApplicationtype(String applicationtype) {
    this.applicationtype = applicationtype;
  }


  /**
   **/

  @ApiModelProperty(value = "")
  @JsonProperty("applicationtypeid")
  public Integer getApplicationtypeid() {
    return applicationtypeid;
  }
  public void setApplicationtypeid(Integer applicationtypeid) {
    this.applicationtypeid = applicationtypeid;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Group group = (Group) o;
    return Objects.equals(id, group.id) &&
        Objects.equals(nedid, group.nedid) &&
        Objects.equals(source, group.source) &&
        Objects.equals(sourcetypeid, group.sourcetypeid) &&
        Objects.equals(created, group.created) &&
        Objects.equals(lastmodified, group.lastmodified) &&
        Objects.equals(createdby, group.createdby) &&
        Objects.equals(createdbyname, group.createdbyname) &&
        Objects.equals(lastmodifiedby, group.lastmodifiedby) &&
        Objects.equals(lastmodifiedbyname, group.lastmodifiedbyname) &&
        Objects.equals(typeid, group.typeid) &&
        Objects.equals(type, group.type) &&
        Objects.equals(startdate, group.startdate) &&
        Objects.equals(enddate, group.enddate) &&
        Objects.equals(applicationtype, group.applicationtype) &&
        Objects.equals(applicationtypeid, group.applicationtypeid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, nedid, source, sourcetypeid, created, lastmodified, createdby, createdbyname, lastmodifiedby, lastmodifiedbyname, typeid, type, startdate, enddate, applicationtype, applicationtypeid);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Group {\n");

    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    nedid: ").append(toIndentedString(nedid)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    sourcetypeid: ").append(toIndentedString(sourcetypeid)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    lastmodified: ").append(toIndentedString(lastmodified)).append("\n");
    sb.append("    createdby: ").append(toIndentedString(createdby)).append("\n");
    sb.append("    createdbyname: ").append(toIndentedString(createdbyname)).append("\n");
    sb.append("    lastmodifiedby: ").append(toIndentedString(lastmodifiedby)).append("\n");
    sb.append("    lastmodifiedbyname: ").append(toIndentedString(lastmodifiedbyname)).append("\n");
    sb.append("    typeid: ").append(toIndentedString(typeid)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    startdate: ").append(toIndentedString(startdate)).append("\n");
    sb.append("    enddate: ").append(toIndentedString(enddate)).append("\n");
    sb.append("    applicationtype: ").append(toIndentedString(applicationtype)).append("\n");
    sb.append("    applicationtypeid: ").append(toIndentedString(applicationtypeid)).append("\n");
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
