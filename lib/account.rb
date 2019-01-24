class Account
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize
        @account_status = active
    end

    def account(pin_code, balance, account_status, exp_date)

    end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

end