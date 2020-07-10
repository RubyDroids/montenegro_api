# app/controllers/api/v1/regions_controller.rb
module Api
  class V1::RegionsController < ApiController
    before_action :set_country
    include HTTParty
    
    def index
      response = { message: "Index for API regions method" }
      render json: response
    end
  
    def show
      response = { message: "Show for API regions method" }
      render json: response      
    end
    
    def geo
# api_url = "https://nominatim.openstreetmap.org/search?country=montenegro&postalcode=85340&addressdetails=1&format=json"
      
      api_url = "https://nominatim.openstreetmap.org/search?country=Montenegro&format=geojson"
      response = HTTParty.get(api_url)
      render json: response
    end

    # GET
    # /api/v1/regions/country/?id=1
    # /api/v1/regions/country/?code=ME
    # /api/v1/regions/country (or add ?code=COUNTRY_ISO_CODE)
    def country      
      response = CountryPresenter.new(@country)
      render json: response.result
    end
    
    # GET
    # /api/v1/regions/states/?name=StateName
    # /api/v1/regions/states (or add ?name=StateName)
    def states
      response = params[:name].present? ? State.search(params[:name].to_s) : @country.states
      render json: response
    end
    

    # GET
    # /api/v1/regions/validate/:postcode
    def validate
      zipcode = Subdivision.where(postcode: params[:postcode]).take
      
      if zipcode.present?
        response = { status: :ok, message: "Postcode found", result: zipcode }
      else
        response = { status: :not_found, message: "Postcode not found" }
      end
      
      render json: response
    end
        
    private
    
    def set_country
      @country = params[:id].present? ? Country.find(params[:id]) : Country.first
    end
  end
end