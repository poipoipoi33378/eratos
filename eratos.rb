
class Eratos

  def prime_number(max)

    #step1 検索リスト作成
    serch_list = Array.new(max){|i| i+1}
    serch_list = serch_list - [1]#1は先に除外しておく
    prime_number_list = Array.new

    #篩い落とし操作を探索リストの先頭値がtargetの平方根に達するまで行う。
    target = serch_list[0]
    while target <= max**(1/2.0)

      # 探索リストの先頭の数を素数リストに移動し、その倍数を探索リストから篩い落とす
      prime_number_list =prime_number_list + [target]
      x = 1
      while target*x <= max do
        serch_list = serch_list - [target*x]
        x = x + 1
      end
      target = serch_list[0]
    end

    #ステップ 4
    #探索リストに残った数を素数リストに移動して処理終了。
    prime_number_list = prime_number_list + serch_list

    return prime_number_list
  end
  private
end

if ARGV.length == 1 then
  eratos = Eratos.new
  eratos.prime_number(ARGV[0].to_i).each {|x| print x; print", ";}

end