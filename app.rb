require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel.rb')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  @distance = params.fetch("distance")
  @speed = params.fetch("speed")
  package = Parcel.new(@length, @width, @height, @weight, @distance, @speed)
  @display = package.total_cost
  erb(:output)
end
