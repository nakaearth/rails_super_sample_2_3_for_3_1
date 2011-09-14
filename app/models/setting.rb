class Setting
  include Mongoid::Document
  field :skin_id, :type => Integer
  field :handle_name, :type => String
  embedded_in :user, :inverse_of=>:setting
end
