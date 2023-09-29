# Java ```Makefile```

## Version2 Final

```Makefile
run:
		javac -cp src src/Main.java -d out
		java -cp out Main
test:
		javac -d out -cp ./junit-platform-console-standalone-1.9.3.jar ./GreetTest.java
		java -jar ./junit-platform-console-standalone-1.9.3.jar --class-path out --scan-class-path

dn:
		wget wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar

clean:
		rm -rf out *.jar
```


## Version1

- ```make``` or  ```make run```

- ```make clean```


```Makefile

run :
		javac -cp src src/Main.java -d out
		java -cp out Main
Main.class: ./src/Main.java
	  javac -cp src src/Main.java -d out

Main.class: ./out/Main.class
		java -cp out Main

clean:
		rm -rf out
```
