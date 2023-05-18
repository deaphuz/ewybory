class Voter < ApplicationRecord
    validates :VoterName, presence: true
    validates :VoterSurname, presence: true
    validates :VoterBirth, presence: true
    validates :VoterPESEL, presence: true, length: { is: 11 }
    validate :VoterPESEL_length_validation

    has_many :VoterGroups
    has_many :Groups, through: :VoterGroups
    has_many :Votes
    has_many :Elections, through: :Votes

    private
  
    def VoterPESEL_length_validation
      if VoterPESEL.present? && VoterPESEL.length != 11
        errors.add(:VoterPESEL, "musi mieć dokładnie 11 znaków!")
      elsif !body.match?(/\A\d+\z/)
        errors.add(:VoterPESEL, "musi składać się wyłącznie z cyfr!")
      end
    end
end
