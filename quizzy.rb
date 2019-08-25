class Team
  attr_accessor :team
  def initialize(team)
    @team = team
  end
end

teams = Team.new(35)

p teams.team

@team = 67
p @team
