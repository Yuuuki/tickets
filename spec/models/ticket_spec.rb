# coding: utf-8

require 'spec_helper'

describe Ticket do

  describe 'validation' do
    before do
      @ticket = Ticket.new(name: 'yuki', seat_id_seq: 'C-B', address: 'Tokyo', price_paid: '3000', email_address: 'yuki.kotani@example.co.jp', phone_number: '0312341234')
    end
    
    subject { @ticket }
    
    #should_not_be_valid ‚ÍNG‚ÄˆÓ–¡
    context 'No name' do
      before { @ticket.name = '' }
      it { should_not be_valid }
    end
    
    #should_be_valid ‚ÍOK‚ÄˆÓ–¡
    context 'Name in' do
      before { @ticket.name = 'yuki' }
      it { should be_valid }
    end
    
    context 'No phone number' do
      before { @ticket.phone_number = '' }
      it { should_not be_valid }
    end
    
    context 'Phone number in' do
      before { @ticket.phone_number = '0312341234' }
      it { should be_valid }
    end
    
    context 'Too short number' do
	  before { @ticket.phone_number = '080' }
	  it { should_not be_valid }
	end

	context 'Too long number' do
	  before { @ticket.phone_number = '0801234567890' }
	  it { should_not be_valid }
	end

	context 'true number' do
	  before { @ticket.phone_number = '08012345678' }
	  it { should be_valid }
	end
    
  end
end