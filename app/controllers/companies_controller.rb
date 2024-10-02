class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: {message: "companies index"}
  end
end
