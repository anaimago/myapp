class UserTelephonesController < ApplicationController
  before_action :set_user_telephone, only: [:show, :edit, :update, :destroy]

  # GET /user_telephones
  # GET /user_telephones.json
  def index
    @user_telephones = UserTelephone.all
  end

  # GET /user_telephones/1
  # GET /user_telephones/1.json
  def show
  end

  # GET /user_telephones/new
  def new
    @user_telephone = UserTelephone.new
  end

  # GET /user_telephones/1/edit
  def edit
  end

  # POST /user_telephones
  # POST /user_telephones.json
  def create
    @user_telephone = UserTelephone.new(user_telephone_params)

    respond_to do |format|
      if @user_telephone.save
        format.html { redirect_to @user_telephone, notice: 'User telephone was successfully created.' }
        format.json { render :show, status: :created, location: @user_telephone }
      else
        format.html { render :new }
        format.json { render json: @user_telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_telephones/1
  # PATCH/PUT /user_telephones/1.json
  def update
    respond_to do |format|
      if @user_telephone.update(user_telephone_params)
        format.html { redirect_to @user_telephone, notice: 'User telephone was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_telephone }
      else
        format.html { render :edit }
        format.json { render json: @user_telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_telephones/1
  # DELETE /user_telephones/1.json
  def destroy
    @user_telephone.destroy
    respond_to do |format|
      format.html { redirect_to user_telephones_url, notice: 'User telephone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_telephone
      @user_telephone = UserTelephone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_telephone_params
      params.require(:user_telephone).permit(:phone_number, :state, :user_id, :phone_type, :phone_device, :phone_number_short)
    end

  prawnto :prawn => { :top_margin => 75 }

  def show
    @user_telephone = UserTelephone.find(params[:id])
    respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @user_telephone }
    format.pdf { render :layout => false } # Add this line
    
  end
end



end
