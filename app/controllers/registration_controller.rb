class RegistrationController < Devise::RegistrationsController
	def new
		@employee = Employee.new
		@contact = Contact.new
	end
	def create
		@employee = Employee.new
		@employee.email = params[:employee][:email]
		@employee.password = params[:employee][:password]
		@employee.password_confirmation = params[:employee][:password_confirmation]

		@contact = Contact.new
		@contact.mobile = params[:contact][:mobile]
		@contact.address = params[:contact][:address]
		@employee.valid?
		if @employee.errors.blank?

		@employee.save
		@contact.employee = @employee
		@contact.save
		redirect_to dashboard_path
		else
		render :action => "new"
		end
	end	
end
