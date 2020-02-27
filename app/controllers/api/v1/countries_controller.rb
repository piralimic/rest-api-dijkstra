class Api::V1::CountriesController < ApplicationController

  # GET /countries
  def index
    @countries = Country.all

    render jsonapi: @countries
  end

  # GET /countries/:id
  def show
    @country = Country.find(params[:id])

    render jsonapi: @country,
      include: [:cities, from_ways: [:city_from, :city_to]],
      fields:
        {
          countries: [:name],
          cities: [:name],
          ways: [:distance, :city_from, :city_to]
        }
  end

end
