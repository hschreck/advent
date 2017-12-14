input = 368078

limiter = Math.sqrt(input).ceil

if limiter.even?
    limiter += 1
end


limit = limiter ** 2

puts limit

rewind = limit - input

puts "Rewinding #{rewind}..."
midpoints = []

midpoints[0] = limit - ((limiter-1)/2)
#puts midpoints[0]

midpoints[1] = midpoints[0] - (limiter-1)
midpoints[2] = midpoints[1] - (limiter-1)
midpoints[3] = midpoints[2] - (limiter-1)

#puts midpoints

puts midpoints.map { |x| (x-input).abs}.min + (limiter-1)/2
