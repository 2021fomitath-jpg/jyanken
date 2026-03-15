def win
	loop do ##じゃんけんに勝った
		puts "---------------------------"
		puts "あっち向いて～"
		puts "0(上),1(右),2(左),3(下)"
		player_point = gets.to_i
		if player_point >3 || player_point < 0
			puts "その入力は正しくありません"
			next
		end
		computer_point = rand(4)
		points = ["上","右","左","下"]
		puts "---------------------------"
		puts "ほいっ！"
		puts "あなた:#{points[player_point]}を指した"
		puts "あいて:#{points[computer_point]}を向いた"
		
		if player_point == computer_point
		  puts "あなたの勝ち"
			return true
		else
			puts "もう一度"
			return false
		end
	end
end

def lose ##じゃんけんに負けた
	loop do
		puts "---------------------------"
		puts "あっち向いて～"
		puts "0(上),1(右),2(左),3(下)"
		player_point = gets.to_i
		if player_point >3 || player_point < 0
			puts "その入力は正しくありません"
			next
		end
		computer_point = rand(4)
		points = ["上","右","左","下"]
		puts "---------------------------"
		puts "ほいっ！"
		puts "あなた:#{points[player_point]}を向いた"
		puts "あいて:#{points[computer_point]}を指した"

		if player_point == computer_point
		  puts "あなたの負け"
			return true
		else
			puts "もう一度"
			return false
		end
	end
end

def draw ##あいこ
	loop do
		puts "---------------------------"
		puts "あ～いこで"
		puts "0(グー),1(チョキ),2(パー)"
		player_number = gets.to_i
		if player_number > 2 || player_number < 0
			puts "その入力は正しくありません"
			next
		end
		computer_number = rand(3)
		hands = ["グー","チョキ","パー"]
		puts "---------------------------"
		puts "しょっ！"
		puts "あなた:#{hands[player_number]}"
		puts "あいて:#{hands[computer_number]}"

		case [player_number,computer_number]
			when[0,1],[1,2],[2,0]
				puts "勝ち"
				return win
			when[0,2],[1,0],[2,1]
				puts "負け"
				return lose
			end
	end
end

def janken ##じゃんけん
	loop do
		puts "---------------------------"
		puts "じゃんけんっ..."
		puts "0(グー),1(チョキ),2(パー),3(終了する)"
		player_number = gets.to_i
		if player_number > 3 || player_number < 0
			puts "その入力は正しくありません"
			next
		end
		if player_number == 3
				puts "終了します"
				break
		end
		computer_number = rand(3)
		hands = ["グー","チョキ","パー"]
		puts "---------------------------"
		puts "ぽいっ！"
		puts "あなた:#{hands[player_number]}"
		puts "あいて:#{hands[computer_number]}"

		case [player_number,computer_number]
			when[0,1],[1,2],[2,0]
				puts "勝ち"
				return if win
			when[0,2],[1,0],[2,1]
				puts "負け"
				return if lose
			else
				return if draw
		  end
	end
end

janken
