NAME_ROOT:=$(patsubst %_template.Rmd,%, $(wildcard *_template.Rmd))

zip: exercise
	zip $(NAME_ROOT).zip $(NAME_ROOT).Rmd *.csv

exercise: $(NAME_ROOT)_template.Rmd
	rmdex $(NAME_ROOT)_template.Rmd $(NAME_ROOT).Rmd

solution: $(NAME_ROOT)_template.Rmd
	rmdex $(NAME_ROOT)_template.Rmd _ $(NAME_ROOT)_solution.Rmd
