class JokeController < ApplicationController
  def index
    @response = Jokes::GetJoke.by_category('knock%20knock').joke
    puts "Joke: #{@response}"
  end
end
