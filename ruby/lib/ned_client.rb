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

# Common files
require 'ned_client/api_client'
require 'ned_client/api_error'
require 'ned_client/version'
require 'ned_client/configuration'

# Models
require 'ned_client/models/group'
require 'ned_client/models/email'
require 'ned_client/models/address'
require 'ned_client/models/degree'
require 'ned_client/models/organization_composite'
require 'ned_client/models/config_info'
require 'ned_client/models/globaltype'
require 'ned_client/models/uniqueidentifier'
require 'ned_client/models/url'
require 'ned_client/models/ned_error_response'
require 'ned_client/models/typedescription'
require 'ned_client/models/auth'
require 'ned_client/models/relationship'
require 'ned_client/models/alert'
require 'ned_client/models/individual_composite'
require 'ned_client/models/individualprofile'
require 'ned_client/models/phonenumber'

# APIs
require 'ned_client/api/queries_api'
require 'ned_client/api/institutionsearch_api'
require 'ned_client/api/typeclasses_api'
require 'ned_client/api/organizations_api'
require 'ned_client/api/service_api'
require 'ned_client/api/individuals_api'

module NedClient
  class << self
    # Customize default settings for the SDK using block.
    #   NedClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
