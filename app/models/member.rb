class Member
  include Mongoid::Document
  field :salutation, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :organisation, type: String
  field :role, type: String
  field :background, type: String
  field :businessstreet, type: String #check
  field :businesscity, type: String
  field :businessstate, type: String
  field :businesspostalcode, type: String
  field :businesscountry, type: String
  field :homestreet, type: String
  field :homecity, type: String
  field :homestate, type: String
  field :homepostalcode, type: String
  field :homecountry, type: String
  field :otherstreet, type: String
  field :othercity, type: String
  field :otherstate, type: String
  field :otherpostalcode, type: String
  field :othercountry, type: String
  field :postalstreet, type: String
  field :postalcity, type: String
  field :postalstate, type: String
  field :postalpostalcode, type: String
  field :postalcountry, type: String
  field :businessphone, type: String
  field :businessphone2, type: String
  field :businessfax, type: String
  field :homephone, type: String
  field :homephone2, type: String
  field :mobilephone, type: String
  field :otherphone, type: String
  field :pagerphone, type: String
  field :skypephone, type: String
  field :sipphone, type: String
  field :workemailaddress, type: String
  field :personalemailaddress, type: String
  field :otheremailaddress, type: String
  field :workwebsite, type: String
  field :personalwebsite, type: String
  field :blogwebsite, type: String
  field :otherwebsite, type: String
  field :importantdate1name, type: String
  field :importantdate1, type: String
  field :importantdate2name, type: String
  field :importantdate2, type: String
  field :importantdate3name, type: String
  field :importantdate3, type: String
  field :contacttag1, type: String
  field :contacttag2, type: String
  field :contacttag3, type: String
  field :contacttag4, type: String
  field :contacttag5, type: String
  field :contacttag6, type: String
  field :contacttag7, type: String
  field :contacttag8, type: String
  field :contacttag9, type: String
  field :datecreated, type: String
  field :dateupdated, type: String
  field :linkedorganizationpostalstreet, type: String
  field :linkedorganizationpostalcity, type: String
  field :linkedorganizationpostalstate, type: String
  field :linkedorganizationpostalcode, type: String
  field :linkedorganizationpostalcountry, type: String
  field :linkedorganizationbusinessstreet, type: String
  field :linkedorganizationbusinesscity, type: String
  field :linkedorganizationbusinessstate, type: String
  field :linkedorganizationbusinesspostalcode, type: String
  field :linkedorganizationbusinesscountry, type: String
  field :fecha_de_nacimiento, type: String
  field :estado_civil, type: String
  field :campus_al_que_asiste, type: String
  field :es, type: String
  field :nivel_de_discipulado, type: String
  field :nombre_de_discipulador, type: String
  field :grupo_pequeo_al_que_asiste, type: String
  field :ler_de_grupo_pequeo, type: String
  field :ministerios_en_los_que_sirve, type: String
  field :talentos, type: String

  has_many :group_members

  def fullname
    self.firstname + " " + self.lastname
  end

  def add_group(group_id)
    gm = self.group_members.where(group_id: group_id)

    if gm.empty?
      gm = GroupMember.create(group_id: group_id, member_id: self.id)
      gm.save

      return gm
    else
      return nil
    end
  end

  def remove_group(group_id)
    gm = self.group_members.where(group_id: group_id)
    gm_id = gm.first.id
    gm.destroy_all

    return gm_id
  end

  def self.get_members(kind, search)
    search_items = search.split.collect{ |i| Regexp.new (".*" + i + ".*") }

    case kind 
      when 1
        results = Member.or(:firstname.in => search_items).or(:lastname.in => search_items)
      when 2
        results = Member.where(workemailaddress: search)
      when 3
        results = Member.or(:campus_al_que_asiste.in => search_items)
      when 4
        results = Member.or(:nombre_de_discipulador.in => search_items)
      when 5
        results = Member.or(:grupo_pequeo_al_que_asiste.in => search_items)
      when 6
        results = Member.or(:ministerios_en_los_que_sirve.in => search_items)
      when 0
        results = Member.or(:firstname.in => search_items).or(:lastname.in => search_items).or(:workemailaddress.in => search_items).or(:campus_al_que_asiste.in => search_items).or(:nombre_de_discipulador.in => search_items).or(:grupo_pequeo_al_que_asiste.in => search_items).or(:ministerios_en_los_que_sirve.in => search_items)
      else
    end

    return results
  end

end
