module EmailQuality
  class Domain

    include Validatability

    def Domain.whitelisted?(name)
      Config[:whitelist].include?(name.downcase.strip) ? true : false
    end

    def Domain.blacklisted?(name)
      # Config[:blacklist].include?(name.downcase.strip)
      Blacklist.is_disposable_email?(name)
    end

    def initialize(name = '')
      @name = name
    end

    def to_s
      name
    end

    def name
      @name.to_s.downcase.strip
    end

    def whitelisted?
      Domain.whitelisted?(name) ? true : false
    end

    def blacklisted?
      Domain.blacklisted?(name) ? true : false
    end

    protected

    def validate!
      return if whitelisted?
      add_error(:blacklisted) if blacklisted? &&
        Config[:enforce_blacklist]
    end

  end
end
