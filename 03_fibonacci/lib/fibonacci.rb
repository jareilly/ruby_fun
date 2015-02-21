def fibonacci(n)
  if n < 2
    n
  else
    # recursively Fn = Fn-1 + Fn-2
    if (n > 0)
      fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
