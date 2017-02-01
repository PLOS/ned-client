# Copyright (c) 2017 Public Library of Science
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

from __future__ import absolute_import

# import models into sdk package
from .models.group import Group
from .models.email import Email
from .models.address import Address
from .models.degree import Degree
from .models.organization_composite import OrganizationComposite
from .models.config_info import ConfigInfo
from .models.globaltype import Globaltype
from .models.uniqueidentifier import Uniqueidentifier
from .models.url import Url
from .models.ned_error_response import NedErrorResponse
from .models.typedescription import Typedescription
from .models.auth import Auth
from .models.relationship import Relationship
from .models.alert import Alert
from .models.individual_composite import IndividualComposite
from .models.individualprofile import Individualprofile
from .models.phonenumber import Phonenumber

# import apis into sdk package
from .apis.queries_api import QueriesApi
from .apis.institutionsearch_api import InstitutionsearchApi
from .apis.typeclasses_api import TypeclassesApi
from .apis.organizations_api import OrganizationsApi
from .apis.service_api import ServiceApi
from .apis.individuals_api import IndividualsApi

# import ApiClient
from .api_client import ApiClient

from .configuration import Configuration

configuration = Configuration()
