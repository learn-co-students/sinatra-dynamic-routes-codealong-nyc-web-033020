require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:n1/:n2" do
    @n1 = params[:n1]
    @n2 = params[:n2]
    res = @n1.to_i * @n2.to_i
    res.to_s
  end
end
