namespace :shark do    
  
  desc "Outputs the complexity of a method for a given file\n" +
       "Usage: rake shark:jump FILE=app/models/person.rb METHOD=Person#to_s"
  task :jump => :environment do 
    file = ENV['FILE']
    if file.nil?
      puts "You must specify a file in order to run this task."
      return
    end
    
    method = ENV['METHOD']
    if method.nil?
      puts "You must specify a method in order to run this task."
      return
    end
    
    MethodShark.trail_for(file, method).each { |dt, c| puts "#{dt.strftime('%D')}, #{c[0]}, #{c[1]}" }

  end
  
  desc "Show the difference between two versions of a given file\n" +
       "Usage: rake shark:diff FILE=app/models/person.rb v1=2a9d78a7 v2=e6d245ef"
  task :diff do 
    file = ENV['FILE']
    if file.nil?
      puts "You must specify a file in order to run this task."
      return
    end
    
    v1 = ENV['v1']
    v2 = ENV['v2']
    if v1.nil? || v2.nil?
      puts "You must specify a two versions in order to run this task."
      return
    end
    
    `git diff #{v1} #{v2} #{file} | gitx`

  end
  
end

# fn = "lib/cos_scraper.rb"
# mn = "CosScraper#import_opportunities"
# MethodShark.trail_for(fn,mn).each { |dt,c| puts "#{dt.strftime('%D')}, #{c[0]}, #{c[1]}" }

# git diff 2a9d78a7acd91a430cfb46e4dd79d82defcfc52d e6d245ef31f0cd780fbd85a84ecfeaec7239f398 app/models/person.rb | gitx
# git diff 2a9d78a7 e6d245ef app/models/person.rb | gitx