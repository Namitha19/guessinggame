all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "PROJECT TITLE : GUESSING GAME" > README.md
	echo $$(date) >> README.md
	echo "Lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
