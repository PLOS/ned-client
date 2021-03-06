require "uri"

module NedClient
  class ServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Config info
    # 
    # @param [Hash] opts the optional parameters
    # @return [ConfigInfo]
    def config(opts = {})
      data, status_code, headers = config_with_http_info(opts)
      return data
    end

    # Config info
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigInfo, Fixnum, Hash)>] ConfigInfo data, response status code and response headers
    def config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceApi#config ..."
      end
      
      # resource path
      path = "/service/config".sub('{format}','json')

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
        :return_type => 'ConfigInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List possible error codes
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<NedErrorResponse>]
    def errorcodes(opts = {})
      data, status_code, headers = errorcodes_with_http_info(opts)
      return data
    end

    # List possible error codes
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<NedErrorResponse>, Fixnum, Hash)>] Array<NedErrorResponse> data, response status code and response headers
    def errorcodes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceApi#errorcodes ..."
      end
      
      # resource path
      path = "/service/errorcodes".sub('{format}','json')

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
        :return_type => 'Array<NedErrorResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#errorcodes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




