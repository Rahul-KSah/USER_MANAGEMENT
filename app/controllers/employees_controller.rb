class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
    # GET /employees with the help of index
    def index
      @employees = Employee.all
    end
  
    # GET /employees/1
    def show
    end
  
    # GET /employees/new
    def new
      @employee = Employee.new
    end
  
    # GET /employees/1/edit
    def edit
    end
  
    # POST /employees
    def create
      @employee = Employee.new(employee_params)
  
      if @employee.save
        redirect_to @employee, notice: 'Employee was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /employees/1
    def update
      if @employee.update(employee_params)
        redirect_to @employee, notice: 'Employee was successfully updated.'
      else
        render :edit
      end
    end
  
    
    # DELETE /employees/:id
    def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, notice: 'Employee was successfully deleted.'
    end
  
    
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_employee
        @employee = Employee.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :contact_number, :address, :pincode, :city, :state, :dob, :date_of_hiring)
      end
  end
  