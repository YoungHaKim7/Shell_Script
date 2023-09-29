# make sample

- ```make``` or ```make run```

```Makefile
test:
		kotlinc src/Main.kt -include-runtime -d out/Main.jar
		java -jar ./junit-platform-console-standalone-1.9.3.jar --scan-class-path

dn:
		wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar

clean:
		rm -rf out *.jar
```

- ```make clean```
  - 삭제 되게 세팅 