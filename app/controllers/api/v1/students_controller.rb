class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render "index.json.jbuilder"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], birthdate: params[:birthdate], university: params[:university], pokemon: params[:pokemon], email: params[:email])
    render "show.json.jbuilder"
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.birthdate = params[:birthdate] || @student.birthdate
    @student.university = params[:university] || @student.university
    @student.pokemon = params[:pokemon] || @student.pokemon
    @student.email = params[:email] || @student.email
    @student.save
    render "show.json.jbuilder"
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    redirect_to "/students.json", status: 303
  end

end