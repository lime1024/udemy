require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "contacts.sqlite3"}

class Contact < ActiveRecord::Base
  validates_presence_of :name
end

get '/' do
  @now = Time.now
  @contacts = Contact.all
  erb :index
end

get '/contact_new' do
  @contact = Contact.new
  erb :contact_form
end

post '/contacts' do
  name = params[:name]

  @contact = Contact.new({name: name})
  if @contact.save
    # true
    redirect '/'
  else
    # false
    erb :contact_form
  end
end
