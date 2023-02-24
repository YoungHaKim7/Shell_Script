# C build.sh

```
echo "#\x21/bin/bash\xa\xagcc -Wall -Wextra -ggdb -o main main.c -lm" >> build.sh
```

```
#!/bin/bash

gcc -Wall -Wextra -ggdb -o main main.c -lm
```

```
chmod +x build.sh

```

# C delete.sh

```
echo "#\x21/bin/bash\xa\xarm -rf main main.dSYM" >> delete.sh
```

```

#!/bin/bash

rm -rf main main.dSYM

```
