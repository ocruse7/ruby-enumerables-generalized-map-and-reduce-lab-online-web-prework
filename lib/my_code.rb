def map(x)
  new = []
  i = 0
  
  while i < x.length
    new.push( yield( x[i] ) )
    i += 1
  end
  
  new
end

def reduce( x, sp=nil )
  
  if sp
    accum = sp
    i = 0
  else
    accum = x[0]
    i = 1
  end
  
  while i < x.length
    accum = yield( accum, x[i] )
    i += 1
  end
  
  accum
end