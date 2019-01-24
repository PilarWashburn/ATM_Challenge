class Account
    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date)
        @expiry_date = '%m/%y'
        @account_status = :active
        @balance = 1000
        @pin_code = '1234'
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

end