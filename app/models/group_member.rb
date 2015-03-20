class GroupMember
  include Mongoid::Document
  
  belongs_to :group
  belongs_to :member

end
