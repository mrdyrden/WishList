class UserHobbiesController < ApplicationController
  # GET /user_hobbies
  # GET /user_hobbies.json
  def index
    @user_hobbies = UserHobby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user_hobbies }
    end
  end

  # GET /user_hobbies/1
  # GET /user_hobbies/1.json
  def show
    @user_hobby = UserHobby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user_hobby }
    end
  end

  # GET /user_hobbies/new
  # GET /user_hobbies/new.json
  def new
    @user_hobby = UserHobby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user_hobby }
    end
  end

  # GET /user_hobbies/1/edit
  def edit
    @user_hobby = UserHobby.find(params[:id])
  end

  # POST /user_hobbies
  # POST /user_hobbies.json
  def create
    @user_hobby = UserHobby.new(params[:user_hobby])

    respond_to do |format|
      if @user_hobby.save
        format.html { redirect_to @user_hobby, :notice => 'User hobby was successfully created.' }
        format.json { render :json => @user_hobby, :status => :created, :location => @user_hobby }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user_hobby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_hobbies/1
  # PUT /user_hobbies/1.json
  def update
    @user_hobby = UserHobby.find(params[:id])

    respond_to do |format|
      if @user_hobby.update_attributes(params[:user_hobby])
        format.html { redirect_to @user_hobby, :notice => 'User hobby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user_hobby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_hobbies/1
  # DELETE /user_hobbies/1.json
  def destroy
    @user_hobby = UserHobby.find(params[:id])
    @user_hobby.destroy

    respond_to do |format|
      format.html { redirect_to user_hobbies_url }
      format.json { head :no_content }
    end
  end
end
