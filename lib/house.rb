class House
  def recite
    (1..12).collect { |line_number| line(line_number) }.join("\n")
  end

  def phrase(number)
    phrase_array.last(number).join(" ")
  end

  def phrase_array
    [
    'the horse and the hound and the horn that belonged to',
    'the farmer sowing his corn that kept',
    'the rooster that crowed in the morn that woke',
    'the priest all shaven and shorn that married',
    'the man all tattered and torn that kissed',
    'the maiden all forlorn that milked',
    'the cow with the crumpled horn that tossed',
    'the dog that worried',
    'the cat that killed',
    'the rat that ate',
    'the malt that lay in',
    'the house that Jack built'
    ]
  end

  def pronoun
    "This is"
  end

  def line(number)
    "This is #{phrase(number)}.\n"
  end
end
