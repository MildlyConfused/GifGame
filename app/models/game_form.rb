class GameForm < ApplicationRecord
    has_many :games
    has_many :users, through: :games
    has_many :game_questions
    
    def questions
        self.game_questions.collect{|game_question| game_question.question}
    end

    def info

        case self.style
        when "syn"
            { style: "syn",
              name: "The Synonym Game",
              description: "Here's a short blurb about the game!",
              instructions: "Here are the full instrucitons for the game"}
        end
    
    end



end