class Api::V1::ContactsController < ApplicationController

  # create_contact
  def create_contact
    begin
      service = ContactService.new(contact_params)
      result = service.create_contact
      if result[:success]
        render json: { message: result[:message], info: result[:info]}, status: :created
      else
        render json: { errors: result[:errors]}, status: :unprocessable_entity
      end
    rescue => e
      render json: { errors: "Something went wrong!", message: e.message }, status: :internal_server_error
    end
    
  end

  # privately hold contact_params
  private
  def contact_params
    params.require(:contact).permit(:email, :phone, :message)
  end
end
