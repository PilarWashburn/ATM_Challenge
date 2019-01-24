# require './lib/account.rb'
# require 'date'

describe Account do
    
    it 'deactivates account using Instance method' do
        subject.deactivate
        expect(subject.account_status).to eq :deactivated
    end

    it 'check length of a number' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have a balance' do
        expected_balance => 0
        expect(balance).to eq 950
    
    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.expire_date).to eq expected_date
    end

    

    

end
