rm -rf task

mkdir task
cd task

git init
git config user.name huji


cp ../commit0/* .

git add . 
git commit -m "r0" 

# Второй коммит r1
cp ../commit1/* .

git checkout -b branch1 
git add .
git commit -m "r1"

# Теперь нужно вернуться на первую бранчу

cp ../commit2/* .

git checkout main
git add .
git commit -m "r2"

# Теперь нужно вернуться на вторую бранчу

cp ../commit3/* .

git checkout branch1
git add .
git commit -m "r3"


git checkout -b r4branch
cp ../commit4/* .
git add .
git commit -m "r4"

git config user.name romboooo

git checkout -b r5branch

cp ../commit5/* .

git add .
git commit -m "r5"

git config user.name huji
# Теперь снова с пользователя huji:

cp ../commit6/* .

git add .
git commit -m "r6"


git checkout -b r7branch

cp ../commit7/* .
git add .
git commit -m "r7"


git checkout main

cp ../commit8/* .
git add .
git commit -m "r8"



git checkout -b r9branch
cp ../commit9/* .
git add .
git commit -m "r9"



git checkout r7branch
cp ../commit10/* .
git add .
git commit -m "r10"



git checkout -b r9branch
cp ../commit11/* .
git add .
git commit -m "r11"

cp ../commit12/* .

git add .
git commit -m "r12"

git checkout r7branch
cp ../commit13/* .

git add .
git commit -m "r13"

git checkout branch1
cp ../commit14/* .

git add .
git commit -m "r14"

git checkout main
cp ../commit15/* .

git add .
git commit -m "r15"

git checkout r4branch
cp ../commit16/* .

git add . && git commit -m "r16"

git checkout r7branch
cp ../commit17/* .
git add . && git commit -m "r17"

cp ../commit18/* .
git add . && git commit -m "r18"

git checkout -b r19branch
cp ../commit19/* .

git add . && git commit -m "r19"

git checkout branch1
cp ../commit20/* .

git add . && git commit -m "r20"

git checkout r7branch
cp ../commit21/* .
git add . && git commit -m "r21"

git config user.name romboooo
git checkout r7branch
cp ../commit22/* .

git add . && git commit -m "r22"

git checkout r5branch
cp ../commit23/* .

git add . && git commit -m "r23"

git config user.name huji
git checkout r19branch
cp ../commit24/* .

git add . && git commit -m "r24"

git checkout branch1
git merge r19branch

# code Lab4
# Пофиксить конфликты, удалить следующие строчки

# <pre>
# <code>
# <<<<< HEAD
# previous : 14
# =======
# >>>>>> r19branch
# </code>
# </pre>

# Тут добавляем с коммита

# git add . && git commit -m "r25"

# git checkout r9branch
# git add . && git commit -m "r26"

# git checkout branch1
# git add . && git commit -m "r27"

# git checkout r9branch
# git add . && git commit -m "r28"

# git checkout branch1
# git add . && git commit -m "r29"

# git checkout r7branch
# git merge branch1

# <<<<< HEAD
# ...
# =======
# >>>>>> branch1

# заменяем на

# previous : 21
# previous : 29

# git add . && git commit -m "r30"

# git checkout r4branch
# git add . && git commit -m "r31"

# git config user.name romboooo

# git checkout r5branch
# git add . && git commit -m "r32"

# git config user.name huji

# git checkout r7branch
# git add . && git commit -m "r33"

# git checkout r9branch
# git add . && git commit -m "r34"

# git config user.name romboooo

# git checkout r5branch
# git add . && git commit -m "r35"

# git config user.name huji

# git checkout r7branch
# git add . && git commit -m "r36"

# git config user.name romboooo

# git checkout r22branch
# git add . && git commit -m "r37"

# git checkout r5branch
# git add . && git commit -m "r38"


# git checkout r4branch
# git merge r5
# git add . && git commit -m "r38-merge"

# git config user.name huji

# git checkout r4branch
# git add . && git commit -m "r39"

# git checkout r9branch
# git merge r4branch
# git add . && git commit -m "r40"

# git checkout main
# git add . && git commit -m "r41"

# git checkout r9branch
# git add . && git commit -m "r42"

# git checkout r7branch
# git merge r9branch
# git add . && git commit -m "r43"

# git checkout r22branch
# git merge r7branch
# git add . && git commit -m "r43-merge"

# git config user.name romboooo

# git checkout r22branch
# git add . && git commit -m "r44"

# git checkout main
# git merge r22branch
# git add . && git commit -m "r44-merge"

# git config user.name huji
# git checkout main
# git add . && git commit -m "r45"
