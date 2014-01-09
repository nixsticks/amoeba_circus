class Act < ActiveRecord::Base
  has_many :acts_amoebas
  has_many :amoebas, :through => :acts_amoebas
end
