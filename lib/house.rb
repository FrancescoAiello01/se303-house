class House
  DATA = [
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
  def initialize
    @all_lyrics = [
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

  def recite
    (1..12).collect { |line_number| line(line_number) }.join("\n")
  end

  def phrase(number)
    lyrics(number).join(" ")
  end

  def lyrics(number)
    all_lyrics.last(number)
  end

  def all_lyrics
    @all_lyrics
  end

  def pronoun
    "This is"
  end

  def line(number)
    "#{pronoun} #{phrase(number)}.\n"
  end
end

class PirateHouse < House
  def pronoun
    "Thar be"
  end
end

class RandomHouse < House
  def all_lyrics

  end
end
