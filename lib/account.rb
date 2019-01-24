class Account
    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date, set_owner)
        @expiry_date = '%m/%y'
        @account_status = :active
        @balance = 1000
        @pin_code = 1234
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

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end

    def insufficient_funds_in_account?(amount, pin_code, account)
        amount > account.balance
    end
    
    
        

end