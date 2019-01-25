class Account
    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date, set_owner)
        @expiry_date = '%m/%y'
        @account_status = :active
        @balance = 1000
        @pin_code = rand(1000..9999)
        @set_owner = owner
    end

    private

    def set_exp_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

    def deactivate
        @account_status = :deactivated
    end

    def set_owner(obj)
        obj == nil ?  missing_owner : @owner = obj
    end
end