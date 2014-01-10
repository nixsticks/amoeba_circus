class Amoeba < ActiveRecord::Base
  NAMES = %w[Bob Dave Alice Jenny Loafy Piper Channing Carol Fear&Loathing Paul Smithy Thompson Yonks Mew Mewtwo Pikachu Agdubs Ari Jonathan Grover Oscar YewTree]

  has_one :talent
  has_many :amoeba_acts
  has_many :acts, :through => :amoeba_acts
  accepts_nested_attributes_for :acts
  validates :name, presence: true

  def mitosis
    first_child = Amoeba.create(name: names.sample, generation: self.generation + 1, talent_id: self.talent_id)

    second_child = Amoeba.create(name: names.sample, generation: self.generation + 1, talent_id: self.talent_id)

    self.acts.each do |act|
      act.amoebas << first_child << second_child
    end

    self.destroy
  end

  def names
    NAMES.drop_while {|name| name == self.name}
  end
end