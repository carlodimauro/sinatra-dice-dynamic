require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:no_of_sides") do

  @num_dice = params.fetch("number_of_dice").to_i
  @sides = params.fetch("no_of_sides").to_i
  
  @rolls = []

  @num_dice.times do
    @rolls.push(rand(1..@sides))
  end

  erb(:flexible)

end
