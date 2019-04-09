class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "¡Hola World"
  end

  def goodbye
    render html: "Goodbye"
  end
end
