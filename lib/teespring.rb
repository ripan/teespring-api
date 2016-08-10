require "httparty"
module Teespring
  class Api
    include HTTParty
    base_uri 'http://challenge.teespring.com'
    attr_accessor :auth_token
    def initialize(auth_token)
      @auth_token = auth_token
    end

    def inks(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      self.class.get("/v1/inks", options)
    end

    def questions_practice(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      self.class.get("/v1/question/practice", options)
    end

    def questions_evaluate(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      self.class.get("/v1/question/evaluate", options)
    end

  end
end
