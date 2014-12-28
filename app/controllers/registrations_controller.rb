class RegistrationsController < Devise::RegistrationsController

  def new
    build_resource({})
    self.resource.organisation = Organisation.new
    respond_with self.resource
  end

  def create
    super
  end

  private

  def sign_up_params
    allow = [:email, :password, :password_confirmation, :organisation_id, [organisation_attributes: [:id, :name]]]
    params.require(resource_name).permit(allow)
  end

end
