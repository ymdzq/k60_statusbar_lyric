.class public final Lcom/xiaomi/onetrack/CrashAnalysis;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

.field public final v:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    sput-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V
    .locals 9

    .line 1
    const-string v0, "CrashAnalysis"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    const-string/jumbo v1, "xcrash.XCrash$InitParameters"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object v1

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    const-string/jumbo v3, "setNativeDumpAllThreads"

    .line 27
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string/jumbo v3, "setLogDir"

    .line 35
    const-string/jumbo v5, "tombstone"

    .line 38
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    invoke-static {v1, v3, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string/jumbo v3, "setNativeDumpMap"

    .line 48
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string/jumbo v3, "setNativeDumpFds"

    .line 54
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string/jumbo v3, "setJavaDumpAllThreads"

    .line 60
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v3, "setAnrRethrow"

    .line 66
    invoke-static {v1, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string/jumbo v3, "xcrash.XCrash"

    .line 72
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 75
    move-result-object v3

    .line 78
    const-string v4, "init"

    .line 79
    const/4 v5, 0x2

    .line 81
    new-array v6, v5, [Ljava/lang/Class;

    .line 82
    const-class v7, Landroid/content/Context;

    .line 84
    aput-object v7, v6, v2

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    move-result-object v7

    .line 91
    const/4 v8, 0x1

    .line 92
    aput-object v7, v6, v8

    .line 93
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    move-result-object v3

    .line 98
    new-array v4, v5, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    move-result-object p1

    .line 104
    aput-object p1, v4, v2

    .line 105
    aput-object v1, v4, v8

    .line 107
    const/4 p1, 0x0

    .line 109
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string p1, "XCrash init success"

    .line 113
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_0

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    const-string v2, "XCrash init failed: "

    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 137
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/m;

    .line 141
    new-instance p1, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 143
    const-string p2, "java"

    .line 145
    invoke-direct {p1, p0, p2}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    .line 147
    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 150
    const-string v0, "anr"

    .line 152
    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 157
    const-string v1, "native"

    .line 159
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    .line 161
    filled-new-array {p1, p2, v0}, [Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 164
    move-result-object p1

    .line 167
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 168
    return-void
    .line 170
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 3
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z
    .locals 28

    .line 4
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "tombstone"

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v2, "CrashAnalysis"

    if-nez v0, :cond_0

    const-string/jumbo v0, "this path does not denote a directory, or if an I/O error occurs."

    .line 7
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v3, Lcom/xiaomi/onetrack/CrashAnalysis$2;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/CrashAnalysis$2;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    add-int/lit8 v4, v3, -0x14

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 11
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 14
    sget-object v3, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    const-string v4, "report_crash_ticket"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v3, v7, v5

    const-wide/16 v9, 0x64

    if-nez v3, :cond_3

    const-string v3, "no ticket data found, return max count"

    .line 15
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v11

    .line 17
    div-long v13, v7, v9

    cmp-long v3, v13, v11

    if-eqz v3, :cond_4

    const-string v3, "no today\'s ticket, return max count"

    .line 18
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-wide/16 v7, 0xa

    goto :goto_3

    :cond_4
    mul-long/2addr v11, v9

    sub-long/2addr v7, v11

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "today\'s remain ticket is "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_f

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 22
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 23
    sget-object v3, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    const-string v13, "last_collect_crash_time"

    invoke-interface {v3, v13, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v3, v14, v11

    const-wide/32 v16, 0x240c8400

    if-lez v3, :cond_5

    sub-long v14, v11, v16

    .line 24
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v9, v5

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    check-cast v1, Ljava/io/File;

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v21, v11, v16

    cmp-long v18, v19, v21

    if-ltz v18, :cond_c

    cmp-long v18, v19, v11

    if-lez v18, :cond_6

    goto/16 :goto_8

    :cond_6
    cmp-long v18, v19, v14

    if-gtz v18, :cond_7

    const-string v1, "found already reported crash file, ignore"

    .line 26
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    cmp-long v18, v7, v5

    if-lez v18, :cond_b

    move-object/from16 v5, p0

    .line 27
    iget-object v6, v5, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    move-object/from16 v18, v0

    array-length v0, v6

    move/from16 v23, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_a

    move/from16 v24, v0

    aget-object v0, v6, v3

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v6

    iget-object v6, v0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    .line 30
    iget-object v0, v0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "find crash file:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v26, 0x1

    sub-long v7, v7, v26

    cmp-long v0, v9, v19

    move/from16 v23, v6

    if-gez v0, :cond_9

    move-wide/from16 v9, v19

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p0

    move/from16 v0, v24

    move-object/from16 v6, v25

    goto :goto_5

    :cond_a
    move/from16 v3, v23

    goto :goto_9

    :cond_b
    :goto_7
    move-object/from16 v18, v0

    goto :goto_9

    :cond_c
    :goto_8
    move-object/from16 v18, v0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "remove obsolete crash files: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    :goto_9
    move-object/from16 v0, v18

    const-wide/16 v5, 0x0

    goto/16 :goto_4

    :cond_d
    move-wide v0, v5

    cmp-long v0, v9, v0

    if-lez v0, :cond_e

    .line 34
    invoke-static {v13, v9, v10}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    :cond_e
    move v1, v3

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_10

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v2

    const-wide/16 v5, 0x64

    mul-long/2addr v2, v5

    add-long/2addr v2, v7

    .line 36
    invoke-static {v4, v2, v3}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    :cond_10
    return v1
.end method

.method public static b(Lcom/xiaomi/onetrack/CrashAnalysis;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 4
    array-length v2, v1

    .line 6
    const/4 v0, 0x0

    .line 7
    move v3, v0

    .line 8
    :goto_0
    if-ge v3, v2, :cond_d

    .line 9
    aget-object v4, v1, v3

    .line 11
    move v5, v0

    .line 13
    :goto_1
    iget-object v6, v4, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    .line 14
    check-cast v6, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v7

    .line 21
    if-ge v5, v7, :cond_c

    .line 22
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v6

    .line 27
    check-cast v6, Ljava/io/File;

    .line 28
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 30
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v7

    .line 41
    const/4 v8, 0x0

    .line 42
    if-nez v7, :cond_0

    .line 43
    const-string v7, "__"

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 50
    array-length v9, v7

    .line 51
    const/4 v10, 0x2

    .line 52
    if-ne v9, v10, :cond_0

    .line 53
    aget-object v7, v7, v0

    .line 55
    const-string v9, "_"

    .line 57
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    move-result-object v7

    .line 62
    array-length v9, v7

    .line 63
    const/4 v11, 0x3

    .line 64
    if-ne v9, v11, :cond_0

    .line 65
    aget-object v7, v7, v10

    .line 67
    move-object v15, v7

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    move-object v15, v8

    .line 71
    :goto_2
    sget-object v7, Lcom/xiaomi/onetrack/util/k;->d:Lcom/xiaomi/onetrack/util/l;

    .line 72
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 74
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 84
    move-result v10

    .line 87
    const v11, 0x19000

    .line 88
    if-eqz v10, :cond_2

    .line 91
    new-instance v10, Ljava/io/BufferedReader;

    .line 93
    new-instance v12, Ljava/io/FileReader;

    .line 95
    invoke-direct {v12, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 97
    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    move-result-object v7

    .line 106
    if-eqz v7, :cond_3

    .line 107
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v7, "\n"

    .line 112
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 117
    move-result v7

    .line 120
    if-le v7, v11, :cond_1

    .line 121
    goto :goto_3

    .line 123
    :cond_2
    move-object v10, v8

    .line 124
    :cond_3
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 125
    move-result v7

    .line 128
    if-le v7, v11, :cond_4

    .line 129
    const v7, 0x18fff

    .line 131
    invoke-virtual {v9, v0, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 134
    move-result-object v8

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :goto_4
    move-object v11, v8

    .line 143
    goto :goto_6

    .line 144
    :catch_0
    move-exception v0

    .line 145
    goto :goto_5

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto/16 :goto_e

    .line 148
    :catch_1
    move-exception v0

    .line 150
    move-object v10, v8

    .line 151
    :goto_5
    :try_start_2
    const-string v7, "FileUtil"

    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v11, "get error:"

    .line 159
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    goto :goto_4

    .line 178
    :goto_6
    invoke-static {v10}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    move-result v0

    .line 185
    if-nez v0, :cond_b

    .line 186
    iget-object v7, v4, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    .line 188
    iget-object v0, v7, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/m;

    .line 190
    if-eqz v0, :cond_b

    .line 192
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    move-result v0

    .line 197
    const/4 v8, -0x1

    .line 198
    const-string v9, " tid=1 "

    .line 199
    const-string v10, "\n\n"

    .line 201
    const-string v12, "anr"

    .line 203
    iget-object v13, v4, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    .line 205
    const-string v14, "CrashAnalysis"

    .line 207
    if-nez v0, :cond_6

    .line 209
    :try_start_3
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 217
    move-result v0

    .line 220
    if-eq v0, v8, :cond_6

    .line 221
    invoke-virtual {v11, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 223
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 226
    move-object/from16 p0, v1

    .line 227
    const/4 v1, -0x1

    .line 229
    if-eq v8, v1, :cond_7

    .line 230
    :try_start_4
    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 239
    goto :goto_9

    .line 240
    :cond_5
    move-object/from16 p0, v1

    .line 241
    const-string v0, "backtrace feature id:\n\t"

    .line 243
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 245
    move-result v0

    .line 248
    const/4 v1, -0x1

    .line 249
    if-eq v0, v1, :cond_7

    .line 250
    add-int/lit8 v0, v0, 0x17

    .line 252
    invoke-virtual {v11, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 254
    move-result v8

    .line 257
    if-eq v8, v1, :cond_7

    .line 258
    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 260
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 263
    goto :goto_9

    .line 264
    :catch_2
    move-exception v0

    .line 265
    goto :goto_7

    .line 266
    :catch_3
    move-exception v0

    .line 267
    move-object/from16 p0, v1

    .line 268
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    const-string v8, "calculateFeatureId error: "

    .line 272
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-static {v0, v1, v14}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 277
    goto :goto_8

    .line 280
    :cond_6
    move-object/from16 p0, v1

    .line 281
    :cond_7
    :goto_8
    const-string v0, ""

    .line 283
    :goto_9
    move-object v1, v0

    .line 285
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result v0

    .line 289
    if-nez v0, :cond_9

    .line 290
    :try_start_5
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v0

    .line 295
    if-eqz v0, :cond_8

    .line 296
    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 298
    move-result v0

    .line 301
    const/4 v8, -0x1

    .line 302
    if-eq v0, v8, :cond_9

    .line 303
    const-string v9, "\n  at "

    .line 305
    invoke-virtual {v11, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 307
    move-result v0

    .line 310
    if-eq v0, v8, :cond_9

    .line 311
    add-int/lit8 v9, v0, 0x6

    .line 313
    const/16 v10, 0xa

    .line 315
    invoke-virtual {v11, v10, v9}, Ljava/lang/String;->indexOf(II)I

    .line 317
    move-result v9

    .line 320
    if-eq v9, v8, :cond_9

    .line 321
    add-int/lit8 v0, v0, 0x2

    .line 323
    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 328
    goto :goto_a

    .line 329
    :cond_8
    const-string v0, "error reason:\n\t"

    .line 330
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 332
    move-result v0

    .line 335
    const/4 v8, -0x1

    .line 336
    if-eq v0, v8, :cond_9

    .line 337
    add-int/lit8 v0, v0, 0xf

    .line 339
    invoke-virtual {v11, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 341
    move-result v9

    .line 344
    if-eq v9, v8, :cond_9

    .line 345
    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 347
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 350
    goto :goto_a

    .line 351
    :catch_4
    move-exception v0

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    .line 353
    const-string v9, "getErrorReasonString error: "

    .line 355
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-static {v0, v8, v14}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 360
    :cond_9
    const-string/jumbo v0, "uncategoried"

    .line 363
    :goto_a
    move-object v12, v0

    .line 366
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 367
    move-result v0

    .line 370
    if-nez v0, :cond_a

    .line 371
    :try_start_6
    const-string v0, "Crash time: \'"

    .line 373
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 375
    move-result v0

    .line 378
    const/4 v8, -0x1

    .line 379
    if-eq v0, v8, :cond_a

    .line 380
    add-int/lit8 v0, v0, 0xd

    .line 382
    const-string v9, "\'\n"

    .line 384
    invoke-virtual {v11, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 386
    move-result v9

    .line 389
    if-eq v9, v8, :cond_a

    .line 390
    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 395
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 396
    const-string/jumbo v9, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 398
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 401
    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 403
    :try_start_7
    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 406
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 410
    move-result-wide v8
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 413
    goto :goto_c

    .line 414
    :catch_5
    move-exception v0

    .line 415
    :try_start_8
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 416
    goto :goto_b

    .line 419
    :catch_6
    move-exception v0

    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    .line 421
    const-string v9, "getCrashTimeStamp error: "

    .line 423
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-static {v0, v8, v14}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 428
    :cond_a
    :goto_b
    const-wide/16 v8, 0x0

    .line 431
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    const-string v10, "fileName: "

    .line 435
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    move-result-object v0

    .line 446
    invoke-static {v14, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    const-string v10, "feature id: "

    .line 452
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v0

    .line 463
    invoke-static {v14, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    .line 467
    const-string v10, "error: "

    .line 469
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    move-result-object v0

    .line 480
    invoke-static {v14, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    const-string v10, "crashTimeStamp: "

    .line 486
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    move-result-object v0

    .line 497
    invoke-static {v14, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v13, v4, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    .line 501
    iget-object v10, v7, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/m;

    .line 503
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 508
    new-instance v7, Lcom/xiaomi/onetrack/api/ai;

    .line 510
    move-wide/from16 v16, v8

    .line 512
    move-object v9, v7

    .line 514
    move-object v8, v14

    .line 515
    move-object v14, v1

    .line 516
    invoke-direct/range {v9 .. v17}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 517
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 520
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 522
    new-instance v0, Ljava/io/File;

    .line 525
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    .line 530
    const-string v0, "remove reported crash file"

    .line 533
    invoke-static {v8, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    goto :goto_d

    .line 538
    :cond_b
    move-object/from16 p0, v1

    .line 539
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 541
    const/4 v0, 0x0

    .line 543
    move-object/from16 v1, p0

    .line 544
    goto/16 :goto_1

    .line 546
    :catchall_1
    move-exception v0

    .line 548
    move-object v8, v10

    .line 549
    :goto_e
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 550
    throw v0

    .line 553
    :cond_c
    move-object/from16 p0, v1

    .line 554
    add-int/lit8 v3, v3, 0x1

    .line 556
    const/4 v0, 0x0

    .line 558
    goto/16 :goto_0

    .line 559
    :cond_d
    return-void
    .line 561
.end method

.method public static calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "\\t"

    .line 2
    const-string v1, ""

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    const-string v0, "\\n"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    array-length v2, p0

    .line 21
    const/16 v3, 0x14

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    if-ge v4, v2, :cond_0

    .line 30
    aget-object v5, p0, v4

    .line 32
    const-string v6, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    .line 34
    const-string v7, "$1XX"

    .line 36
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 41
    const-string v6, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    .line 42
    const-string v7, "XX"

    .line 44
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 49
    const-string v6, "\\d+[B,KB,MB]*"

    .line 50
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 55
    aput-object v5, p0, v4

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 61
    aget-object v1, p0, v3

    .line 63
    const-string v4, "..."

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    aget-object v1, p0, v3

    .line 73
    const-string v4, "more"

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    goto :goto_2

    .line 83
    :cond_1
    aget-object v1, p0, v3

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/16 v1, 0xa

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    return-object p0
    .line 105
.end method
