require './lib/account.rb'
require 'date'

describe Account do

    it 'check length of a number' do
        number_length = Math.log10(pin_code).to_i + 1
        expect(number_length).to eq 4
    end
end
