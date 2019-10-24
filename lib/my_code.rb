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


def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end
    