#!/bin/bash

rm -rf task task-working
svnadmin create task
svn checkout file://$(pwd)/task task-working
cd task-working

# Initialize structure
svn mkdir trunk branches tags -m "Initial structure" --username huji

# r0
svn switch file://$(pwd)/task/trunk
cp -R commit0/* .
svn add --force .
svn commit -m "r0" --username huji

# r1 (branch1)
svn copy trunk branches/branch1 -m "Create branch1"
svn switch file://$(pwd)/task/branches/branch1
cp -R commit1/* .
svn add --force .
svn commit -m "r1" --username huji

# r2 (main)
svn switch file://$(pwd)/task/trunk
cp -R commit2/* .
svn add --force .
svn commit -m "r2" --username huji

# r3 (branch1)
svn switch file://$(pwd)/task/branches/branch1
cp -R commit3/* .
svn add --force .
svn commit -m "r3" --username huji

# r4 (r4branch)
svn copy file://$(pwd)/task/branches/branch1 file://$(pwd)/task/branches/r4branch -m "Create r4branch"
svn switch file://$(pwd)/task/branches/r4branch
cp -R commit4/* .
svn commit -m "r4" --username huji

# r5 (r5branch)
svn copy file://$(pwd)/task/branches/r4branch file://$(pwd)/task/branches/r5branch -m "Create r5branch"
svn switch file://$(pwd)/task/branches/r5branch
cp -R commit5/* .
svn commit -m "r5" --username romboooo

# r6 (r5branch)
cp -R commit6/* .
svn commit -m "r6" --username huji

# r7 (r7branch)
svn copy file://$(pwd)/task/branches/r5branch file://$(pwd)/task/branches/r7branch -m "Create r7branch"
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit7/* .
svn commit -m "r7" --username huji

# r8 (main)
svn switch file://$(pwd)/task/trunk
cp -R commit8/* .
svn commit -m "r8" --username huji

# r9 (r9branch)
svn copy trunk branches/r9branch -m "Create r9branch"
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit9/* .
svn commit -m "r9" --username huji

# r10 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit10/* .
svn commit -m "r10" --username huji

# r11 (r9branch)
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit11/* .
svn commit -m "r11" --username huji

# r12 (r9branch)
cp -R commit12/* .
svn commit -m "r12" --username huji

# r13 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit13/* .
svn commit -m "r13" --username huji

# r14 (branch1)
svn switch file://$(pwd)/task/branches/branch1
cp -R commit14/* .
svn commit -m "r14" --username huji

# r15 (main)
svn switch file://$(pwd)/task/trunk
cp -R commit15/* .
svn commit -m "r15" --username huji

# r16 (r4branch)
svn switch file://$(pwd)/task/branches/r4branch
cp -R commit16/* .
svn commit -m "r16" --username huji

# r17 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit17/* .
svn commit -m "r17" --username huji

# r18 (r7branch)
cp -R commit18/* .
svn commit -m "r18" --username huji

# r19 (r19branch)
svn copy file://$(pwd)/task/branches/r7branch file://$(pwd)/task/branches/r19branch -m "Create r19branch"
svn switch file://$(pwd)/task/branches/r19branch
cp -R commit19/* .
svn commit -m "r19" --username huji

# r20 (branch1)
svn switch file://$(pwd)/task/branches/branch1
cp -R commit20/* .
svn commit -m "r20" --username huji

# r21 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit21/* .
svn commit -m "r21" --username huji

# r22 (r7branch)
cp -R commit22/* .
svn commit -m "r22" --username romboooo

# r23 (r5branch)
svn switch file://$(pwd)/task/branches/r5branch
cp -R commit23/* .
svn commit -m "r23" --username romboooo

# r24 (r19branch)
svn switch file://$(pwd)/task/branches/r19branch
cp -R commit24/* .
svn commit -m "r24" --username huji

# r25 (branch1 merge)
svn switch file://$(pwd)/task/branches/branch1
svn merge file://$(pwd)/task/branches/r19branch --accept theirs-full
cp -R commit25/* .
svn commit -m "r25" --username huji

# r25 (branch1 merge)
svn switch file://$(pwd)/task/branches/branch1
svn merge file://$(pwd)/task/branches/r19branch --accept theirs-full
cp -R commit25/* .
svn commit -m "r25" --username huji

# r26 (r9branch)
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit26/* .
svn commit -m "r26" --username huji

# r27 (branch1)
svn switch file://$(pwd)/task/branches/branch1
cp -R commit27/* .
svn commit -m "r27" --username huji

# r28 (r9branch)
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit28/* .
svn commit -m "r28" --username huji

# r29 (branch1)
svn switch file://$(pwd)/task/branches/branch1
cp -R commit29/* .
svn commit -m "r29" --username huji

# r30 (r7branch merge)
svn switch file://$(pwd)/task/branches/r7branch
svn merge file://$(pwd)/task/branches/branch1 --accept theirs-full
cp -R commit30/* .
svn commit -m "r30" --username huji

# r31 (r4branch)
svn switch file://$(pwd)/task/branches/r4branch
cp -R commit31/* .
svn commit -m "r31" --username huji

# r32 (r5branch)
svn switch file://$(pwd)/task/branches/r5branch
cp -R commit32/* .
svn commit -m "r32" --username romboooo

# r33 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit33/* .
svn commit -m "r33" --username huji

# r34 (r9branch)
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit34/* .
svn commit -m "r34" --username huji

# r35 (r5branch)
svn switch file://$(pwd)/task/branches/r5branch
cp -R commit35/* .
svn commit -m "r35" --username romboooo

# r36 (r7branch)
svn switch file://$(pwd)/task/branches/r7branch
cp -R commit36/* .
svn commit -m "r36" --username huji

# r37 (r22branch)
svn copy file://$(pwd)/task/branches/r7branch file://$(pwd)/task/branches/r22branch -m "Create r22branch"
svn switch file://$(pwd)/task/branches/r22branch
cp -R commit37/* .
svn commit -m "r37" --username romboooo

# r38 (r5branch)
svn switch file://$(pwd)/task/branches/r5branch
cp -R commit38/* .
svn commit -m "r38" --username romboooo

# r38-merge (r4branch merge)
svn switch file://$(pwd)/task/branches/r4branch
svn merge file://$(pwd)/task/branches/r5branch --accept theirs-full
cp -R commit38/* .  # Assuming commit38 contains merge result
svn commit -m "r38-merge" --username huji

# r39 (r4branch)
svn switch file://$(pwd)/task/branches/r4branch
cp -R commit39/* .
svn commit -m "r39" --username huji

# r40 (r9branch merge)
svn switch file://$(pwd)/task/branches/r9branch
svn merge file://$(pwd)/task/branches/r4branch --accept theirs-full
cp -R commit40/* .
svn commit -m "r40" --username huji

# r41 (main)
svn switch file://$(pwd)/task/trunk
cp -R commit41/* .
svn commit -m "r41" --username huji

# r42 (r9branch)
svn switch file://$(pwd)/task/branches/r9branch
cp -R commit42/* .
svn commit -m "r42" --username huji

# r43 (r7branch merge)
svn switch file://$(pwd)/task/branches/r7branch
svn merge file://$(pwd)/task/branches/r9branch --accept theirs-full
cp -R commit43/* .
svn commit -m "r43" --username huji

# r43-merge (r22branch merge)
svn switch file://$(pwd)/task/branches/r22branch
svn merge file://$(pwd)/task/branches/r7branch --accept theirs-full
svn commit -m "r43-merge" --username huji

# r44 (r22branch)
svn switch file://$(pwd)/task/branches/r22branch
cp -R commit44/* .
svn commit -m "r44" --username romboooo

# r44-merge (main merge)
svn switch file://$(pwd)/task/trunk
svn merge --reintegrate file://$(pwd)/task/branches/r22branch --accept theirs-full
svn commit -m "r44-merge" --username huji

# r45 (main)
svn switch file://$(pwd)/task/trunk
cp -R commit45/* .
svn commit -m "r45" --username huji

# Финал (r45)
svn switch file://$(pwd)/task/trunk
svn merge --reintegrate file://$(pwd)/task/branches/r22branch --accept theirs-full
cp -R commit45/* .
svn commit -m "r45" --username huji