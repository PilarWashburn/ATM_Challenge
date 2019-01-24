class Account
    STANDARD_VALIDITY_YRS = 5
<<<<<<< HEAD
    attr_accessor :balance, :pin_code, :account_status, :exp_date

def initialize (account_status, pin_code, balance, expire_date)
    @account_status = :active
    @pin_code = 1234
    @balance = 950
    @expire_date = '01/24'
end

def set_expire_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
end

=======

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize(account_status, balance, pin_code, exp_date)
        @expire_date = expire_date
        @account_status = account_status
        @balance = balance
        @pin_code = pin_code
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end
>>>>>>> 3c819a2f465167b222c8e690e47e8604aab49929

end