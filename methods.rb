def output_group_size(number)
    if length == 1
       puts "there is one memeber in the group"
    elsif number == 0
       puts "The grou is empty"
    else 
       puts "There are #{number} members in the group"
end

def menu_input_select 
 puts "Press 1) to add a member to the group"
    puts "Press 2) display a random group"
    puts "Press 3) to select random user"
    puts "Press 4) to quit"
    #take input from user
    menu_input = gets.chomp.to_i
    return menu_input
end