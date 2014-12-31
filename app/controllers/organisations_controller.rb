class OrganisationsController < ApplicationController
  before_action :set_organisation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @organisations = Organisation.all
    respond_with(@organisations)
  end

  def show
    respond_with(@organisation)
  end

  def new
    @organisation = Organisation.new
    respond_with(@organisation)
  end

  def edit
  end

  def create
    @organisation = Organisation.new(organisation_params)
    @organisation.save
    respond_with(@organisation)
  end

  def update
    @organisation.update(organisation_params)
    redirect_to(root_url)
  end

  def destroy
    @organisation.destroy
    respond_with(@organisation)
  end

  private
    def set_organisation
      @organisation = Organisation.find(params[:id])
    end

    def organisation_params
      params.require(:organisation).permit(:shortname, :name, :description, :domain_type_id, :sub_domain_type_id)
    end
end
