require "rulers"

module BestQuotes
  class Application < Rulers::Application
    alias :super_call :call
    
    def call(env)
      super_call(env)
    end
  end
end