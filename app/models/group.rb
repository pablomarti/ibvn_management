class Group
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String

  embeds_many :group_members

end
