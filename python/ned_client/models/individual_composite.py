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


class IndividualComposite(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        IndividualComposite - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'auth': 'list[Auth]',
            'individualprofiles': 'list[Individualprofile]',
            'groups': 'list[Group]',
            'addresses': 'list[Address]',
            'emails': 'list[Email]',
            'phonenumbers': 'list[Phonenumber]',
            'uniqueidentifiers': 'list[Uniqueidentifier]',
            'degrees': 'list[Degree]',
            'urls': 'list[Url]',
            'relationships': 'list[Relationship]',
            'type_name': 'str'
        }

        self.attribute_map = {
            'auth': 'auth',
            'individualprofiles': 'individualprofiles',
            'groups': 'groups',
            'addresses': 'addresses',
            'emails': 'emails',
            'phonenumbers': 'phonenumbers',
            'uniqueidentifiers': 'uniqueidentifiers',
            'degrees': 'degrees',
            'urls': 'urls',
            'relationships': 'relationships',
            'type_name': 'typeName'
        }

        self._auth = None
        self._individualprofiles = None
        self._groups = None
        self._addresses = None
        self._emails = None
        self._phonenumbers = None
        self._uniqueidentifiers = None
        self._degrees = None
        self._urls = None
        self._relationships = None
        self._type_name = None

    @property
    def auth(self):
        """
        Gets the auth of this IndividualComposite.


        :return: The auth of this IndividualComposite.
        :rtype: list[Auth]
        """
        return self._auth

    @auth.setter
    def auth(self, auth):
        """
        Sets the auth of this IndividualComposite.


        :param auth: The auth of this IndividualComposite.
        :type: list[Auth]
        """
        self._auth = auth

    @property
    def individualprofiles(self):
        """
        Gets the individualprofiles of this IndividualComposite.


        :return: The individualprofiles of this IndividualComposite.
        :rtype: list[Individualprofile]
        """
        return self._individualprofiles

    @individualprofiles.setter
    def individualprofiles(self, individualprofiles):
        """
        Sets the individualprofiles of this IndividualComposite.


        :param individualprofiles: The individualprofiles of this IndividualComposite.
        :type: list[Individualprofile]
        """
        self._individualprofiles = individualprofiles

    @property
    def groups(self):
        """
        Gets the groups of this IndividualComposite.


        :return: The groups of this IndividualComposite.
        :rtype: list[Group]
        """
        return self._groups

    @groups.setter
    def groups(self, groups):
        """
        Sets the groups of this IndividualComposite.


        :param groups: The groups of this IndividualComposite.
        :type: list[Group]
        """
        self._groups = groups

    @property
    def addresses(self):
        """
        Gets the addresses of this IndividualComposite.


        :return: The addresses of this IndividualComposite.
        :rtype: list[Address]
        """
        return self._addresses

    @addresses.setter
    def addresses(self, addresses):
        """
        Sets the addresses of this IndividualComposite.


        :param addresses: The addresses of this IndividualComposite.
        :type: list[Address]
        """
        self._addresses = addresses

    @property
    def emails(self):
        """
        Gets the emails of this IndividualComposite.


        :return: The emails of this IndividualComposite.
        :rtype: list[Email]
        """
        return self._emails

    @emails.setter
    def emails(self, emails):
        """
        Sets the emails of this IndividualComposite.


        :param emails: The emails of this IndividualComposite.
        :type: list[Email]
        """
        self._emails = emails

    @property
    def phonenumbers(self):
        """
        Gets the phonenumbers of this IndividualComposite.


        :return: The phonenumbers of this IndividualComposite.
        :rtype: list[Phonenumber]
        """
        return self._phonenumbers

    @phonenumbers.setter
    def phonenumbers(self, phonenumbers):
        """
        Sets the phonenumbers of this IndividualComposite.


        :param phonenumbers: The phonenumbers of this IndividualComposite.
        :type: list[Phonenumber]
        """
        self._phonenumbers = phonenumbers

    @property
    def uniqueidentifiers(self):
        """
        Gets the uniqueidentifiers of this IndividualComposite.


        :return: The uniqueidentifiers of this IndividualComposite.
        :rtype: list[Uniqueidentifier]
        """
        return self._uniqueidentifiers

    @uniqueidentifiers.setter
    def uniqueidentifiers(self, uniqueidentifiers):
        """
        Sets the uniqueidentifiers of this IndividualComposite.


        :param uniqueidentifiers: The uniqueidentifiers of this IndividualComposite.
        :type: list[Uniqueidentifier]
        """
        self._uniqueidentifiers = uniqueidentifiers

    @property
    def degrees(self):
        """
        Gets the degrees of this IndividualComposite.


        :return: The degrees of this IndividualComposite.
        :rtype: list[Degree]
        """
        return self._degrees

    @degrees.setter
    def degrees(self, degrees):
        """
        Sets the degrees of this IndividualComposite.


        :param degrees: The degrees of this IndividualComposite.
        :type: list[Degree]
        """
        self._degrees = degrees

    @property
    def urls(self):
        """
        Gets the urls of this IndividualComposite.


        :return: The urls of this IndividualComposite.
        :rtype: list[Url]
        """
        return self._urls

    @urls.setter
    def urls(self, urls):
        """
        Sets the urls of this IndividualComposite.


        :param urls: The urls of this IndividualComposite.
        :type: list[Url]
        """
        self._urls = urls

    @property
    def relationships(self):
        """
        Gets the relationships of this IndividualComposite.


        :return: The relationships of this IndividualComposite.
        :rtype: list[Relationship]
        """
        return self._relationships

    @relationships.setter
    def relationships(self, relationships):
        """
        Sets the relationships of this IndividualComposite.


        :param relationships: The relationships of this IndividualComposite.
        :type: list[Relationship]
        """
        self._relationships = relationships

    @property
    def type_name(self):
        """
        Gets the type_name of this IndividualComposite.


        :return: The type_name of this IndividualComposite.
        :rtype: str
        """
        return self._type_name

    @type_name.setter
    def type_name(self, type_name):
        """
        Sets the type_name of this IndividualComposite.


        :param type_name: The type_name of this IndividualComposite.
        :type: str
        """
        allowed_values = ["INDIVIDUAL", "ORGANIZATION", "INVALID_NAMEDPARTY_TYPE"]
        if type_name not in allowed_values:
            raise ValueError(
                "Invalid value for `type_name`, must be one of {0}"
                .format(allowed_values)
            )
        self._type_name = type_name

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

