<img width=150px src="https://github.com/YoungHaKim7/Cpp_Training/assets/67513038/70b5096e-e16f-48fa-b7c8-0aa776deacee"/>

# Kotlin_ command line compile

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


# Source 

https://kotlinlang.org/docs/jvm-test-using-junit.html#what-s-next

# Result Test


- https://stackoverflow.com/questions/52373469/how-to-launch-junit-5-platform-from-the-command-line-without-maven-gradle/52373592#52373592

- 테스트 설명서 https://junit.org/junit5/docs/current/user-guide/#running-tests-console-launcher

- junit-platform-console-standalone-1.9.3설치 파일 https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/

- Test Kotlin(macOS)

```
kotlinc src/Main.kt -include-runtime -d out/Main.jar

java -jar ./junit-platform-console-standalone-1.9.3.jar --scan-class-path


Thanks for using JUnit! Support its development at https://junit.org/sponsoring

╷
├─ JUnit Jupiter ✔
├─ JUnit Vintage ✔
└─ JUnit Platform Suite ✔

Test run finished after 18 ms
[         3 containers found      ]
[         0 containers skipped    ]
[         3 containers started    ]
[         0 containers aborted    ]
[         3 containers successful ]
[         0 containers failed     ]
[         0 tests found           ]
[         0 tests skipped         ]
[         0 tests started         ]
[         0 tests aborted         ]
[         0 tests successful      ]
[         0 tests failed          ]
  
```


- Test Kotlin(WindowsOS)

```
PS D:\Test_Kotlin_code> kotlinc .\src\Main.kt -include-runtime -d dist/Main.jar
PS D:\Test_Kotlin_code> java -jar .\junit-platform-console-standalone-1.9.3.jar --scan-class-path

Thanks for using JUnit! Support its development at https://junit.org/sponsoring

.
+-- JUnit Jupiter [OK]
+-- JUnit Vintage [OK]
'-- JUnit Platform Suite [OK]

Test run finished after 72 ms
[         3 containers found      ]
[         0 containers skipped    ]
[         3 containers started    ]
[         0 containers aborted    ]
[         3 containers successful ]
[         0 containers failed     ]
[         0 tests found           ]
[         0 tests skipped         ]
[         0 tests started         ]
[         0 tests aborted         ]
[         0 tests successful      ]
[         0 tests failed          ] 
  
```


<hr>

# sdk로 자바랑 gradle 버젼 매니져

https://sdkman.io/

```
// search
sdk list java


// install
sdk install java17.0.7-jbr


// use
sdk use java17.0.7-jbr

```

```
sdk use                                                                                                                      ─╯

No candidate version provided.

Usage: sdk <command> [candidate] [version]
       sdk offline <enable|disable>

   commands:
       install   or i    <candidate> [version] [local-path]
       uninstall or rm   <candidate> <version>
       list      or ls   [candidate]
       use       or u    <candidate> <version>
       config
       default   or d    <candidate> [version]
       home      or h    <candidate> <version>
       env       or e    [init|install|clear]
       current   or c    [candidate]
       upgrade   or ug   [candidate]
       version   or v
       help
       offline           [enable|disable]
       selfupdate        [force]
       update
       flush             [tmp|metadata|version]

   candidate  :  the SDK to install: groovy, scala, grails, gradle, kotlin, etc.
                 use list command for comprehensive list of candidates
                 eg: $ sdk list
   version    :  where optional, defaults to latest stable if not provided
                 eg: $ sdk install groovy
   local-path :  optional path to an existing local installation
                 eg: $ sdk install groovy 2.4.13-local /opt/groovy-2.4.13
```


- kotlin gradle로 프로젝트 만들기 

```
gradle init --type=kotlin-application 
```


<hr>
