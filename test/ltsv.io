#!/usr/bin/env io

doFile("#{System launchPath}/tap.io" interpolate)
doFile("#{System launchPath}/../src/ltsv.io" interpolate)

ltsv := LTSV parse("status:200\thost:127.0.0.1")

ok(ltsv hasKey("status"))
is(ltsv at("status"), "200")

ok(ltsv hasKey("host"))
is(ltsv at("host"), "127.0.0.1")

runTests
