class Entry
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  embedded_in :users, :inverse_of => :entries
end
