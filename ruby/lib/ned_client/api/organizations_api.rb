require "uri"

module NedClient
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Find organizations matching specified attribute.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute 
    # @option opts [String] :value 
    # @return [Array<OrganizationComposite>]
    def find_organizations(opts = {})
      data, status_code, headers = find_organizations_with_http_info(opts)
      return data
    end

    # Find organizations matching specified attribute.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute 
    # @option opts [String] :value 
    # @return [Array<(Array<OrganizationComposite>, Fixnum, Hash)>] Array<OrganizationComposite> data, response status code and response headers
    def find_organizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#find_organizations ..."
      end
      
      # resource path
      path = "/organizations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'attribute'] = opts[:'attribute'] if opts[:'attribute']
      query_params[:'value'] = opts[:'value'] if opts[:'value']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<OrganizationComposite>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#find_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create organization
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [OrganizationComposite] :body 
    # @option opts [String] :authorization 
    # @return [OrganizationComposite]
    def create_organization(opts = {})
      data, status_code, headers = create_organization_with_http_info(opts)
      return data
    end

    # Create organization
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [OrganizationComposite] :body 
    # @option opts [String] :authorization 
    # @return [Array<(OrganizationComposite, Fixnum, Hash)>] OrganizationComposite data, response status code and response headers
    def create_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#create_organization ..."
      end
      
      # resource path
      path = "/organizations".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationComposite')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read organization by Ned ID
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationComposite]
    def read_organization(ned_id, opts = {})
      data, status_code, headers = read_organization_with_http_info(ned_id, opts)
      return data
    end

    # Read organization by Ned ID
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationComposite, Fixnum, Hash)>] OrganizationComposite data, response status code and response headers
    def read_organization_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#read_organization ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling read_organization" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationComposite')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#read_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List addresses
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Address>]
    def get_addresses(ned_id, opts = {})
      data, status_code, headers = get_addresses_with_http_info(ned_id, opts)
      return data
    end

    # List addresses
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Address>, Fixnum, Hash)>] Array<Address> data, response status code and response headers
    def get_addresses_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_addresses ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_addresses" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/addresses".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Address>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create address
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Address] :body 
    # @option opts [String] :authorization 
    # @return [Address]
    def create_address(ned_id, opts = {})
      data, status_code, headers = create_address_with_http_info(ned_id, opts)
      return data
    end

    # Create address
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Address] :body 
    # @option opts [String] :authorization 
    # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
    def create_address_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#create_address ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling create_address" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/addresses".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Address')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @return [Address]
    def get_address(ned_id, address_id, opts = {})
      data, status_code, headers = get_address_with_http_info(ned_id, address_id, opts)
      return data
    end

    # Read address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
    def get_address_with_http_info(ned_id, address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_address ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_address" if ned_id.nil?
      
      # verify the required parameter 'address_id' is set
      fail "Missing the required parameter 'address_id' when calling get_address" if address_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/addresses/{addressId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'addressId' + '}', address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Address')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Address] :body 
    # @option opts [String] :authorization 
    # @return [Address]
    def update_address(ned_id, address_id, opts = {})
      data, status_code, headers = update_address_with_http_info(ned_id, address_id, opts)
      return data
    end

    # Update address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Address] :body 
    # @option opts [String] :authorization 
    # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
    def update_address_with_http_info(ned_id, address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#update_address ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling update_address" if ned_id.nil?
      
      # verify the required parameter 'address_id' is set
      fail "Missing the required parameter 'address_id' when calling update_address" if address_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/addresses/{addressId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'addressId' + '}', address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Address')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<Address>]
    def delete_address(ned_id, address_id, opts = {})
      data, status_code, headers = delete_address_with_http_info(ned_id, address_id, opts)
      return data
    end

    # Delete address
    # 
    # @param ned_id 
    # @param address_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(Array<Address>, Fixnum, Hash)>] Array<Address> data, response status code and response headers
    def delete_address_with_http_info(ned_id, address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#delete_address ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling delete_address" if ned_id.nil?
      
      # verify the required parameter 'address_id' is set
      fail "Missing the required parameter 'address_id' when calling delete_address" if address_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/addresses/{addressId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'addressId' + '}', address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Address>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List emails
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Email>]
    def get_emails(ned_id, opts = {})
      data, status_code, headers = get_emails_with_http_info(ned_id, opts)
      return data
    end

    # List emails
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Email>, Fixnum, Hash)>] Array<Email> data, response status code and response headers
    def get_emails_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_emails ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_emails" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/emails".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Email>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create email
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Email] :body 
    # @option opts [String] :authorization 
    # @return [Email]
    def create_email(ned_id, opts = {})
      data, status_code, headers = create_email_with_http_info(ned_id, opts)
      return data
    end

    # Create email
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Email] :body 
    # @option opts [String] :authorization 
    # @return [Array<(Email, Fixnum, Hash)>] Email data, response status code and response headers
    def create_email_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#create_email ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling create_email" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/emails".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Email')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @return [Email]
    def get_email(ned_id, email_id, opts = {})
      data, status_code, headers = get_email_with_http_info(ned_id, email_id, opts)
      return data
    end

    # Read email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Email, Fixnum, Hash)>] Email data, response status code and response headers
    def get_email_with_http_info(ned_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_email ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_email" if ned_id.nil?
      
      # verify the required parameter 'email_id' is set
      fail "Missing the required parameter 'email_id' when calling get_email" if email_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/emails/{emailId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Email')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Email] :body 
    # @option opts [String] :authorization 
    # @return [Email]
    def update_email(ned_id, email_id, opts = {})
      data, status_code, headers = update_email_with_http_info(ned_id, email_id, opts)
      return data
    end

    # Update email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Email] :body 
    # @option opts [String] :authorization 
    # @return [Array<(Email, Fixnum, Hash)>] Email data, response status code and response headers
    def update_email_with_http_info(ned_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#update_email ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling update_email" if ned_id.nil?
      
      # verify the required parameter 'email_id' is set
      fail "Missing the required parameter 'email_id' when calling update_email" if email_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/emails/{emailId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Email')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [nil]
    def delete_email(ned_id, email_id, opts = {})
      delete_email_with_http_info(ned_id, email_id, opts)
      return nil
    end

    # Delete email
    # 
    # @param ned_id 
    # @param email_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_email_with_http_info(ned_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#delete_email ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling delete_email" if ned_id.nil?
      
      # verify the required parameter 'email_id' is set
      fail "Missing the required parameter 'email_id' when calling delete_email" if email_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/emails/{emailId}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List phone numbers
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Phonenumber>]
    def get_phonenumbers(ned_id, opts = {})
      data, status_code, headers = get_phonenumbers_with_http_info(ned_id, opts)
      return data
    end

    # List phone numbers
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Phonenumber>, Fixnum, Hash)>] Array<Phonenumber> data, response status code and response headers
    def get_phonenumbers_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_phonenumbers ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_phonenumbers" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/phonenumbers".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Phonenumber>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_phonenumbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List UIDs
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<Uniqueidentifier>]
    def get_uids(ned_id, opts = {})
      data, status_code, headers = get_uids_with_http_info(ned_id, opts)
      return data
    end

    # List UIDs
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Uniqueidentifier>, Fixnum, Hash)>] Array<Uniqueidentifier> data, response status code and response headers
    def get_uids_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_uids ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_uids" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/uids".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Uniqueidentifier>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_uids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create UID
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Uniqueidentifier] :body 
    # @option opts [String] :authorization 
    # @return [Uniqueidentifier]
    def create_uid(ned_id, opts = {})
      data, status_code, headers = create_uid_with_http_info(ned_id, opts)
      return data
    end

    # Create UID
    # 
    # @param ned_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Uniqueidentifier] :body 
    # @option opts [String] :authorization 
    # @return [Array<(Uniqueidentifier, Fixnum, Hash)>] Uniqueidentifier data, response status code and response headers
    def create_uid_with_http_info(ned_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#create_uid ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling create_uid" if ned_id.nil?
      
      # resource path
      path = "/organizations/{nedId}/uids".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Uniqueidentifier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read uid
    # 
    # @param ned_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Uniqueidentifier]
    def get_uid(ned_id, id, opts = {})
      data, status_code, headers = get_uid_with_http_info(ned_id, id, opts)
      return data
    end

    # Read uid
    # 
    # @param ned_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Uniqueidentifier, Fixnum, Hash)>] Uniqueidentifier data, response status code and response headers
    def get_uid_with_http_info(ned_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#get_uid ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling get_uid" if ned_id.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_uid" if id.nil?
      
      # resource path
      path = "/organizations/{nedId}/uids/{id}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Uniqueidentifier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update UID
    # 
    # @param ned_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @option opts [Uniqueidentifier] :body 
    # @return [Uniqueidentifier]
    def update_uid(ned_id, id, opts = {})
      data, status_code, headers = update_uid_with_http_info(ned_id, id, opts)
      return data
    end

    # Update UID
    # 
    # @param ned_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @option opts [Uniqueidentifier] :body 
    # @return [Array<(Uniqueidentifier, Fixnum, Hash)>] Uniqueidentifier data, response status code and response headers
    def update_uid_with_http_info(ned_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#update_uid ..."
      end
      
      # verify the required parameter 'ned_id' is set
      fail "Missing the required parameter 'ned_id' when calling update_uid" if ned_id.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_uid" if id.nil?
      
      # resource path
      path = "/organizations/{nedId}/uids/{id}".sub('{format}','json').sub('{' + 'nedId' + '}', ned_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Uniqueidentifier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read organization by UID
    # 
    # @param uid_type 
    # @param uid_value 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationComposite]
    def read_organization_by_uid(uid_type, uid_value, opts = {})
      data, status_code, headers = read_organization_by_uid_with_http_info(uid_type, uid_value, opts)
      return data
    end

    # Read organization by UID
    # 
    # @param uid_type 
    # @param uid_value 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationComposite, Fixnum, Hash)>] OrganizationComposite data, response status code and response headers
    def read_organization_by_uid_with_http_info(uid_type, uid_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi#read_organization_by_uid ..."
      end
      
      # verify the required parameter 'uid_type' is set
      fail "Missing the required parameter 'uid_type' when calling read_organization_by_uid" if uid_type.nil?
      
      # verify the required parameter 'uid_value' is set
      fail "Missing the required parameter 'uid_value' when calling read_organization_by_uid" if uid_value.nil?
      
      # resource path
      path = "/organizations/{uidType}/{uidValue}".sub('{format}','json').sub('{' + 'uidType' + '}', uid_type.to_s).sub('{' + 'uidValue' + '}', uid_value.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationComposite')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#read_organization_by_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




