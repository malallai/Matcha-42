  
# NO SESSION
get '/users/login' do
  erb :'users/login'
end

post '/sessions/new' do

end

delete '/sessions/destroy' do

end

get '/users/register' do
  erb :'users/register'
end

post '/users/create' do

end

# SESSION NEEDED

get '/me' do
  user_sign_in?
  erb :'users/me'
end

get '/me/settings' do
  user_sign_in?
  erb :'users/settings'
end

post '/me/update' do
  user_sign_in?
end




