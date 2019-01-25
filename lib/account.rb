class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :balance, :pin_code, :account_status, :exp_date

    def initialize
        @expiry_date = set_exp_date
        @account_status = :active
        @balance = account.balance
        @pin_code = rand(1000..9999)
    end

    private

    def incorrect_pin?(pin_code, actual_pin)
        pin_code != actual_pin
    end
end
