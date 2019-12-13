class Api::V1::UniStudentsController < ApplicationController
  #protect_from_forgery with: :null_session
  def index
    puts '------------------------------'
    all_students = UniStudent.all
    render json: { status: 'Success', message: 'All Studnets are loaded now', data: all_students }
  end

  def show
    student  = UniStudent.find(params[:id])
    render json: { status: 'Success', message: 'Your Query student', data: student }
  end

  def destroy
    student  = UniStudent.find(params[:id])
    if student.destroy
      render json: { status: 'Success', message: 'Student has been deleted now' }
    else
      render json: { status: 'Not Success', message: 'Student has not been deleted yet', data: student.errors }
    end
  end

  def update
    student  = UniStudent.find(params[:id])
    if student.update_attributes(callout_params)
      render json: { status: 'Success', message: 'Student is updated now', data: student }
    else
      render json: { status: 'Not Success', message: 'Student is not updated yet', data: student.errors }
    end
  end

  def create
    student = UniStudent.new(callout_params)
    if student.save
      render json: { status: 'Success', message: 'Student has been created now', data: student }
    else
      render json: { status: 'Not Success', message: 'Student is not created yet', data: student.errors }
    end
  end

  private
  def callout_params
    params.require(:uni_student).permit(:first_name, :last_name, :gpa, :university)
  end

end
