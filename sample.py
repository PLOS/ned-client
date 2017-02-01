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

import ned_client

ned_client.configuration.username = 'akita'
ned_client.configuration.password = 'akita'
# ned_client.configuration.debug = True

apiclient = ned_client.ApiClient('http://localhost:8080/v1')
# apiclient = ned_client.ApiClient('http://localhost:8080/v1', header_name="Authorization", header_value=ned_client.configuration.get_basic_auth_token())

serviceapi = ned_client.ServiceApi(apiclient)
typeclassesapi = ned_client.TypeclassesApi(apiclient)
individualsapi = ned_client.IndividualsApi(apiclient)

print (serviceapi.config())

# print ("errorcodes")
# print (serviceapi.errorcodes())

# print (typeclassesapi.list())
print (typeclassesapi.read(12))

# print (individualsapi.read_individual(53))
#
# print (individualsapi.get_emails(53)[0].emailaddress)
#
# # given an email address, find a user's display name
# print (individualsapi.find_individuals(entity='email', attribute='emailaddress', value='jdoe415a4f3e@foo.com')[0].individualprofiles[0].displayname)
