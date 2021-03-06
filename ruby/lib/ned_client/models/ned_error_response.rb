require 'date'

module NedClient
  class NedErrorResponse
    attr_accessor :failure_msg

    attr_accessor :error_code

    attr_accessor :error_msg

    attr_accessor :detailed_msg

    attr_accessor :acceptable_values

    attr_accessor :timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'failure_msg' => :'failureMsg',
        
        :'error_code' => :'errorCode',
        
        :'error_msg' => :'errorMsg',
        
        :'detailed_msg' => :'detailedMsg',
        
        :'acceptable_values' => :'acceptableValues',
        
        :'timestamp' => :'timestamp'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'failure_msg' => :'String',
        :'error_code' => :'Integer',
        :'error_msg' => :'String',
        :'detailed_msg' => :'String',
        :'acceptable_values' => :'Array<String>',
        :'timestamp' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'failureMsg']
        self.failure_msg = attributes[:'failureMsg']
      end
      
      if attributes[:'errorCode']
        self.error_code = attributes[:'errorCode']
      end
      
      if attributes[:'errorMsg']
        self.error_msg = attributes[:'errorMsg']
      end
      
      if attributes[:'detailedMsg']
        self.detailed_msg = attributes[:'detailedMsg']
      end
      
      if attributes[:'acceptableValues']
        if (value = attributes[:'acceptableValues']).is_a?(Array)
          self.acceptable_values = value
        end
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          failure_msg == o.failure_msg &&
          error_code == o.error_code &&
          error_msg == o.error_msg &&
          detailed_msg == o.detailed_msg &&
          acceptable_values == o.acceptable_values &&
          timestamp == o.timestamp
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [failure_msg, error_code, error_msg, detailed_msg, acceptable_values, timestamp].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = NedClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
