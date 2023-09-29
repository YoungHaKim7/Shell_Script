run:
		javac -cp src src/Main.java -d out
		java -cp out Main
build:
		javac -cp src src/Main.java -d out
test:
		java -jar ./junit-platform-console-standalone-1.9.3.jar --class-path out --scan-class-path
dn:
		wget wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar
clean:
		rm -rf out *.jar
