<br>```git add . ```
<br>```git commit -m "r0" ```

Второй коммит r1

<br>```git checkout -b branch1```
<br>```git add .```
<br>```git commit -m "r1"```

Теперь нужно вернуться на первую бранчу

<br>```git checkout main```
<br>```git add .```
<br>```git commit -m "r2"```

Теперь нужно вернуться на вторую бранчу

<br>```git checkout branch1```
<br>```git add .```
<br>```git commit -m "r3"```

Теперь нужно переключиться на другого пользователя

<br>```sudo adduser romboooo```
<br>```su romboooo```

И задать ему имя в гите

<br>```git config --global user.name romboooo```

После того как зададим папке .git права, можно продолжать

<br>```chmod -R 777 .git```

с пользователя romboooo:
<br>```git checkout r5branch```
<br>```git add .```
<br>```git commit -m "r5"```

<br>```su huji```
Теперь снова с пользователя huji:

<br>```git add .```
<br>```git commit -m "r6"```

<br>```git checkout -b r7branch```
<br>```git add .```
<br>```git commit -m "r7"```

<br>```git checkout main```
<br>```git add .```
<br>```git commit -m "r8"```

<br>```git checkout -b r9branch```
<br>```git add .```
<br>```git commit -m "r9"```

<br>```git checkout r7branch```
<br>```git add .```
<br>```git commit -m "r10"```

<br>```git checkout -b r9branch```
<br>```git add .```
<br>```git commit -m "r11"```

<br>```git add .```
<br>```git commit -m "r12"```

<br>```git checkout r7branch```
<br>```git add .```
<br>```git commit -m "r13"```

<br>```git checkout branch1```
<br>```git add .```
<br>```git commit -m "r14"```

<br>```git checkout main```
<br>```git add .```
<br>```git commit -m "r15"```

<br>```git checkout r4branch```
<br>```git add . && git commit -m "r16"```

<br>```git checkout r7branch```
<br>```git add . && git commit -m "r17"```

<br>```git add . && git commit -m "r18"```

<br>```git checkout -b r19branch```
<br>```git add . && git commit -m "r19"```

<br>```git checkout branch1```
<br>```git add . && git commit -m "r20"```

<br>```git checkout r7branch```
<br>```git add . && git commit -m "r21"```

<br>```su romboooo```
<br>```git checkout r7branch```
<br>```git add . && git commit -m "r22"```

<br>```git checkout r5branch```
<br>```git add . && git commit -m "r23"```

<br>```su huji```
<br>```git checkout r19branch```

<br>```git add . && git commit -m "r24"```

<br>```git checkout branch1```
<br>```git merge r19branch```
<br>```code Lab4```
Пофиксить конфликты, удалить следующие строчки

<pre>
<code>
<<<<< HEAD
previous : 14
=======
>>>>>> r19branch
</code>
</pre>

Тут добавляем с коммита

<br>```git add . && git commit -m "r25"```

<br>```git checkout r9branch```
<br>```git add . && git commit -m "r26"```

<br>```git checkout branch1```
<br>```git add . && git commit -m "r27"```

<br>```git checkout r9branch```
<br>```git add . && git commit -m "r28"```

<br>```git checkout branch1```
<br>```git add . && git commit -m "r29"```

<br>```git checkout r7branch```
<br>```git merge branch1```

<<<<< HEAD
...
=======
>>>>>> branch1

заменяем на

previous : 21
previous : 29

<br>```git add . && git commit -m "r30"```

<br>```git checkout r4branch```
<br>```git add . && git commit -m "r31"```

<br>```su romboooo```

<br>```git checkout r5branch```
<br>```git add . && git commit -m "r32"```

<br>```su huji```

<br>```git checkout r7branch```
<br>```git add . && git commit -m "r33"```

<br>```git checkout r9branch```
<br>```git add . && git commit -m "r34"```

<br>```su romboooo```

<br>```git checkout r5branch```
<br>```git add . && git commit -m "r35"```

<br>```su huji```

<br>```git checkout r7branch```
<br>```git add . && git commit -m "r36"```

<br>```su romboooo```

<br>```git checkout r22branch```
<br>```git add . && git commit -m "r37"```

<br>```git checkout r5branch```
<br>```git add . && git commit -m "r38"```


<br>```git checkout r4branch```
<br>```git merge r5```
<br>```git add . && git commit -m "r38-merge"```

<br>```su huji```

<br>```git checkout r4branch```
<br>```git add . && git commit -m "r39"```

<br>```git checkout r9branch```
<br>```git merge r4branch```
<br>```git add . && git commit -m "r40"```

<br>```git checkout main```
<br>```git add . && git commit -m "r41"```

<br>```git checkout r9branch```
<br>```git add . && git commit -m "r42"```

<br>```git checkout r7branch```
<br>```git merge r9branch```
<br>```git add . && git commit -m "r43"```

<br>```git checkout r22branch```
<br>```git merge r7branch```
<br>```git add . && git commit -m "r43-merge"```

<br>```su romboooo```

<br>```git checkout r22branch```
<br>```git add . && git commit -m "r44"```

<br>```git checkout main```
<br>```git merge r22branch```
<br>```git add . && git commit -m "r44-merge"```

<br>```su huji```
<br>```git checkout main```
<br>```git add . && git commit -m "r45"```
