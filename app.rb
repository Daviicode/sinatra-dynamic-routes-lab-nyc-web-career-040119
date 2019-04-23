require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    key1 = params[:number].to_i
    @result = (key1 * key1).to_s
    "#{@result}"
  end

  get '/say/:number/:phrase' do
  answer = ""
  params[:number].to_i.times do
    answer += params[:phrase]
  end
  answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do
    @operate = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operate
    when "add"
      (@num1 + @num2).to_s
    when "subtract"
      (@num2 - @num1).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s

    else
      "no result"
    end
  end
end
