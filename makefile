.PHONY: test

test:
		cutest test/**/*.rb

solve:
		SOLUTION=1 cutest test/**/*.rb
