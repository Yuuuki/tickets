#ActiveRecord::Base ��Controller�����݂����Ă���

class Ticket < ActiveRecord::Base
  #�A�N�Z�X�ł���J�����������ō쐬���Ă���
    attr_accessible :address, :email_address, :name, :price_paid, :seat_id_seq, :phone_number

  #���O���͕͂K�{
  validates :name, presence: true
  
  validates_length_of :phone_number, :within => 10..11
  
  
end