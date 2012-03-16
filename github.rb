module Demo

  class Github < Thor
    
    desc "say_hi", "say hi to github"
    def create_project
      puts "Hi, Github"
    end

  end
end

