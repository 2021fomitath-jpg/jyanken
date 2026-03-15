def win ##じゃんけんに勝った場合
  puts "-------------------------------------------"
  puts "あっちむいて～"
  puts "0(上を指す)1(左を指す)2(右を差す)3(下を指す)"
  loop do
    player_point = gets.to_i
    if player_point > 3 || player_point < 0
      puts "その入力は正しくありません"
      next
    end
    computer_turn = rand(4)
    points = ["上を指す","左を指す","右を差す","下を指す"]
    turns = ["上を向く","左を向く","右を向く","下を向く"]
    puts "ほいっ！"
    puts "-------------------------------------------"
    puts "あいて：#{turns[computer_turn]}"
    puts "あなた：#{points[player_point]}"
    if player_point == computer_turn
      puts "あなたの勝ち"
    else
      puts "もう一度"
    end
    puts "-------------------------------------------"
    break
  end
end

def lose ##じゃんけんに負けた場合
  puts "-------------------------------------------"
  puts "あっちむいて～"
  puts "0(上を向く)1(左を向く)2(右を向く)3(下を向く)"
  loop do
    player_turn = gets.to_i
    if player_turn >3 && player_turn < 0
      puts "その入力は正しくありません"
      next
    end
    computer_point = rand(4)
    points = ["上を指す","左を指す","右を差す","下を指す"]
    turns = ["上を向く","左を向く","右を向く","下を向く"]
    puts "ほいっ！"
    puts "-------------------------------------------"
    puts "あいて：#{turns[computer_point]}"
    puts "あなた：#{points[player_turn]}"
    if computer_point == player_turn
      puts "あなたの負け"
    else
      puts "もう一度"
    end
    puts "-------------------------------------------"
    break
  end
end

def draw ##あいこの場合
  loop do
    puts "-------------------------------------------"
    puts "あいこでっ"
    puts "0(グー)1(チョキ)2(パー)"
    player_sign =gets.to_i
    if player_sign > 2 || player_sign < 0
      puts "その入力は正しくありません"
      next
    end
    computer_sign = rand(3)
    hands = ["グー","チョキ","パー"]
    computer_hands = hands[computer_sign]
    player_hands = hands[player_sign]
    puts "しょっ！"
    puts "-------------------------------------------"
    puts "あいて：#{computer_hands}"
    puts "あなた：#{player_hands}"
    case [player_sign,computer_sign]
    when [0,1],[1,2],[2,0] ##勝ちのパターン
      puts "勝ち"
      win
      break
    when [0,2],[1,0],[2,1] ##負けのパターン
      puts "負け"
      lose
      break
    end
  end
end

loop do
  puts "じゃ～んけんっ"
  puts "0(グー)1(チョキ)2(パー)3(終了)"

  player_sign = gets.to_i
  if player_sign > 3 || player_sign < 0
    puts "その入力は正しくありません"
    next
  end
  if player_sign == 3
    puts "終了します"
    break
  end
  computer_sign = rand(3)
  hands = ["グー","チョキ","パー"]
  computer_hands = hands[computer_sign]
  player_hands = hands[player_sign]
  puts "ぽいっ！"
  puts "-------------------------------------------"
  puts "あいて：#{computer_hands}"
  puts "あなた：#{player_hands}"

  case [player_sign,computer_sign]
  when [0,1],[1,2],[2,0] ##勝ちのパターン
    puts "勝ち"
    win
  when [0,2],[1,0],[2,1] ##負けのパターン
    puts "負け"
    lose
  when [0,0],[1,1],[2,2] ##あいこのパターン
    draw
  end
end