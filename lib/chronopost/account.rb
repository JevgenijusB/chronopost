# frozen_string_literal: true

module Chronopost
  class Account
    attr_reader :number, :password

    def initialize(number, password)
      @number = number
      @password = password
    end
  end
end
