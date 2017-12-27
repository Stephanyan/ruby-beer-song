class BeerSong
  def verse(number)
    if number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
        "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    elsif number > 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
        "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    elsif number > 0
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(first_beer, last_beer)
    first_beer.downto(last_beer).map do |beer|
      verse(beer)
    end.join("\n")
  end

  def lyrics
    verses(99, 0)
  end
end

class BookKeeping
  VERSION = 2
end
