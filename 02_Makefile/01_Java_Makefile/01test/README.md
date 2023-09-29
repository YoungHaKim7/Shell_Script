# make dn & build & test

```bash
❯ make run
javac -cp src src/Main.java -d out
java -cp out Main
Hello, Hello
❯ make test
java -jar ./junit-platform-console-standalone-1.9.3.jar --class-path out --scan-class-path
Error: Unable to access jarfile ./junit-platform-console-standalone-1.9.3.jar
make: *** [test] Error 1
❯ make dn
wget wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar
--2023-09-29 23:45:51--  http://wget/
Resolving wget (wget)... failed: nodename nor servname provided, or not known.
wget: unable to resolve host address ‘wget’
--2023-09-29 23:45:51--  https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar
Resolving repo1.maven.org (repo1.maven.org)... 151.101.40.209
Connecting to repo1.maven.org (repo1.maven.org)|151.101.40.209|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2614186 (2.5M) [application/java-archive]
Saving to: ‘junit-platform-console-standalone-1.9.3.jar’

junit-platform-console-standalone-1.9.3. 100%[==================================================================================>]   2.49M  3.11MB/s    in 0.8s    

2023-09-29 23:45:53 (3.11 MB/s) - ‘junit-platform-console-standalone-1.9.3.jar’ saved [2614186/2614186]

FINISHED --2023-09-29 23:45:53--
Total wall clock time: 1.4s
Downloaded: 1 files, 2.5M in 0.8s (3.11 MB/s)
make: *** [dn] Error 4
❯ make test
java -jar ./junit-platform-console-standalone-1.9.3.jar --class-path out --scan-class-path

Thanks for using JUnit! Support its development at https://junit.org/sponsoring

╷
├─ JUnit Jupiter ✔
├─ JUnit Vintage ✔
└─ JUnit Platform Suite ✔

Test run finished after 19 ms
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