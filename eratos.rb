
class Eratos

  def prime_number(max)

    #step1 検索リスト作成
    set_serch_list(max)
    @prime_number_list = Array.new

    #step2
    # 探索リストの先頭の数を素数リストに移動し、その倍数を探索リストから篩い落とす
    #ステップ 3
    #上記の篩い落とし操作を探索リストの先頭値がxの平方根に達するまで行う。

    target = 0
    while target <= max**(1/2.0) do
      target = shake_off_multiple(max)
    end

    #ステップ 4
    #探索リストに残った数を素数リストに移動して処理終了。
    2.upto(max) do |i|
      if @serch_list[i] == true then
        @prime_number_list = @prime_number_list + [i]
      end
    end

    return @prime_number_list
  end
  private
  @serch_list
  @prime_number_list

  def set_serch_list(max)
    @serch_list = Array.new(max)
    @serch_list[0,1] = [false,false]
    2.upto(max) do |i|
      @serch_list[i] = true
    end
  end

  def shake_off_multiple(max)

    2.upto(max) do |i|
      if @serch_list[i] == true then
        @prime_number_list = @prime_number_list + [i]
        @serch_list[i] = false
        x = 1
        while i*x <= max do
          @serch_list[i*x] = false
          x = x + 1
        end
        return i
      end
    end
  end
end