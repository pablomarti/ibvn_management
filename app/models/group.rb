class Group
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String

  has_many :group_members
  belongs_to :message

  def members
  	group_members.collect{ |gm| gm.member }
  end

end
