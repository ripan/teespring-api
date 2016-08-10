require "httparty"
require "teespring/ink"
module Teespring
  class Api
    include HTTParty
    base_uri 'http://challenge.teespring.com'
    attr_accessor :auth_token
    def initialize(auth_token)
      @auth_token = auth_token
      @inks = []
    end

    def inks
      get_inks
    end

    def questions_practice
      get_questions_practice
    end

    def questions_evaluate
      get_questions_evaluate
    end

    private

    def get_questions_practice(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      self.class.get("/v1/question/practice", options)
    end

    def get_questions_evaluate(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      self.class.get("/v1/question/evaluate", options)
    end

    def get_inks(options={})
      options.merge!({:headers => { "Auth-Token" => auth_token}})
      tmp = []
      self.class.get("/v1/inks", options)["inks"].each do |data|
        tmp << Teespring::Ink.new(data["id"], data["color"], data["cost"])
      end
      tmp
    end

  end
end
