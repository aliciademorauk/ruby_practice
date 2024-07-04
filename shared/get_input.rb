def get_input(prompt)
  input = ''
  while input.empty?
    print "#{prompt} "
    input = gets.chomp.strip
    print 'You haven\'t provided any input. Try again: ' if input.empty?
  end
  input
end