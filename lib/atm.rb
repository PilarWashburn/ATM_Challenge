class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, pin_code, account)
        case
        when insufficient_funds_in_account?(amount, pin_code, account)
            { status: false, message: 'insufficient funds in account', date: Date.today }
        when insufficient_funds_in_Atm?(amount)
            { status: false, message: 'insufficient funds in Atm', date: Date.today }
        when incorrect_pin?(pin_code, account.pin_code)
            { status: false, message: 'wrong pin', date: Date.today }     
        else
            perform_transaction(amount, pin_code, account)
        end
    
    end
    
    private

    def insufficient_funds_in_account?(amount, pin_code, account)
        amount > account.balance
    end
    
    def perform_transaction(amount, pin_code, account)
        @funds -= amount
        account.balance = account.balance - amount
        { status: true, message: 'success', date: Date.today, amount: amount }
    end

    def insufficient_funds_in_Atm?(amount)
        @funds < amount
    end 
    
    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end
end



