=begin
def alphabetize(arr)
  # code here
    alphabet= "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
    ascii="@=\\"
=begin
  custom_sort= lambda (a,b) do       #can use -> instead of lambda
    a.split(' ').each_with_index do |char,i|
      return alphabet.index(a[i])<=> alphabet.index
      (b[i]) if a[i] !=b[i]
    end
    return alphabet.index(' ') <=> alphabet.index(b[-1])
  end
  arr.sort(&custom_sort)

  arr.sort_by{|a| a.split("").map{|letter| alphabet.index(letter)}}
end
=end


#phrase="mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton", "ĝusti", "ĝusti vin","ĝuspa"


def alphabetize(phrases)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

      phrases.sort_by {|phrase|
        phrase.chars.map { |c| alphabet.index(c)
                         }
                      }
end
