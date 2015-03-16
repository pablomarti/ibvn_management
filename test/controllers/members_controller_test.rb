require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { background: @member.background, blogwebsite: @member.blogwebsite, businesscity: @member.businesscity, businesscountry: @member.businesscountry, businessfax: @member.businessfax, businessphone2: @member.businessphone2, businessphone: @member.businessphone, businesspostalcode: @member.businesspostalcode, businessstate: @member.businessstate, businessstreet: @member.businessstreet, campus_al_que_asiste: @member.campus_al_que_asiste, contacttag1: @member.contacttag1, contacttag2: @member.contacttag2, contacttag3: @member.contacttag3, contacttag4: @member.contacttag4, contacttag5: @member.contacttag5, contacttag6: @member.contacttag6, contacttag7: @member.contacttag7, contacttag8: @member.contacttag8, contacttag9: @member.contacttag9, datecreated: @member.datecreated, dateupdated: @member.dateupdated, es: @member.es, estado_civil: @member.estado_civil, fecha_de_nacimiento: @member.fecha_de_nacimiento, firstname: @member.firstname, grupo_pequeo_al_que_asiste: @member.grupo_pequeo_al_que_asiste, homecity: @member.homecity, homecountry: @member.homecountry, homephone2: @member.homephone2, homephone: @member.homephone, homepostalcode: @member.homepostalcode, homestate: @member.homestate, homestreet: @member.homestreet, importantdate1: @member.importantdate1, importantdate1name: @member.importantdate1name, importantdate2: @member.importantdate2, importantdate2name: @member.importantdate2name, importantdate3: @member.importantdate3, importantdate3name: @member.importantdate3name, lastname: @member.lastname, ler_de_grupo_pequeo: @member.ler_de_grupo_pequeo, linkedorganizationbusinesscity: @member.linkedorganizationbusinesscity, linkedorganizationbusinesscountry: @member.linkedorganizationbusinesscountry, linkedorganizationbusinesspostalcode: @member.linkedorganizationbusinesspostalcode, linkedorganizationbusinessstate: @member.linkedorganizationbusinessstate, linkedorganizationbusinessstreet: @member.linkedorganizationbusinessstreet, linkedorganizationpostalcity: @member.linkedorganizationpostalcity, linkedorganizationpostalcode: @member.linkedorganizationpostalcode, linkedorganizationpostalcountry: @member.linkedorganizationpostalcountry, linkedorganizationpostalstate: @member.linkedorganizationpostalstate, linkedorganizationpostalstreet: @member.linkedorganizationpostalstreet, ministerios_en_los_que_sirve: @member.ministerios_en_los_que_sirve, mobilephone: @member.mobilephone, nivel_de_discipulado: @member.nivel_de_discipulado, nombre_de_discipulador: @member.nombre_de_discipulador, organisation: @member.organisation, othercity: @member.othercity, othercountry: @member.othercountry, otheremailaddress: @member.otheremailaddress, otherphone: @member.otherphone, otherpostalcode: @member.otherpostalcode, otherstate: @member.otherstate, otherstreet: @member.otherstreet, otherwebsite: @member.otherwebsite, pagerphone: @member.pagerphone, personalemailaddress: @member.personalemailaddress, personalwebsite: @member.personalwebsite, postalcity: @member.postalcity, postalcountry: @member.postalcountry, postalpostalcode: @member.postalpostalcode, postalstate: @member.postalstate, postalstreet: @member.postalstreet, role: @member.role, salutation: @member.salutation, sipphone: @member.sipphone, skypephone: @member.skypephone, talentos: @member.talentos, workemailaddress: @member.workemailaddress, workwebsite: @member.workwebsite }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { background: @member.background, blogwebsite: @member.blogwebsite, businesscity: @member.businesscity, businesscountry: @member.businesscountry, businessfax: @member.businessfax, businessphone2: @member.businessphone2, businessphone: @member.businessphone, businesspostalcode: @member.businesspostalcode, businessstate: @member.businessstate, businessstreet: @member.businessstreet, campus_al_que_asiste: @member.campus_al_que_asiste, contacttag1: @member.contacttag1, contacttag2: @member.contacttag2, contacttag3: @member.contacttag3, contacttag4: @member.contacttag4, contacttag5: @member.contacttag5, contacttag6: @member.contacttag6, contacttag7: @member.contacttag7, contacttag8: @member.contacttag8, contacttag9: @member.contacttag9, datecreated: @member.datecreated, dateupdated: @member.dateupdated, es: @member.es, estado_civil: @member.estado_civil, fecha_de_nacimiento: @member.fecha_de_nacimiento, firstname: @member.firstname, grupo_pequeo_al_que_asiste: @member.grupo_pequeo_al_que_asiste, homecity: @member.homecity, homecountry: @member.homecountry, homephone2: @member.homephone2, homephone: @member.homephone, homepostalcode: @member.homepostalcode, homestate: @member.homestate, homestreet: @member.homestreet, importantdate1: @member.importantdate1, importantdate1name: @member.importantdate1name, importantdate2: @member.importantdate2, importantdate2name: @member.importantdate2name, importantdate3: @member.importantdate3, importantdate3name: @member.importantdate3name, lastname: @member.lastname, ler_de_grupo_pequeo: @member.ler_de_grupo_pequeo, linkedorganizationbusinesscity: @member.linkedorganizationbusinesscity, linkedorganizationbusinesscountry: @member.linkedorganizationbusinesscountry, linkedorganizationbusinesspostalcode: @member.linkedorganizationbusinesspostalcode, linkedorganizationbusinessstate: @member.linkedorganizationbusinessstate, linkedorganizationbusinessstreet: @member.linkedorganizationbusinessstreet, linkedorganizationpostalcity: @member.linkedorganizationpostalcity, linkedorganizationpostalcode: @member.linkedorganizationpostalcode, linkedorganizationpostalcountry: @member.linkedorganizationpostalcountry, linkedorganizationpostalstate: @member.linkedorganizationpostalstate, linkedorganizationpostalstreet: @member.linkedorganizationpostalstreet, ministerios_en_los_que_sirve: @member.ministerios_en_los_que_sirve, mobilephone: @member.mobilephone, nivel_de_discipulado: @member.nivel_de_discipulado, nombre_de_discipulador: @member.nombre_de_discipulador, organisation: @member.organisation, othercity: @member.othercity, othercountry: @member.othercountry, otheremailaddress: @member.otheremailaddress, otherphone: @member.otherphone, otherpostalcode: @member.otherpostalcode, otherstate: @member.otherstate, otherstreet: @member.otherstreet, otherwebsite: @member.otherwebsite, pagerphone: @member.pagerphone, personalemailaddress: @member.personalemailaddress, personalwebsite: @member.personalwebsite, postalcity: @member.postalcity, postalcountry: @member.postalcountry, postalpostalcode: @member.postalpostalcode, postalstate: @member.postalstate, postalstreet: @member.postalstreet, role: @member.role, salutation: @member.salutation, sipphone: @member.sipphone, skypephone: @member.skypephone, talentos: @member.talentos, workemailaddress: @member.workemailaddress, workwebsite: @member.workwebsite }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
