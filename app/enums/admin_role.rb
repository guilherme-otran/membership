class AdminRole < EnumerateIt::Base
  associate_values(
    :admin,
    :limited
  )
end
