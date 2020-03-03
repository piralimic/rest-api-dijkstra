require 'algo'


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
      include: [:cities, from_ways: [:city_from, :city_to]]
  end

  def result
    @country = Country.find(params[:country_id])
    @cities = @country.cities
    @ways = @country.from_ways

    @start_city_name = @cities.find(params[:city_from]).name
    @end_city_name = @cities.find(params[:city_to]).name

    @gr = Graph.new
    @ways.each do |w|
      @gr.add_edge(@cities.find(w.city_from_id).name, @cities.find(w.city_to_id).name, w.distance)
    end

    @result = @gr.shortest_paths(@start_city_name, @end_city_name)

    @data = {
      id: "99",
      distance: @result[1],
      path: @result[0],
      start_city: @start_city_name,
      end_city: @end_city_name
    }

    render jsonapi: OpenStruct.new(@data), class: {OpenStruct: SerializableResult}
  end

end
