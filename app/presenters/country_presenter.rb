require 'ostruct'
require 'json'

class CountryPresenter
  attr_reader :result

  def initialize json
    # data = JSON.parse(json.data.to_json, object_class: OpenStruct)
    data = json
    @result = {
      name: data.name,
      country_code: data.country_code,
      currency_code: data.currency_code,
      geo: data.geo
    }
  end
end