class User
  include Mongoid::Document
  field :name, :type => String
  field :age, :type => Integer
  field :profile, :type => String
  attr_protected :_id
  embeds_one :setting
  embeds_many :entries
  validates_presence_of :name
  validates_numericality_of :age, :message =>'Not Numericality.'
end
