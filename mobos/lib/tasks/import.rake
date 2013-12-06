namespace :import do
  
  desc "Mein erster Task"
  task :fehlerliste => :environment do
	puts "Hallo Welt"
  end
  
  desc "Task2"
  task :task2 => :environment do
	puts "mega"
  end
  
  
end