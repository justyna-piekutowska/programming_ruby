class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close()
  end

  def self.my_open(*args)
    reslut = file = File.new(*args)
    if block_given
      result = yield file
      file.close
    end
    result
  end
end

File.open_and_process("testfile", "r") do |file|
  while line = file.gets
    puts line
  end
end
