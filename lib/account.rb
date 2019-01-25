class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date)
        @expiry_date = exp_date
        @account_status = :active
        @balance = :balance
        @pin_code = rand(1000..9999)
    end

    private

    def set_exp_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end

    # def set_owner(obj)
    #     obj == nil ?  missing_owner : @owner = obj
    # end

end