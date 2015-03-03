class ShushersController < ApplicationController
  before_action :authenticate_user!#, except: [:index, :show]
  before_action :find_shusher, only: [ :edit, :update, :show, :destroy ]
  respond_to :html, :js

  def new
    #render nothing:true
    @shusher = Shusher.new
  end

  def create
    #raise params.inspect
    #raise request.class.to_s.inspect
    #raise request.env["omniauth.auth"].inspect

    @shusher = Shusher.new shusher_params
    @shusher.user = current_user

    if @shusher.save
      redirect_to shushers_path, notice: "Shusher created successfully."
    else
      render :new
    end
  end

  def edit
    #find_shusher
  end

  def update
    #find_shusher
    if @shusher.update shusher_params
      redirect_to shusher_path(@shusher), notice: "Shusher updated successfully."
    else
      render :edit
    end
  end

  def show
    #find_shusher, goes to show.html.erb file
  end

  def index
    return get_by_mac_address if params[:mac_address]
    
    # user can only view their own shushers' profiles
    @all_user_shushers = current_user.shushers #Shusher.all
  end

  def destroy
    #find_shusher
    @shusher.destroy
    respond_to do |format|
      format.js { render }  #this is rendering "destroy.js.erb"
      #format.js { render js: "alert('deleted');"} 
      #in JS, do not redirect_to, only use    window.location.reload();
      format.html { redirect_to shushers_path, notice: "Shusher deleted successfully." }
    end
  end

  private

    def find_shusher
      @shusher = Shusher.find params[:id]
    end

    def shusher_params
      params.require(:shusher).permit(:name, :sound_threshold, :shout_msg, :mac_address)
    end

    def get_by_mac_address
      @shusher = Shusher.find_by_mac_address(params[:mac_address])
      #render json: @shusher.to_json
      render "shushers/show.json.jbuilder"
    end
end
