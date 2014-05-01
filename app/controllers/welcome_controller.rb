class WelcomeController < ApplicationController

  def index
    @contact = Contact.all
  end
end
