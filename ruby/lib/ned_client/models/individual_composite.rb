require 'date'

module NedClient
  class IndividualComposite
    attr_accessor :auth

    attr_accessor :individualprofiles

    attr_accessor :groups

    attr_accessor :addresses

    attr_accessor :emails

    attr_accessor :phonenumbers

    attr_accessor :uniqueidentifiers

    attr_accessor :degrees

    attr_accessor :urls

    attr_accessor :relationships

    attr_accessor :type_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'auth' => :'auth',
        
        :'individualprofiles' => :'individualprofiles',
        
        :'groups' => :'groups',
        
        :'addresses' => :'addresses',
        
        :'emails' => :'emails',
        
        :'phonenumbers' => :'phonenumbers',
        
        :'uniqueidentifiers' => :'uniqueidentifiers',
        
        :'degrees' => :'degrees',
        
        :'urls' => :'urls',
        
        :'relationships' => :'relationships',
        
        :'type_name' => :'typeName'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auth' => :'Array<Auth>',
        :'individualprofiles' => :'Array<Individualprofile>',
        :'groups' => :'Array<Group>',
        :'addresses' => :'Array<Address>',
        :'emails' => :'Array<Email>',
        :'phonenumbers' => :'Array<Phonenumber>',
        :'uniqueidentifiers' => :'Array<Uniqueidentifier>',
        :'degrees' => :'Array<Degree>',
        :'urls' => :'Array<Url>',
        :'relationships' => :'Array<Relationship>',
        :'type_name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'auth']
        if (value = attributes[:'auth']).is_a?(Array)
          self.auth = value
        end
      end
      
      if attributes[:'individualprofiles']
        if (value = attributes[:'individualprofiles']).is_a?(Array)
          self.individualprofiles = value
        end
      end
      
      if attributes[:'groups']
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end
      
      if attributes[:'addresses']
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end
      
      if attributes[:'emails']
        if (value = attributes[:'emails']).is_a?(Array)
          self.emails = value
        end
      end
      
      if attributes[:'phonenumbers']
        if (value = attributes[:'phonenumbers']).is_a?(Array)
          self.phonenumbers = value
        end
      end
      
      if attributes[:'uniqueidentifiers']
        if (value = attributes[:'uniqueidentifiers']).is_a?(Array)
          self.uniqueidentifiers = value
        end
      end
      
      if attributes[:'degrees']
        if (value = attributes[:'degrees']).is_a?(Array)
          self.degrees = value
        end
      end
      
      if attributes[:'urls']
        if (value = attributes[:'urls']).is_a?(Array)
          self.urls = value
        end
      end
      
      if attributes[:'relationships']
        if (value = attributes[:'relationships']).is_a?(Array)
          self.relationships = value
        end
      end
      
      if attributes[:'typeName']
        self.type_name = attributes[:'typeName']
      end
      
    end

    # Custom attribute writer method checking allowed values (enum).
    def type_name=(type_name)
      allowed_values = ["INDIVIDUAL", "ORGANIZATION", "INVALID_NAMEDPARTY_TYPE"]
      if type_name && !allowed_values.include?(type_name)
        fail "invalid value for 'type_name', must be one of #{allowed_values}"
      end
      @type_name = type_name
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth == o.auth &&
          individualprofiles == o.individualprofiles &&
          groups == o.groups &&
          addresses == o.addresses &&
          emails == o.emails &&
          phonenumbers == o.phonenumbers &&
          uniqueidentifiers == o.uniqueidentifiers &&
          degrees == o.degrees &&
          urls == o.urls &&
          relationships == o.relationships &&
          type_name == o.type_name
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [auth, individualprofiles, groups, addresses, emails, phonenumbers, uniqueidentifiers, degrees, urls, relationships, type_name].hash
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
