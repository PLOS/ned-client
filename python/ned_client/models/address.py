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


class Address(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        Address - a model defined in Swagger

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
            'addressline1': 'str',
            'addressline2': 'str',
            'addressline3': 'str',
            'city': 'str',
            'statecodetypeid': 'int',
            'statecodetype': 'str',
            'countrycodetypeid': 'int',
            'countrycodetype': 'str',
            'postalcode': 'str',
            'maincontactnamedentityid': 'int',
            'latitude': 'int',
            'longitude': 'int',
            'isactive': 'bool'
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
            'addressline1': 'addressline1',
            'addressline2': 'addressline2',
            'addressline3': 'addressline3',
            'city': 'city',
            'statecodetypeid': 'statecodetypeid',
            'statecodetype': 'statecodetype',
            'countrycodetypeid': 'countrycodetypeid',
            'countrycodetype': 'countrycodetype',
            'postalcode': 'postalcode',
            'maincontactnamedentityid': 'maincontactnamedentityid',
            'latitude': 'latitude',
            'longitude': 'longitude',
            'isactive': 'isactive'
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
        self._addressline1 = None
        self._addressline2 = None
        self._addressline3 = None
        self._city = None
        self._statecodetypeid = None
        self._statecodetype = None
        self._countrycodetypeid = None
        self._countrycodetype = None
        self._postalcode = None
        self._maincontactnamedentityid = None
        self._latitude = None
        self._longitude = None
        self._isactive = False

    @property
    def id(self):
        """
        Gets the id of this Address.


        :return: The id of this Address.
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """
        Sets the id of this Address.


        :param id: The id of this Address.
        :type: int
        """
        self._id = id

    @property
    def nedid(self):
        """
        Gets the nedid of this Address.


        :return: The nedid of this Address.
        :rtype: int
        """
        return self._nedid

    @nedid.setter
    def nedid(self, nedid):
        """
        Sets the nedid of this Address.


        :param nedid: The nedid of this Address.
        :type: int
        """
        self._nedid = nedid

    @property
    def source(self):
        """
        Gets the source of this Address.


        :return: The source of this Address.
        :rtype: str
        """
        return self._source

    @source.setter
    def source(self, source):
        """
        Sets the source of this Address.


        :param source: The source of this Address.
        :type: str
        """
        self._source = source

    @property
    def sourcetypeid(self):
        """
        Gets the sourcetypeid of this Address.


        :return: The sourcetypeid of this Address.
        :rtype: int
        """
        return self._sourcetypeid

    @sourcetypeid.setter
    def sourcetypeid(self, sourcetypeid):
        """
        Sets the sourcetypeid of this Address.


        :param sourcetypeid: The sourcetypeid of this Address.
        :type: int
        """
        self._sourcetypeid = sourcetypeid

    @property
    def created(self):
        """
        Gets the created of this Address.


        :return: The created of this Address.
        :rtype: datetime
        """
        return self._created

    @created.setter
    def created(self, created):
        """
        Sets the created of this Address.


        :param created: The created of this Address.
        :type: datetime
        """
        self._created = created

    @property
    def lastmodified(self):
        """
        Gets the lastmodified of this Address.


        :return: The lastmodified of this Address.
        :rtype: datetime
        """
        return self._lastmodified

    @lastmodified.setter
    def lastmodified(self, lastmodified):
        """
        Sets the lastmodified of this Address.


        :param lastmodified: The lastmodified of this Address.
        :type: datetime
        """
        self._lastmodified = lastmodified

    @property
    def createdby(self):
        """
        Gets the createdby of this Address.


        :return: The createdby of this Address.
        :rtype: int
        """
        return self._createdby

    @createdby.setter
    def createdby(self, createdby):
        """
        Sets the createdby of this Address.


        :param createdby: The createdby of this Address.
        :type: int
        """
        self._createdby = createdby

    @property
    def createdbyname(self):
        """
        Gets the createdbyname of this Address.


        :return: The createdbyname of this Address.
        :rtype: str
        """
        return self._createdbyname

    @createdbyname.setter
    def createdbyname(self, createdbyname):
        """
        Sets the createdbyname of this Address.


        :param createdbyname: The createdbyname of this Address.
        :type: str
        """
        self._createdbyname = createdbyname

    @property
    def lastmodifiedby(self):
        """
        Gets the lastmodifiedby of this Address.


        :return: The lastmodifiedby of this Address.
        :rtype: int
        """
        return self._lastmodifiedby

    @lastmodifiedby.setter
    def lastmodifiedby(self, lastmodifiedby):
        """
        Sets the lastmodifiedby of this Address.


        :param lastmodifiedby: The lastmodifiedby of this Address.
        :type: int
        """
        self._lastmodifiedby = lastmodifiedby

    @property
    def lastmodifiedbyname(self):
        """
        Gets the lastmodifiedbyname of this Address.


        :return: The lastmodifiedbyname of this Address.
        :rtype: str
        """
        return self._lastmodifiedbyname

    @lastmodifiedbyname.setter
    def lastmodifiedbyname(self, lastmodifiedbyname):
        """
        Sets the lastmodifiedbyname of this Address.


        :param lastmodifiedbyname: The lastmodifiedbyname of this Address.
        :type: str
        """
        self._lastmodifiedbyname = lastmodifiedbyname

    @property
    def typeid(self):
        """
        Gets the typeid of this Address.


        :return: The typeid of this Address.
        :rtype: int
        """
        return self._typeid

    @typeid.setter
    def typeid(self, typeid):
        """
        Sets the typeid of this Address.


        :param typeid: The typeid of this Address.
        :type: int
        """
        self._typeid = typeid

    @property
    def type(self):
        """
        Gets the type of this Address.


        :return: The type of this Address.
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type):
        """
        Sets the type of this Address.


        :param type: The type of this Address.
        :type: str
        """
        self._type = type

    @property
    def addressline1(self):
        """
        Gets the addressline1 of this Address.


        :return: The addressline1 of this Address.
        :rtype: str
        """
        return self._addressline1

    @addressline1.setter
    def addressline1(self, addressline1):
        """
        Sets the addressline1 of this Address.


        :param addressline1: The addressline1 of this Address.
        :type: str
        """
        self._addressline1 = addressline1

    @property
    def addressline2(self):
        """
        Gets the addressline2 of this Address.


        :return: The addressline2 of this Address.
        :rtype: str
        """
        return self._addressline2

    @addressline2.setter
    def addressline2(self, addressline2):
        """
        Sets the addressline2 of this Address.


        :param addressline2: The addressline2 of this Address.
        :type: str
        """
        self._addressline2 = addressline2

    @property
    def addressline3(self):
        """
        Gets the addressline3 of this Address.


        :return: The addressline3 of this Address.
        :rtype: str
        """
        return self._addressline3

    @addressline3.setter
    def addressline3(self, addressline3):
        """
        Sets the addressline3 of this Address.


        :param addressline3: The addressline3 of this Address.
        :type: str
        """
        self._addressline3 = addressline3

    @property
    def city(self):
        """
        Gets the city of this Address.


        :return: The city of this Address.
        :rtype: str
        """
        return self._city

    @city.setter
    def city(self, city):
        """
        Sets the city of this Address.


        :param city: The city of this Address.
        :type: str
        """
        self._city = city

    @property
    def statecodetypeid(self):
        """
        Gets the statecodetypeid of this Address.


        :return: The statecodetypeid of this Address.
        :rtype: int
        """
        return self._statecodetypeid

    @statecodetypeid.setter
    def statecodetypeid(self, statecodetypeid):
        """
        Sets the statecodetypeid of this Address.


        :param statecodetypeid: The statecodetypeid of this Address.
        :type: int
        """
        self._statecodetypeid = statecodetypeid

    @property
    def statecodetype(self):
        """
        Gets the statecodetype of this Address.


        :return: The statecodetype of this Address.
        :rtype: str
        """
        return self._statecodetype

    @statecodetype.setter
    def statecodetype(self, statecodetype):
        """
        Sets the statecodetype of this Address.


        :param statecodetype: The statecodetype of this Address.
        :type: str
        """
        self._statecodetype = statecodetype

    @property
    def countrycodetypeid(self):
        """
        Gets the countrycodetypeid of this Address.


        :return: The countrycodetypeid of this Address.
        :rtype: int
        """
        return self._countrycodetypeid

    @countrycodetypeid.setter
    def countrycodetypeid(self, countrycodetypeid):
        """
        Sets the countrycodetypeid of this Address.


        :param countrycodetypeid: The countrycodetypeid of this Address.
        :type: int
        """
        self._countrycodetypeid = countrycodetypeid

    @property
    def countrycodetype(self):
        """
        Gets the countrycodetype of this Address.


        :return: The countrycodetype of this Address.
        :rtype: str
        """
        return self._countrycodetype

    @countrycodetype.setter
    def countrycodetype(self, countrycodetype):
        """
        Sets the countrycodetype of this Address.


        :param countrycodetype: The countrycodetype of this Address.
        :type: str
        """
        self._countrycodetype = countrycodetype

    @property
    def postalcode(self):
        """
        Gets the postalcode of this Address.


        :return: The postalcode of this Address.
        :rtype: str
        """
        return self._postalcode

    @postalcode.setter
    def postalcode(self, postalcode):
        """
        Sets the postalcode of this Address.


        :param postalcode: The postalcode of this Address.
        :type: str
        """
        self._postalcode = postalcode

    @property
    def maincontactnamedentityid(self):
        """
        Gets the maincontactnamedentityid of this Address.


        :return: The maincontactnamedentityid of this Address.
        :rtype: int
        """
        return self._maincontactnamedentityid

    @maincontactnamedentityid.setter
    def maincontactnamedentityid(self, maincontactnamedentityid):
        """
        Sets the maincontactnamedentityid of this Address.


        :param maincontactnamedentityid: The maincontactnamedentityid of this Address.
        :type: int
        """
        self._maincontactnamedentityid = maincontactnamedentityid

    @property
    def latitude(self):
        """
        Gets the latitude of this Address.


        :return: The latitude of this Address.
        :rtype: int
        """
        return self._latitude

    @latitude.setter
    def latitude(self, latitude):
        """
        Sets the latitude of this Address.


        :param latitude: The latitude of this Address.
        :type: int
        """
        self._latitude = latitude

    @property
    def longitude(self):
        """
        Gets the longitude of this Address.


        :return: The longitude of this Address.
        :rtype: int
        """
        return self._longitude

    @longitude.setter
    def longitude(self, longitude):
        """
        Sets the longitude of this Address.


        :param longitude: The longitude of this Address.
        :type: int
        """
        self._longitude = longitude

    @property
    def isactive(self):
        """
        Gets the isactive of this Address.


        :return: The isactive of this Address.
        :rtype: bool
        """
        return self._isactive

    @isactive.setter
    def isactive(self, isactive):
        """
        Sets the isactive of this Address.


        :param isactive: The isactive of this Address.
        :type: bool
        """
        self._isactive = isactive

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

