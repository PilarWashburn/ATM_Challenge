require './lib/account.rb'
require 'date'

describe Account do
    let(:person) {instance_double('Person', name: 'Thomas')}


    it 'is expected to have a balance' do
        expected_balance => 0
        expect(balance).to eq 950
    
    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.expire_date).to eq expected_date
    end

    

    

end
