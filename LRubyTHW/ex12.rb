require 'open-uri'

open("http://www.biblegateway.com") do |f|
  f.each_line {|line| p line}
  puts "\n\n\n"
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.content_encoding
  puts f.last_modified
end

#include just includes the the methods. Require runs the entire other file/thing
#you can find where ruby looks for required things by using ruby -e 'puts $:'
