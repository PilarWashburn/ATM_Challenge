require './lib/account.rb'
require 'date'

describe Account do
    let(:account) {instance_double('Account', pin_code: '1234', exp_date: '04/23', account_status: :active)}
