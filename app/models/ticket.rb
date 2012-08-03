#ActiveRecord::Base はControllerをうみだしている

class Ticket < ActiveRecord::Base
  #アクセスできるカラムをここで作成している
    attr_accessible :address, :email_address, :name, :price_paid, :seat_id_seq, :phone_number

  #名前入力は必須
  validates :name, presence: true
  
  validates_length_of :phone_number, :within => 10..11
  
  
end