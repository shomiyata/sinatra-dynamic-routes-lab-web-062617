require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @input = params[:name]
    "#{@input.split("").reverse.join("")}"
  end

  get '/square/:number' do
    @input = params[:number].to_i
    "#{@input * @input}"
  end

  get '/say/:number/:phrase' do
    @input_1 = params[:number].to_i
    @input_2 = params[:phrase]
    "#{@input_2 * @input_1}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @input_1 = params[:word1]
    @input_2 = params[:word2]
    @input_3 = params[:word3]
    @input_4 = params[:word4]
    @input_5 = params[:word5]
    "#{@input_1} #{@input_2} #{@input_3} #{@input_4} #{@input_5}."
  end

  get '/:operation/:number1/:number2' do
    @input_1 = params[:operation]
    @input_2 = params[:number1].to_i
    @input_3 = params[:number2].to_i
      if @input_1 == "add"
        "#{@input_2 + @input_3}"

      elsif @input_1 == "subtract"
        "#{@input_2 - @input_3}"

      elsif @input_1 == "multiply"
        "#{@input_2 * @input_3}"

      elsif @input_1 == "divide"
        "#{@input_2 / @input_3}"
      end
  end

end
