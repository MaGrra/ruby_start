class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    @hits.to_f / @at_bats
  end

  def on_base_percentage
    (@hits + @walks) / @at_bats.to_f
  end
end

dude = BaseballPlayer.new(3, 6, 5)

p dude.batting_average
p dude.on_base_percentage
