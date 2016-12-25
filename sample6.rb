#########################################
# 規格化された出力方法の集まり
# outputter.output(fruits)
# で呼べることが規格（仕様）

# ULタグで出力する出力クラス（設計図）
class UlOutputter
  def output(fruits)
    puts '<ul>'
    fruits.each do |fruit|
      puts "<li>#{fruit}</li>"
    end
    puts '</ul>'
  end
end

# インデクス付きテキストで出力する出力クラス（設計図）
class IndexedOutputter
  def output(fruits)
    fruits.each_with_index do |fruit, index|
      puts "#{index}:#{fruit}"
    end
  end
end

#########################################
# strを分解して、outputterの表現で出力する関数
# 具体的な出力方法はoutputterが知っていて、処理をお願いする。
# だから、出力方法が変わるだけなら変更はされない。
def convert(str, outputter)
  fruits = str.split(/[,:]/) # 入力の文字列を配列に分解する処理
  outputter.output(fruits) # outputterにfruits配列を渡すと素敵に飾って出力してくれる
end

#########################################
# 準備された入力の文字列をカンマまたはコロン区切りで区切って
# HTMLのULタグとして出力する
str = "りんご:みかん,バナナ:いちご"
outputter = UlOutputter.new # 出力の仕方の設計図を元に部品を作っている
# outputter = IndexedOutputter.new # 出し方を変えるならこちらもあり

# 処理を呼び出す
convert(str, outputter)
