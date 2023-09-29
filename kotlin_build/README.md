# Kotlin_ command linde compile

https://kotlinlang.org/docs/command-line.html#compile-a-library


```
--- out 
--- src
//out 폴더에 다 몰아 넣고 src에서 작업하면 깔끔하다.



// 컴파일하고 실행하기 
kotlinc src/Main.kt -include-runtime -d out/Main.jar

java -jar out/Main.jar



// test 하기 
kotlinc src/Main.kt -include-runtime -d out/Main.jar

java -jar ./junit-platform-console-standalone-1.9.3.jar --scan-class-path

```



```
$ kotlinc main.kt -include-runtime -d main.jar

main.kt:3:10: warning: parameter 'args' is never used
fun main(args: Array<String>) { 



$ java -jar main.jar

[4, 16, 36, 64, 100]
java.util.stream.ReferencePipeline$2@7a81197d
java.util.stream.ReferencePipeline$3@5ca881b5
```

# kotlinglang

https://kotlinlang.org/
