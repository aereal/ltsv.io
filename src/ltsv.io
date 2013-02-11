LTSV := Object clone do(
  parse := method(ltsv,
    recordsList := ltsv split("\t") map(field,
        field split(":"))
    recordsMap := Map clone
    recordsList foreach(record,
      label := record at(0)
      value := record at(1)
      recordsMap atPut(label, value)
    )
    recordsMap
  )
)
