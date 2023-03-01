INPUT_CHARS = ('A'..'Z').to_a + ('a'..'z').to_a
OUTPUT_CHARS = ('N'..'Z').to_a + ('A'..'M').to_a + ('n'..'z').to_a + ('a'..'m').to_a
ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

# def rot13(text)
#   text.chars.map do |char|
#     if INPUT_CHARS.include?(char)
#       OUTPUT_CHARS[INPUT_CHARS.index(char)]
#     else
#       char
#     end
#   end.join
# end

# ENCRYPTED_PIONEERS.each do |encrypted_name|
#   puts rot13(encrypted_name)
# end

def rot13(string)
  string.chars.map do |char|
    decipher_char(char)
  end.join
end

def decipher_char(char)
  if ('a'..'m').include?(char.downcase)
    (char.ord + 13).chr
  elsif ('n'..'z').include?(char.downcase)
    (char.ord - 13).chr
  else
    char
  end
end

ENCRYPTED_PIONEERS.each do |name|
  puts rot13(name)
end
