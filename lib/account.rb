class Account
    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date)
        @expiry_date = '%m/%y'
        @account_status = :active
        @balance = 1000
        @pin_code = 1234
        #set_owner
    end

    private

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

    def deactivate
        @account_status = :deactivated
    end

    def set_owner(obj)
        obj == nil ?  missing_owner : @owner = obj
    end

end