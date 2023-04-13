=begin
#MassPay API

#MassPay API

The version of the OpenAPI document: 0.1.4
Contact: support@masspay.io
Generated by: MassPay Inc.
OpenAPI Generator version: 6.5.0
=end

require 'date'
require 'time'

module MassPayRubySdk
  # Record that represents a transaction
  class TxnHistoryResp
    # Token represnting the transaction
    attr_accessor :token

    # Type of transaction
    attr_accessor :type

    # Time the transaction was created. In UTC
    attr_accessor :time_of_txn

    # Source amount
    attr_accessor :source_amount

    # The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided
    attr_accessor :source_currency_code

    # The amount that was received in `destination_currency_code`
    attr_accessor :destination_amount

    # The currency of the funds received. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format
    attr_accessor :destination_currency_code

    # Fee of the transaction
    attr_accessor :fee

    # Status of the transaction
    attr_accessor :status

    # Notes of the transaction when load or spend back
    attr_accessor :notes

    # Name of the payer when payout transaction
    attr_accessor :payer_name

    # Code/pin that is required when collecting the money when payout transaction
    attr_accessor :pickup_code

    # Token that represents the funding source i.e. bank account, wallet. 36 characters long
    attr_accessor :source_token

    # Token that represents the payout destination i.e. Omnex->Brazil->Bank Deposit->Itau. To be retrieved from the #pricing callback. If not provided, the last destination that was used for this user will be used. 36 characters long
    attr_accessor :destination_token

    # The type of service. I.e. cash pickup, home delivery, etc. Only provided for payouts
    attr_accessor :delivery_type

    # A client defined transfer identifier. This is the unique ID assigned to the transfer on your system. Max 50 characters.
    attr_accessor :client_transfer_id

    # The reason for the status change. Usually would include reason for an ERROR or CANCEL status
    attr_accessor :status_reason

    # Optional client id
    attr_accessor :client_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'token' => :'token',
        :'type' => :'type',
        :'time_of_txn' => :'time_of_txn',
        :'source_amount' => :'source_amount',
        :'source_currency_code' => :'source_currency_code',
        :'destination_amount' => :'destination_amount',
        :'destination_currency_code' => :'destination_currency_code',
        :'fee' => :'fee',
        :'status' => :'status',
        :'notes' => :'notes',
        :'payer_name' => :'payer_name',
        :'pickup_code' => :'pickup_code',
        :'source_token' => :'source_token',
        :'destination_token' => :'destination_token',
        :'delivery_type' => :'delivery_type',
        :'client_transfer_id' => :'client_transfer_id',
        :'status_reason' => :'status_reason',
        :'client_id' => :'client_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'token' => :'String',
        :'type' => :'String',
        :'time_of_txn' => :'Time',
        :'source_amount' => :'Float',
        :'source_currency_code' => :'String',
        :'destination_amount' => :'Float',
        :'destination_currency_code' => :'String',
        :'fee' => :'Float',
        :'status' => :'String',
        :'notes' => :'String',
        :'payer_name' => :'String',
        :'pickup_code' => :'String',
        :'source_token' => :'String',
        :'destination_token' => :'String',
        :'delivery_type' => :'String',
        :'client_transfer_id' => :'String',
        :'status_reason' => :'String',
        :'client_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MassPayRubySdk::TxnHistoryResp` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MassPayRubySdk::TxnHistoryResp`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'time_of_txn')
        self.time_of_txn = attributes[:'time_of_txn']
      end

      if attributes.key?(:'source_amount')
        self.source_amount = attributes[:'source_amount']
      end

      if attributes.key?(:'source_currency_code')
        self.source_currency_code = attributes[:'source_currency_code']
      else
        self.source_currency_code = 'USD'
      end

      if attributes.key?(:'destination_amount')
        self.destination_amount = attributes[:'destination_amount']
      end

      if attributes.key?(:'destination_currency_code')
        self.destination_currency_code = attributes[:'destination_currency_code']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'payer_name')
        self.payer_name = attributes[:'payer_name']
      end

      if attributes.key?(:'pickup_code')
        self.pickup_code = attributes[:'pickup_code']
      end

      if attributes.key?(:'source_token')
        self.source_token = attributes[:'source_token']
      end

      if attributes.key?(:'destination_token')
        self.destination_token = attributes[:'destination_token']
      end

      if attributes.key?(:'delivery_type')
        self.delivery_type = attributes[:'delivery_type']
      end

      if attributes.key?(:'client_transfer_id')
        self.client_transfer_id = attributes[:'client_transfer_id']
      end

      if attributes.key?(:'status_reason')
        self.status_reason = attributes[:'status_reason']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @token.nil?
        invalid_properties.push('invalid value for "token", token cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @time_of_txn.nil?
        invalid_properties.push('invalid value for "time_of_txn", time_of_txn cannot be nil.')
      end

      if @source_amount.nil?
        invalid_properties.push('invalid value for "source_amount", source_amount cannot be nil.')
      end

      if @source_currency_code.nil?
        invalid_properties.push('invalid value for "source_currency_code", source_currency_code cannot be nil.')
      end

      if @source_currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "source_currency_code", the character length must be smaller than or equal to 3.')
      end

      if @source_currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "source_currency_code", the character length must be great than or equal to 3.')
      end

      if @destination_amount.nil?
        invalid_properties.push('invalid value for "destination_amount", destination_amount cannot be nil.')
      end

      if @destination_currency_code.nil?
        invalid_properties.push('invalid value for "destination_currency_code", destination_currency_code cannot be nil.')
      end

      if @destination_currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "destination_currency_code", the character length must be smaller than or equal to 3.')
      end

      if @destination_currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "destination_currency_code", the character length must be great than or equal to 3.')
      end

      if @fee.nil?
        invalid_properties.push('invalid value for "fee", fee cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @destination_token.nil?
        invalid_properties.push('invalid value for "destination_token", destination_token cannot be nil.')
      end

      if !@client_transfer_id.nil? && @client_transfer_id.to_s.length > 50
        invalid_properties.push('invalid value for "client_transfer_id", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @token.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["load", "payout", "spend back", "info"])
      return false unless type_validator.valid?(@type)
      return false if @time_of_txn.nil?
      return false if @source_amount.nil?
      return false if @source_currency_code.nil?
      return false if @source_currency_code.to_s.length > 3
      return false if @source_currency_code.to_s.length < 3
      return false if @destination_amount.nil?
      return false if @destination_currency_code.nil?
      return false if @destination_currency_code.to_s.length > 3
      return false if @destination_currency_code.to_s.length < 3
      return false if @fee.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "COMPLETED", "CANCELLED", "SCHEDULED", "READY_FOR_PICKUP", "HOLD", "ERROR"])
      return false unless status_validator.valid?(@status)
      return false if @destination_token.nil?
      delivery_type_validator = EnumAttributeValidator.new('String', ["CASH_PICKUP", "BANK_DEPOSIT", "HOME_DELIVERY", "MOBILE_WALLET", "MASSPAY_CARD", "PAPER_CHECK", "BILL", "CRYPTOCURRENCY"])
      return false unless delivery_type_validator.valid?(@delivery_type)
      return false if !@client_transfer_id.nil? && @client_transfer_id.to_s.length > 50
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["load", "payout", "spend back", "info"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] source_currency_code Value to be assigned
    def source_currency_code=(source_currency_code)
      if source_currency_code.nil?
        fail ArgumentError, 'source_currency_code cannot be nil'
      end

      if source_currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "source_currency_code", the character length must be smaller than or equal to 3.'
      end

      if source_currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "source_currency_code", the character length must be great than or equal to 3.'
      end

      @source_currency_code = source_currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_currency_code Value to be assigned
    def destination_currency_code=(destination_currency_code)
      if destination_currency_code.nil?
        fail ArgumentError, 'destination_currency_code cannot be nil'
      end

      if destination_currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "destination_currency_code", the character length must be smaller than or equal to 3.'
      end

      if destination_currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "destination_currency_code", the character length must be great than or equal to 3.'
      end

      @destination_currency_code = destination_currency_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "COMPLETED", "CANCELLED", "SCHEDULED", "READY_FOR_PICKUP", "HOLD", "ERROR"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_type Object to be assigned
    def delivery_type=(delivery_type)
      validator = EnumAttributeValidator.new('String', ["CASH_PICKUP", "BANK_DEPOSIT", "HOME_DELIVERY", "MOBILE_WALLET", "MASSPAY_CARD", "PAPER_CHECK", "BILL", "CRYPTOCURRENCY"])
      unless validator.valid?(delivery_type)
        fail ArgumentError, "invalid value for \"delivery_type\", must be one of #{validator.allowable_values}."
      end
      @delivery_type = delivery_type
    end

    # Custom attribute writer method with validation
    # @param [Object] client_transfer_id Value to be assigned
    def client_transfer_id=(client_transfer_id)
      if !client_transfer_id.nil? && client_transfer_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "client_transfer_id", the character length must be smaller than or equal to 50.'
      end

      @client_transfer_id = client_transfer_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          token == o.token &&
          type == o.type &&
          time_of_txn == o.time_of_txn &&
          source_amount == o.source_amount &&
          source_currency_code == o.source_currency_code &&
          destination_amount == o.destination_amount &&
          destination_currency_code == o.destination_currency_code &&
          fee == o.fee &&
          status == o.status &&
          notes == o.notes &&
          payer_name == o.payer_name &&
          pickup_code == o.pickup_code &&
          source_token == o.source_token &&
          destination_token == o.destination_token &&
          delivery_type == o.delivery_type &&
          client_transfer_id == o.client_transfer_id &&
          status_reason == o.status_reason &&
          client_id == o.client_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [token, type, time_of_txn, source_amount, source_currency_code, destination_amount, destination_currency_code, fee, status, notes, payer_name, pickup_code, source_token, destination_token, delivery_type, client_transfer_id, status_reason, client_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MassPayRubySdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
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