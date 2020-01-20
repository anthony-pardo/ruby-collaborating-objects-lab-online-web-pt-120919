class MP3Importer 
  attr_accessor :path
  @@files = []
  def initialize(file_path)
    @path = file_path
  end
  
  def files 
    files = Dir[@path]
    files.each do |file|
      @@files << file
    end
    @@files
  end
end