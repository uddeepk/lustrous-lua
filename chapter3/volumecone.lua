function volumecone(height, angle)
   radius = height * math.tan(angle)
   return math.pi * radius ^ 2 * (height / 3)
end
