class House
  VERBS = [
    'belonged to',
    'kept',
    'woke',
    'married',
    'kissed',
    'milked',
    'tossed',
    'worried',
    'killed',
    'ate',
    'lay in'
  ]

  DATA = [
    "the horse and the hound and the horn that #{VERBS[0]}",
    "the farmer sowing his corn that #{VERBS[1]}",
    "the rooster that crowed in the morn that #{VERBS[2]}",
    "the priest all shaven and shorn that #{VERBS[3]}",
    "the man all tattered and torn that #{VERBS[4]}",
    "the maiden all forlorn that #{VERBS[5]}",
    "the cow with the crumpled horn that #{VERBS[6]}",
    "the dog that #{VERBS[7]}",
    "the cat that #{VERBS[8]}",
    "the rat that #{VERBS[9]}",
    "the malt that #{VERBS[10]}",
    "the house that Jack built"
    ]

  def recite
    (1..12).collect { |line_number| line(line_number) }.join("\n")
  end

  def phrase(number)
    lyrics(number).join(" ")
  end

  def lyrics(number)
    data.last(number)
  end

  def data
    @data ||= DATA
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
  def data
    @data ||= DATA[0...-1].shuffle << DATA.last
  end
end

class RandomPirateHouse < House
  def pronoun
    "Thar be"
  end

  def data
    @data ||= DATA[0...-1].shuffle << DATA.last
  end
end

class RandomVerbHouse < House
  VERBS = VERBS.shuffle
  DATA = [
    "the horse and the hound and the horn that #{VERBS[0]}",
    "the farmer sowing his corn that #{VERBS[1]}",
    "the rooster that crowed in the morn that #{VERBS[2]}",
    "the priest all shaven and shorn that #{VERBS[3]}",
    "the man all tattered and torn that #{VERBS[4]}",
    "the maiden all forlorn that #{VERBS[5]}",
    "the cow with the crumpled horn that #{VERBS[6]}",
    "the dog that #{VERBS[7]}",
    "the cat that #{VERBS[8]}",
    "the rat that #{VERBS[9]}",
    "the malt that #{VERBS[10]}",
    "the house that Jack built"
    ]
end
