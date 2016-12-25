# 準備された入力の文字列をカンマまたはコロン区切りで区切って
# HTMLのULタグとして出力する
str = "りんご:みかん,バナナ:いちご"

# ULタグで出力する
def output_ul(fruits)
  puts '<ul>'
  fruits.each_with_index do |fruit, index|
    puts "<li>#{fruit}</li>"
  end
  puts '</ul>'
end

# インデクス付きテキストで出力する
def output_with_index(fruits)
  fruits.each_with_index do |fruit, index|
    puts "#{index}:#{fruit}"
  end
end

fruits = str.split(/[,:]/) # 入力の文字列を配列に分解する処理
output_ul(fruits) # 分解した配列を出力する処理
# output_with_index fruits
