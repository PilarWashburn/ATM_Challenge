class Account
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :balance, :pin_code, :account_status, :exp_date

def initialize (account_status, pin_code, balance, expire_date)
    @account_status = :active
    @pin_code = 1234
    @balance = 950
    @expire_date = '04/23'
end

    def deactivate
        @account_status = :deactivated
    end
      
    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin    
    end
        
    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end

end