class Talent < ActiveRecord::Base
  has_many :amoebas
  validates :name, presence: true
end
