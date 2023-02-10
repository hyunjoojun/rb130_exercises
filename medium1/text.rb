class TextAnalyzer
  def process
    yield(File.read('sample_test.txt'))
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split(/\n{2,}/).count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines"}
analyzer.process { |text| puts "#{text.split.count} words" }
