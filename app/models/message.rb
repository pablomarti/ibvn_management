class Message
  
  include Mongoid::Document
  field :title, type: String
  field :description, type: String

  has_many :groups

  accepts_nested_attributes_for :groups

  after_create :prepare_emails

  def prepare_emails
  	members = []
  	self.groups.each do |group|
  		members += group.members
  	end

  	members = members.uniq

  	if members.count <= 50
  		self.send_email(members)
  	else
  		chunks = members.each_slice(50).to_a
  		chunks.each do |chunk|
  			self.send_email(chunk)
  		end
  	end
  end

  def send_email(members)
  	emails = members.collect{ |m| m.workemailaddress }
  	MembersMailer.new_message(emails, self.title, self.description).deliver
  end

end