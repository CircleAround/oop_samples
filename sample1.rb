# 準備された入力の文字列をカンマ区切りで区切って
# 一行ずつインデクスと一緒に出力する
str = "りんご,みかん,バナナ,いちご"

# ここの処理を作る
str.split(',').each_with_index do |fruit, index|
  puts "#{index}:#{fruit}"
end
