class EmployeesController < ApplicationController
  before_action :load_employee, only: [:update, :destroy, :show]

  def index
    @employees = employee.all
  end

  def show
  end

  def create
    @employee = employee.new
    @employee.attributes = employee_params
    save_employee
  end

  def update
    @employee.attributes = employee_params
    save_employee!
  end

  def destroy
    @employee.destroy!    
  end

  private

  def load_employee
    @employee = employee.find(params[:id])
   end
  

  def save_employee
    @employee.save
  end

  def employee_params
    return {} unless params.has_key?(:employee)
    params.require(:employee).permit(:name)
   end
  end
