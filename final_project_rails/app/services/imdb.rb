class Imdb
  attr_reader :title
  include HTTParty
  # attr_accessor :title
   
  # base_uri "omdbapi.com"
  # def initialize(title)
  #   self.title = title
  # end

  # def title
  #   response = self.class.get("/?t=deadpool&y=&plot=full&r=json")
  #   if response.success?
  #     response
  #   else
  #     raise response.response
  #   end
  # end

  # def call_api
  #   @movie = HTTParty.get "http://www.omdbapi.com/?t=deadpool&y=&plot=full&r=json" 
  # end
  # protected

  # def api_call_initialize

  # end

    base_uri 'omdbapi.com'

    def initialize(params)
      @title = { query: {title: params} }
    end

    def title(title)
      self.class.get("/?t=#{title}&y=&plot=full&r=jsons")
    end



end