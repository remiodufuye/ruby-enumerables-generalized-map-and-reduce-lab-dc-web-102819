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


def reduce(block, special_condition =nil)
  
  if special_condition
    accumulate_total = special_condition
    i = 0
  else
    accum = block[0]
    i = 1
  end
  while i < block.length
    accum = yield(accum, block[i])
    i += 1
  end
  accum
end
    