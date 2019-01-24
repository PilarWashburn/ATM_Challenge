class Account
    
    attr_accessor :funds

    def withdraw(amount, pin_code, account)
        case
        when insufficient_funds_in_account?(amount, pin_code, account)
            {status: false, message: 'insufficient funds in account', date: Date.today}
        when incorrect_pin?(pin_code, account.pin_code)
            {status: false, message: 'wrong pin', date: Date.today}  
        when card_expired?(account.exp_date)
            {status: false, message: 'card expired', date: Date.today}
        when disabled_account?(account.account_status)
            {status: false, message: 'disabled account', date: Date.today}
        else
            perform_transaction(amount, pin_code, account)
        end
    
    end

    private

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end

    def insufficient_funds_in_account?(amount, pin_code, account)
        amount > account.balance
    end

    def disabled_account?(account_status)
        account_status == :disabled
    end

    def card_expired?(exp_date)
        Date.strptime(exp_date, '%m/%y') < Date.today
    end
end