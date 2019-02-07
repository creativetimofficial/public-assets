def main
  Dir["**/*.{jpg,png,jpeg}"].each do |file|
    if !File.directory? file

      system("convert #{file} -strip #{file}")
      puts file
    end
  end

end

main
