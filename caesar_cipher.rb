require 'sinatra'
require './cipher_function'

get '/' do
  input = params['string']
  shift = params['shift'].to_i
  cipher = caesar_cipher(input, shift)
  message = output(input, shift, cipher)
  erb :index, :locals => { :input => input, :shift => shift, :cipher => cipher, :message => message}
end

def output(input, shift, cipher)
  message = "Input text: #{input}<br />"
  message += "Shift value: #{shift}<br />"
  message += "Encrypted message: #{cipher}<br />"
  return message
end