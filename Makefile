run:
	java -classpath ./bin/ ConsoleRunner

compile:
	javac -d bin/ -sourcepath src/ -classpath /Library/JUNIT/junit-4.10.jar src/PaperRockScissors.java src/Sitting.java src/ConsoleRunner.java

test:
	java -classpath bin:/Library/JUNIT/junit-4.10.jar TestRunner

cycle-test: compile test
cycle-run: compile run

.PHONY: compile run cycle-test cycle-run
