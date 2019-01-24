require './lib/account.rb'
# require 'date'

describe Account do
    let(:account) {instance_double('Account', pin_code: '1234', exp_date: '04/23', account_status: :active, :balance)}

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end
end