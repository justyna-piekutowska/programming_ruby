proc1 = -> arg {puts "In proc1 with #{arg}"}
proc2 = -> arg1, arg2 {puts "In proc2 with #{arg1} and #{arg2}"}
proc3 = ->(arg1, arg2) {puts "In proc3 with #{arg1} and #{arg2}"}

proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"
