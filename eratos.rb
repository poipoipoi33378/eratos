
class Eratos

  def prime_number(max)

    #step1 検索リスト作成
    serch_list = Array.new(max)
    prime_number_list = Array.new
    serch_list[0,1] = [false,false]
    2.upto(max) do |i|
      serch_list[i] = true
    end

    #step2
    # 探索リストの先頭の数を素数リストに移動し、その倍数を探索リストから篩い落とす
    target = 0
    while target <= max**(1/2.0) do
      2.upto(max) do |i|
        if serch_list[i] == true then
          prime_number_list = prime_number_list + [i]
          serch_list[i] = false
          target = i
          break
        end
      end
      x = 1
      while target*x <= max do
        serch_list[target*x] = false
        x = x + 1
      end
      #ステップ 3
      #上記の篩い落とし操作を探索リストの先頭値がxの平方根に達するまで行う。
    end

    #ステップ 4
    #探索リストに残った数を素数リストに移動して処理終了。
    2.upto(max) do |i|
      if serch_list[i] == true then
        prime_number_list = prime_number_list + [i]
      end
    end

    return prime_number_list
  end
end