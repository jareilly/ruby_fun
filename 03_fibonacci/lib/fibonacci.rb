#memoization to record earlier calculations, from a stackexchange post
def fib(n, cache = {})
  raise "fibonacci undefined for negative input" if n < 0

  if n == 0 || n == 1
    return n
  end
  cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
end

# naive slow implementation
def fibonacci(n)
  raise "fibonacci undefined for negative input" if n < 0

  if n < 2
    n
  else
    # recursively Fn = Fn-1 + Fn-2
    if (n > 0)
      fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
