class Account
    attr_accessor :funds

    def initialize(attrs = {})
        @funds = 1000
        set_owner(attrs[:owner])
    end
