class Card
  attr_reader :value

  FACE_CARD_MAP = {
    Ace: 14,
    King: 13,
    Queen: 12,
    Jack: 11
  }

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def self.map_value(value)
    value.is_a?(String) ? FACE_CARD_MAP[value.to_sym] : value
  end

  def >(target)
    Card.map_value(@value) > Card.map_value(target.value)
  end

  def ==(target)
    Card.map_value(value) == Card.map_value(target.value)
  end

  def name
    "#{value} of #{suit}"
  end
end
