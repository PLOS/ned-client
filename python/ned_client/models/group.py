# coding: utf-8

"""
Copyright 2015 SmartBear Software

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Ref: https://github.com/swagger-api/swagger-codegen
"""

from pprint import pformat
from six import iteritems


class Group(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        Group - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'id': 'int',
            'nedid': 'int',
            'source': 'str',
            'sourcetypeid': 'int',
            'created': 'datetime',
            'lastmodified': 'datetime',
            'createdby': 'int',
            'createdbyname': 'str',
            'lastmodifiedby': 'int',
            'lastmodifiedbyname': 'str',
            'typeid': 'int',
            'type': 'str',
            'startdate': 'datetime',
            'enddate': 'datetime',
            'applicationtype': 'str',
            'applicationtypeid': 'int'
        }

        self.attribute_map = {
            'id': 'id',
            'nedid': 'nedid',
            'source': 'source',
            'sourcetypeid': 'sourcetypeid',
            'created': 'created',
            'lastmodified': 'lastmodified',
            'createdby': 'createdby',
            'createdbyname': 'createdbyname',
            'lastmodifiedby': 'lastmodifiedby',
            'lastmodifiedbyname': 'lastmodifiedbyname',
            'typeid': 'typeid',
            'type': 'type',
            'startdate': 'startdate',
            'enddate': 'enddate',
            'applicationtype': 'applicationtype',
            'applicationtypeid': 'applicationtypeid'
        }

        self._id = None
        self._nedid = None
        self._source = None
        self._sourcetypeid = None
        self._created = None
        self._lastmodified = None
        self._createdby = None
        self._createdbyname = None
        self._lastmodifiedby = None
        self._lastmodifiedbyname = None
        self._typeid = None
        self._type = None
        self._startdate = None
        self._enddate = None
        self._applicationtype = None
        self._applicationtypeid = None

    @property
    def id(self):
        """
        Gets the id of this Group.


        :return: The id of this Group.
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """
        Sets the id of this Group.


        :param id: The id of this Group.
        :type: int
        """
        self._id = id

    @property
    def nedid(self):
        """
        Gets the nedid of this Group.


        :return: The nedid of this Group.
        :rtype: int
        """
        return self._nedid

    @nedid.setter
    def nedid(self, nedid):
        """
        Sets the nedid of this Group.


        :param nedid: The nedid of this Group.
        :type: int
        """
        self._nedid = nedid

    @property
    def source(self):
        """
        Gets the source of this Group.


        :return: The source of this Group.
        :rtype: str
        """
        return self._source

    @source.setter
    def source(self, source):
        """
        Sets the source of this Group.


        :param source: The source of this Group.
        :type: str
        """
        self._source = source

    @property
    def sourcetypeid(self):
        """
        Gets the sourcetypeid of this Group.


        :return: The sourcetypeid of this Group.
        :rtype: int
        """
        return self._sourcetypeid

    @sourcetypeid.setter
    def sourcetypeid(self, sourcetypeid):
        """
        Sets the sourcetypeid of this Group.


        :param sourcetypeid: The sourcetypeid of this Group.
        :type: int
        """
        self._sourcetypeid = sourcetypeid

    @property
    def created(self):
        """
        Gets the created of this Group.


        :return: The created of this Group.
        :rtype: datetime
        """
        return self._created

    @created.setter
    def created(self, created):
        """
        Sets the created of this Group.


        :param created: The created of this Group.
        :type: datetime
        """
        self._created = created

    @property
    def lastmodified(self):
        """
        Gets the lastmodified of this Group.


        :return: The lastmodified of this Group.
        :rtype: datetime
        """
        return self._lastmodified

    @lastmodified.setter
    def lastmodified(self, lastmodified):
        """
        Sets the lastmodified of this Group.


        :param lastmodified: The lastmodified of this Group.
        :type: datetime
        """
        self._lastmodified = lastmodified

    @property
    def createdby(self):
        """
        Gets the createdby of this Group.


        :return: The createdby of this Group.
        :rtype: int
        """
        return self._createdby

    @createdby.setter
    def createdby(self, createdby):
        """
        Sets the createdby of this Group.


        :param createdby: The createdby of this Group.
        :type: int
        """
        self._createdby = createdby

    @property
    def createdbyname(self):
        """
        Gets the createdbyname of this Group.


        :return: The createdbyname of this Group.
        :rtype: str
        """
        return self._createdbyname

    @createdbyname.setter
    def createdbyname(self, createdbyname):
        """
        Sets the createdbyname of this Group.


        :param createdbyname: The createdbyname of this Group.
        :type: str
        """
        self._createdbyname = createdbyname

    @property
    def lastmodifiedby(self):
        """
        Gets the lastmodifiedby of this Group.


        :return: The lastmodifiedby of this Group.
        :rtype: int
        """
        return self._lastmodifiedby

    @lastmodifiedby.setter
    def lastmodifiedby(self, lastmodifiedby):
        """
        Sets the lastmodifiedby of this Group.


        :param lastmodifiedby: The lastmodifiedby of this Group.
        :type: int
        """
        self._lastmodifiedby = lastmodifiedby

    @property
    def lastmodifiedbyname(self):
        """
        Gets the lastmodifiedbyname of this Group.


        :return: The lastmodifiedbyname of this Group.
        :rtype: str
        """
        return self._lastmodifiedbyname

    @lastmodifiedbyname.setter
    def lastmodifiedbyname(self, lastmodifiedbyname):
        """
        Sets the lastmodifiedbyname of this Group.


        :param lastmodifiedbyname: The lastmodifiedbyname of this Group.
        :type: str
        """
        self._lastmodifiedbyname = lastmodifiedbyname

    @property
    def typeid(self):
        """
        Gets the typeid of this Group.


        :return: The typeid of this Group.
        :rtype: int
        """
        return self._typeid

    @typeid.setter
    def typeid(self, typeid):
        """
        Sets the typeid of this Group.


        :param typeid: The typeid of this Group.
        :type: int
        """
        self._typeid = typeid

    @property
    def type(self):
        """
        Gets the type of this Group.


        :return: The type of this Group.
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """
        Sets the type of this Group.


        :param type: The type of this Group.
        :type: str
        """
        self._type = type

    @property
    def startdate(self):
        """
        Gets the startdate of this Group.


        :return: The startdate of this Group.
        :rtype: datetime
        """
        return self._startdate

    @startdate.setter
    def startdate(self, startdate):
        """
        Sets the startdate of this Group.


        :param startdate: The startdate of this Group.
        :type: datetime
        """
        self._startdate = startdate

    @property
    def enddate(self):
        """
        Gets the enddate of this Group.


        :return: The enddate of this Group.
        :rtype: datetime
        """
        return self._enddate

    @enddate.setter
    def enddate(self, enddate):
        """
        Sets the enddate of this Group.


        :param enddate: The enddate of this Group.
        :type: datetime
        """
        self._enddate = enddate

    @property
    def applicationtype(self):
        """
        Gets the applicationtype of this Group.


        :return: The applicationtype of this Group.
        :rtype: str
        """
        return self._applicationtype

    @applicationtype.setter
    def applicationtype(self, applicationtype):
        """
        Sets the applicationtype of this Group.


        :param applicationtype: The applicationtype of this Group.
        :type: str
        """
        self._applicationtype = applicationtype

    @property
    def applicationtypeid(self):
        """
        Gets the applicationtypeid of this Group.


        :return: The applicationtypeid of this Group.
        :rtype: int
        """
        return self._applicationtypeid

    @applicationtypeid.setter
    def applicationtypeid(self, applicationtypeid):
        """
        Sets the applicationtypeid of this Group.


        :param applicationtypeid: The applicationtypeid of this Group.
        :type: int
        """
        self._applicationtypeid = applicationtypeid

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other): 
        """
        Returns true if both objects are equal
        """
        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """ 
        Returns true if both objects are not equal
        """
        return not self == other

