group = ["alice", "bob", "charlie", "dylan"]

while true 
    puts "There are #{group.length} members in the group"
    puts "Press 1) to add a member to the group"
    puts "Press 2) display a random group"
    puts "Press 3) to quit"
    #take input from user
    menu_input = gets.chomp.to_i

    case menu_input
    when 1
        puts "Enter name:"
        name = gets.chomp
        group.push(name)
    when 2 
        puts "Random group output:"
        random_order_loop_running = true
        while random_order_loop_running
            copied_group = group.clone 
            while copied_group.length > 0
                random_index = rand(copied_group.length - 1)
                puts copied_group[random_index].capitalize
                copied_group.delete_at(random_index)
            end 
            puts "press 1 to go back"
            puts "press 2 to quit"
            puts "press any other key to regenerate order of random group"
            choice = gets.chomp.to_i 
            if choice == 1 
                random_order_loop_running = false
            elsif choice == 2 
                puts "goodbye"
                exit
            else
                sleep(1)
                system "clear"
            end 
        end 
    when 3
        puts "type yes to quit"
        quit_choice = gets.chomp.downcase
        break if quit_choice == 'yes'
    else
        puts "Invalid input please try again"
    end
    sleep(1)
    system "clear" 
end

puts "Goodbye. Thanks for using"