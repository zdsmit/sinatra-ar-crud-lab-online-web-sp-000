
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.new(title:params[:title], content: params[:article_content])
    erb :show
  end

  get 'articles/:id/edit' do
    erb :edit
  end


end
