 require './lib/atm.rb'
 require 'date'
 require './lib/account.rb'

describe Account do

    it 'reject withdraw if pin is wrong'  do
        expected_output = {status: false, message: 'wrong pin', date: Date.today}
        expect(subject.withdraw(50, 9999, account)).to eq expected_output
    end

    it 'allow withdraw if account has enough balance'  do
        expect_output = {status: true, message: 'success', date: Date.today, amount: 45, bills: [20, 20, 5]}
        expect(subject.withdraw(45, '1234', account)).to eq expect_output
    end

    it 'reject withdraw if account is disabled'  do
        allow(account).to receive(:account_status).and_return(:disabled)
        expected_output = {status: false, message: 'disabled account', date: Date.today}
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

    it 'reject withdraw if card is expired'  do
        allow(account).to receive(:exp_date).and_return('04/18')
        expected_output = {status: false, message: 'card expired', date: Date.today}
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

end