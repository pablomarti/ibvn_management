class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all.paginate(page: params[:page], per_page: 20)
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    @creating_member = true
  end

  # GET /members/1/edit
  def edit
    @groups = Group.all.order('name ASC')
    @group_members = @member.group_members
    @creating_member = false
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @creating_member = true

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    @creating_member = false

    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_group
    @member = Member.find(params[:member_id])
    @group_member = @member.add_group(params[:data][:group_id])
  end

  def remove_group
    @member = Member.find(params[:member_id])
    @group_member_id = @member.remove_group(params[:group_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:salutation, :firstname, :lastname, :organisation, :role, :background, :businessstreet, :businesscity, :businessstate, :businesspostalcode, :businesscountry, :homestreet, :homecity, :homestate, :homepostalcode, :homecountry, :otherstreet, :othercity, :otherstate, :otherpostalcode, :othercountry, :postalstreet, :postalcity, :postalstate, :postalpostalcode, :postalcountry, :businessphone, :businessphone2, :businessfax, :homephone, :homephone2, :mobilephone, :otherphone, :pagerphone, :skypephone, :sipphone, :workemailaddress, :personalemailaddress, :otheremailaddress, :workwebsite, :personalwebsite, :blogwebsite, :otherwebsite, :importantdate1name, :importantdate1, :importantdate2name, :importantdate2, :importantdate3name, :importantdate3, :contacttag1, :contacttag2, :contacttag3, :contacttag4, :contacttag5, :contacttag6, :contacttag7, :contacttag8, :contacttag9, :datecreated, :dateupdated, :linkedorganizationpostalstreet, :linkedorganizationpostalcity, :linkedorganizationpostalstate, :linkedorganizationpostalcode, :linkedorganizationpostalcountry, :linkedorganizationbusinessstreet, :linkedorganizationbusinesscity, :linkedorganizationbusinessstate, :linkedorganizationbusinesspostalcode, :linkedorganizationbusinesscountry, :fecha_de_nacimiento, :estado_civil, :campus_al_que_asiste, :es, :nivel_de_discipulado, :nombre_de_discipulador, :grupo_pequeo_al_que_asiste, :ler_de_grupo_pequeo, :ministerios_en_los_que_sirve, :talentos)
    end
end
