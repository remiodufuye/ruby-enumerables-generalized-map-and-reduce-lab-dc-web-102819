# Your Code Here

def map(block)
  new = []
  i = 0
  while i < block.length
    new.push(yield(block[i]))
    i += 1
  end
  new
end


def reduce(block, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < block.length
    accum = yield(accum, block[i])
    i += 1
  end
  accum
end
    