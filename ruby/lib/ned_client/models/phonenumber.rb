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

require 'date'

module NedClient
  class Phonenumber
    attr_accessor :id

    attr_accessor :nedid

    attr_accessor :source

    attr_accessor :sourcetypeid

    attr_accessor :created

    attr_accessor :lastmodified

    attr_accessor :createdby

    attr_accessor :createdbyname

    attr_accessor :lastmodifiedby

    attr_accessor :lastmodifiedbyname

    attr_accessor :typeid

    attr_accessor :type

    attr_accessor :countrycodetypeid

    attr_accessor :countrycodetype

    attr_accessor :phonenumber

    attr_accessor :extension

    attr_accessor :isactive

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'nedid' => :'nedid',
        
        :'source' => :'source',
        
        :'sourcetypeid' => :'sourcetypeid',
        
        :'created' => :'created',
        
        :'lastmodified' => :'lastmodified',
        
        :'createdby' => :'createdby',
        
        :'createdbyname' => :'createdbyname',
        
        :'lastmodifiedby' => :'lastmodifiedby',
        
        :'lastmodifiedbyname' => :'lastmodifiedbyname',
        
        :'typeid' => :'typeid',
        
        :'type' => :'type',
        
        :'countrycodetypeid' => :'countrycodetypeid',
        
        :'countrycodetype' => :'countrycodetype',
        
        :'phonenumber' => :'phonenumber',
        
        :'extension' => :'extension',
        
        :'isactive' => :'isactive'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'nedid' => :'Integer',
        :'source' => :'String',
        :'sourcetypeid' => :'Integer',
        :'created' => :'DateTime',
        :'lastmodified' => :'DateTime',
        :'createdby' => :'Integer',
        :'createdbyname' => :'String',
        :'lastmodifiedby' => :'Integer',
        :'lastmodifiedbyname' => :'String',
        :'typeid' => :'Integer',
        :'type' => :'String',
        :'countrycodetypeid' => :'Integer',
        :'countrycodetype' => :'String',
        :'phonenumber' => :'String',
        :'extension' => :'String',
        :'isactive' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'nedid']
        self.nedid = attributes[:'nedid']
      end
      
      if attributes[:'source']
        self.source = attributes[:'source']
      end
      
      if attributes[:'sourcetypeid']
        self.sourcetypeid = attributes[:'sourcetypeid']
      end
      
      if attributes[:'created']
        self.created = attributes[:'created']
      end
      
      if attributes[:'lastmodified']
        self.lastmodified = attributes[:'lastmodified']
      end
      
      if attributes[:'createdby']
        self.createdby = attributes[:'createdby']
      end
      
      if attributes[:'createdbyname']
        self.createdbyname = attributes[:'createdbyname']
      end
      
      if attributes[:'lastmodifiedby']
        self.lastmodifiedby = attributes[:'lastmodifiedby']
      end
      
      if attributes[:'lastmodifiedbyname']
        self.lastmodifiedbyname = attributes[:'lastmodifiedbyname']
      end
      
      if attributes[:'typeid']
        self.typeid = attributes[:'typeid']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'countrycodetypeid']
        self.countrycodetypeid = attributes[:'countrycodetypeid']
      end
      
      if attributes[:'countrycodetype']
        self.countrycodetype = attributes[:'countrycodetype']
      end
      
      if attributes[:'phonenumber']
        self.phonenumber = attributes[:'phonenumber']
      end
      
      if attributes[:'extension']
        self.extension = attributes[:'extension']
      end
      
      if attributes[:'isactive']
        self.isactive = attributes[:'isactive']
      else
        self.isactive = false
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          nedid == o.nedid &&
          source == o.source &&
          sourcetypeid == o.sourcetypeid &&
          created == o.created &&
          lastmodified == o.lastmodified &&
          createdby == o.createdby &&
          createdbyname == o.createdbyname &&
          lastmodifiedby == o.lastmodifiedby &&
          lastmodifiedbyname == o.lastmodifiedbyname &&
          typeid == o.typeid &&
          type == o.type &&
          countrycodetypeid == o.countrycodetypeid &&
          countrycodetype == o.countrycodetype &&
          phonenumber == o.phonenumber &&
          extension == o.extension &&
          isactive == o.isactive
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [id, nedid, source, sourcetypeid, created, lastmodified, createdby, createdbyname, lastmodifiedby, lastmodifiedbyname, typeid, type, countrycodetypeid, countrycodetype, phonenumber, extension, isactive].hash
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
