require './lib/account.rb'

describe Account do

    let(:account) {instance_double('Account', pin_code: '1234', exp_date: '04/23', account_status: :active)}

    it 'reject withdraw if pin is wrong'  do
        expected_output = {status: false, message: 'wrong pin', date: Date.today}
        expect(subject.withdraw(50, 9999, account)).to eq expected_output
    end

    it 'reject withdraw if card is expired'  do
        allow(account).to receive(:exp_date).and_return('04/18')
        expected_output = {status: false, message: 'card expired', date: Date.today}
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

    it 'reject withdraw if account is disabled'  do
        allow(account).to receive(:account_status).and_return(:disabled)
        expected_output = {status: false, message: 'disabled account', date: Date.today}
        expect(subject.withdraw(6, '1234', account)).to eq expected_output
    end

    it 'reject withdrawal if account has insufficient funds'  do
        expect_output = {status: false, message: 'insufficient funds in account', date: Date.today}
        expect(subject.withdraw(105, '1234', account)).to eq expect_output
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime('%m/%y')
        expect(subject.exp_date).to eq expected_date
    end
end