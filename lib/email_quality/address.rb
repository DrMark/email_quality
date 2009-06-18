module EmailQuality
  class Address

    include Validatability

    attr_reader :domain

    def initialize(email = '')
      self.email_address = email
    end

    def to_s
      email_address
    end

    def email_address
      @email_address.to_s.strip
    end

    def email_address=(new_email_address)
      @email_address = new_email_address.to_s
      @self.email_address = Domain.new(@email_address.split('@')[1] || '')
    end

    def is_disposable_email?
      Blacklist.is_disposable_email?(@email_address)
    end

    def is_forwarding_email?
      Blacklist.is_forwarding_email?(@email_address)
    end

    def is_trash_email?
      Blacklist.is_trash_email?(@email_address)
    end

    def is_shredder_email?
      Blacklist.is_shredder_email?(@email_address)
    end

    def is_time_bound_email?
      Blacklist.is_time_bound_email?(@email_address)
    end

    def is_open_email?
      Blacklist.is_open_email?(@email_address)
    end
    
    protected

    def validate!
      add_error(:malformed) if !pattern_valid?
      return unless Config[:lookup]
      add_errors(self.email_address.errors)
    end

    def pattern_valid?
      @email_address =~ Config[:valid_pattern]
    end

  end
end
