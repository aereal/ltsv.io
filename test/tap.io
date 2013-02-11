assertions := list()
diag := method(comment,
  "# #{comment}" interpolate println
)
ok := method(expectation,
  assertions append(list(expectation isTrue, expectation asString))
)
ng := method(expectation,
  assertions append(list(expectation isFalse, expectation asString))
)
is := method(lhs, rhs,
  assertions append(list(lhs == rhs, "is #{rhs}" interpolate))
)
isnt := method(lhs, rhs,
  assertions append(list(lhs != rhs, "is not #{rhs}" interpolate))
)
runTests := method(
  "1..#{assertions size}" interpolate println
  assertions foreach(number, assertion,
    expectation := assertion at(0)
    description := assertion at(1)

    if(expectation isTrue,
      "ok # #{number + 1} #{description}",
      "not ok # #{number + 1} #{description}"
    ) interpolate println
  )
)
