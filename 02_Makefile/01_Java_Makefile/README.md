# Java ```Makefile```

## Version2 Final

```Makefile
run:
		javac -cp src src/Main.java -d out
		java -cp out Main
build:
		javac -cp src src/Main.java -d out
test:
		java -jar ./junit-platform-console-standalone-1.9.3.jar --class-path out --scan-class-path
dn:
		wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar
clean:
		rm -rf out *.jar
```


## 자바 최신 파일 컴파일 ```javac --release 21 --enable-preview -cp src src/Main.java -d out```

```Makefile
r:
		javac --release 21 --enable-preview -cp src src/Main.java -d out
		java -cp out Main
clean:
		rm -rf out
```

https://github.com/JosePaumard/JDK20_2023-Loom-Lab

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
