class Account
    STANDARD_VALIDITY_YRS = 5

    def initialize
        @account_status = :active
        @pin_code = 1234
        @balance = 
        @exp_date = '04/23'
    end
    def account(pin_code, balance, account_status, exp_date)

    end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

end