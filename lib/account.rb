class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date, :owner

    def initialize(attrs = {})
        @exp_date = exp_date
        @account_status = :active
        @pin_code = rand(1000..9999)
        set_owner(attrs[:owner])
    end

    private

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end

    def set_exp_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise 'An account owner is required'
    end

end
