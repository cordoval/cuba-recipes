.PHONY: test

test:
	ruby test/cuba_recipes.rb

solve:
	SOLUTION=1 ruby test/cuba_recipes.rb
