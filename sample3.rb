# 準備された入力の文字列をカンマまたはコロン区切りで区切って
# HTMLのULタグとして出力する
str = "りんご:みかん,バナナ:いちご"

# ここの処理を作る
puts '<ul>'
str.split(/[,:]/).each do |fruit|
  puts "<li>#{fruit}</li>"
end
puts '</ul>'
