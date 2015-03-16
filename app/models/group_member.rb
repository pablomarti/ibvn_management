class GroupMember
  include Mongoid::Document
  
  embedded_in :group
  embedded_in :member

end
