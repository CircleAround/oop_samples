# 準備された入力の文字列をカンマまたはコロン区切りで区切って
# HTMLのULタグとして出力する
str = "りんご:みかん,バナナ:いちご"
output_type = :ul
# output_type = :indexed # インデクス付きならこちら

fruits = str.split(/[,:]/)

if output_type == :ul
  puts '<ul>'
  fruits.each_with_index do |fruit, index|
    puts "<li>#{fruit}</li>"
  end
  puts '</ul>'
elsif output_type == :indexed
  fruits.each_with_index do |fruit, index|
    puts "#{index}:#{fruit}"
  end
end
