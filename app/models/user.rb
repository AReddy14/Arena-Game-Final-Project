# rails-api new . blogAPILab --database=postgresql -T, basic command line to create a new rails API in terminal
class User < ActiveRecord::Base
	has_many :characters
end