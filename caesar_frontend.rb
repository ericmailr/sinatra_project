require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher'

get '/' do
	params['message'] ? message = params['message'] : message = ""
	params['shift_factor'] ? shift_factor = params['shift_factor'].to_i : shift_factor = 0
	
	code = Caesar_cipher.encrypt(message,shift_factor)
	erb :index, :locals => {:code => code}
end
