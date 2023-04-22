class Users::RegistrationsController < ApplicationController

  def new
    binding.break
    super
  end

  def create
    binding.break
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :name,
      :cpf,
      :email,
      :password,
      :password_confirmation,
      address_attributes: [
        :street,
        :number,
        :district,
        :cep,
        :city,
        :state,
        :country
      ]
    )
  end
end
