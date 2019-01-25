require './lib/account.rb'
require 'date'

describe Account do
    let(:person) {instance_double('Person', name: 'Thomas')}


    it 'Account is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.expire_date).to eq expected_date
    end

    it 'check length of a number' do
        number_length = Math.log10(pin_code).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'deactivates account using Instance method' do
        subject.deactivate
        expect(subject.account_status).to eq :deactivated
    end

    it 'is expected to have an owner' do
        expect(subject.owner).to eq person
    end

    it 'is expected to raise error if no owner is set' do
        expect { described_class.new }.to raise_error 'An Account owner is required'
    end
    it 'is expected to have a balance greater than zero'  do
        expect(subject.balance).to => 0
    end

    it 'is expected to have a balance greater than zero'  do
        expect(subject.balance).to => 0
    end  

end
