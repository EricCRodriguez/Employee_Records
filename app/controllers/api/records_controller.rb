class Api::RecordsController < ApplicationController

  def index
    @records = Record.all
    render "index.json.jb"
  end

  def create
    @record = Record.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      bio: params[:bio]
    )
    @record.save
    render "show.json.jb"
  end

  def show
    @record = Record.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @record = Record.find_by(id: params[:id])
    @record.first_name = params[:first_name] || @record.first_name
    @record.last_name = params[:last_name] || @record.last_name
    @record.email = params[:email] || @record.email
    @record.bio = params[:bio] || @record.bio
    @record.save
    render "show.json.jb"
  end

  def destroy
    record = Record.find_by(id: params[:id])
    record.destroy
    render json: {message: "Employee Record successfully deleted."}
  end
end

