# 準備された入力の文字列をカンマまたはコロン区切りで区切って
# HTMLのULタグとして出力する
str = "りんご:みかん,バナナ:いちご"

# ここの処理を作る
puts '<ul>'
str.split(/[,:]/).each_with_index do |fruit, index|
  puts "<li>#{fruit}</li>"
end
puts '</ul>'
