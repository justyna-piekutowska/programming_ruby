require_relative 'romanbug'
r = Roman.new(1)
fail "'i' expected" unless r.to_s == "i"
