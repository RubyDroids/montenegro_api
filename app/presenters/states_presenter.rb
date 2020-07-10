require 'ostruct'
require 'json'

class StatesPresenter
  attr_reader :result, :next_page, :previous_page

  def initialize json
    data = JSON.parse(json.to_json, object_class: OpenStruct)
    @result = data
    # @result = {
    #   name: data.name,
    #   country_code: data.country_code,
    #   international_prefix: data.international_prefix,
    #   ioc: data.ioc,
    #   region: data.region,
    #   subregion: data.subregion,
    #   geo: data.geo
    # }
  end
  
  # def initialize json
  #   @games = json['machine-games']
  #
  #   paging = json['paging']
  #   if paging && paging['next']
  #     next_page_query = paging['next'].match(/\?.*/)[0]
  #     @next_page = "/machine_games/search#{next_page_query}"
  #   end
  #
  #   if paging && paging['previous']
  #     previous_page_query = paging['previous'].match(/\?.*/)[0]
  #     @previous_page = "/machine_games/search#{previous_page_query}"
  #   end
  # end

end
