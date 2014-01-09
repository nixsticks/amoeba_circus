class Amoeba < ActiveRecord::Base
  has_one :talent
  has_many :acts_amoebas
  has_many :acts, :through => :acts_amoebas
end
