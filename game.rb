module MathGame
  class Game
    def initialize(p1, p2)
      @a = 0
      @b = 0
      @p1 = player_1
      @p2 = player_2
      @current_player = @p1
    end

    # Each turn consists of a question, answer (user input), display of score and switch of turns
    def turn
      question
      answer
      score
      switch_player
    end

    def winner
      winner = @p1.points == 0 ? @p2 : @p1
      puts "#{winner.name} wins with a score of #{winner.points}/3 "
      puts "----- GAME OVER ----"
      puts "Good day!"
    end

    private
    # Generates two random numbers that are both between 0 and 20
      def random
        @a = 1 + rand(20)
        @b = 1 + rand(20)
      end

      # Generate addition question to the player utilizing the 'random' helper function
      def question
        random
        puts "#{@current_player.name}: What does #{@a} plus #{@b} equal?"
        print "> "
      end

      def answer
        # Converts answer to an integer
        ans = gets.chomp.to_i
        if ans == (@a + @b)
          puts "Yessir!"
        else
          puts "Uh....no."
          @current_player.points -= 1
        end
      end

      #Display current score to the player after each turn
      def score
        puts "P1: #{@p1.points}/3 vs P2:#{@p2.points}/3"
      end

      def switch_player
        @current_player = @current_player == @p1 ? @p2 : @p1
        puts "----- NEW TURN -----"
      end
    end
end
