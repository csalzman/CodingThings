#Assigns the first argument you apply when opening the file to filename
filename = ARGV.first
#stores a value of >  into prompt. Nice for using later to pretty up the code
prompt = ">> "
#assigns the file open command to txt. We're using the filename variabe defined as an argument when we ran the program
txt = File.open(filename)

#displays the name of the file. Again grabbing from ARGV
puts "Here is your file: #{filename}\n\n"
#displays the text of the file from filename. 
puts txt.read()

#let's us do the whole thing over again with another file, or just use the same
puts "Type the filename again:"
print prompt
#stores the text name in file_again
file_again = STDIN.gets.chomp()

#txt_again will now open the file and let us do things with it
txt_again = File.open(file_again)

#displays the text of file_again
puts txt_again.read()

#close out files we're done with. use the variable that did the opening stuff too?
txt.close
txt_again.close
