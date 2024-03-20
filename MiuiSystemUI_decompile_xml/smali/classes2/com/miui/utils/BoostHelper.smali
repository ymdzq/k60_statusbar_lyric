.class public final Lcom/miui/utils/BoostHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sInjector:Lcom/miui/utils/BoostHelper;


# instance fields
.field public mIsSchedThreadDisabled:Z

.field public mProcessManagerClass:Ljava/lang/Class;

.field public mRenderThreadTid:I

.field public mSchedThreadsMethod:Ljava/lang/reflect/Method;

.field public mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/utils/BoostHelper;

    .line 2
    invoke-direct {v0}, Lcom/miui/utils/BoostHelper;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/utils/BoostHelper;->mIsSchedThreadDisabled:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    .line 9
    iput-object v1, p0, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    .line 11
    iput-object v1, p0, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    .line 13
    iput v0, p0, Lcom/miui/utils/BoostHelper;->mRenderThreadTid:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final boost(IJLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/utils/BoostHelper;->boost(JLandroid/view/View;II)V

    return-void
.end method

.method public final boost(JLandroid/view/View;II)V
    .locals 15

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v0, p5

    .line 2
    iget-boolean v3, v1, Lcom/miui/utils/BoostHelper;->mIsSchedThreadDisabled:Z

    if-eqz v3, :cond_0

    const-string v0, "BoostHelper"

    const-string v1, "boost sched thread is disabled"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_1

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BoostHelper"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "boost: add myTid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_2

    const-string v0, "getRenderThreadId  tid="

    .line 7
    iget v6, v1, Lcom/miui/utils/BoostHelper;->mRenderThreadTid:I

    if-nez v6, :cond_2

    .line 8
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "nGetRenderThreadTid"

    new-array v9, v4, [Ljava/lang/Class;

    .line 10
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v9, "mNativeProxy"

    .line 12
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    new-array v7, v4, [Ljava/lang/Object;

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v8, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "BoostHelper"

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v6, v5

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    iput v6, v1, Lcom/miui/utils/BoostHelper;->mRenderThreadTid:I

    .line 19
    :cond_2
    iget v0, v1, Lcom/miui/utils/BoostHelper;->mRenderThreadTid:I

    if-lez v0, :cond_3

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BoostHelper"

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "boost: add mRenderThreadTid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/miui/utils/BoostHelper;->mRenderThreadTid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    move v7, v5

    .line 24
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 25
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "boostThread sched thread "

    const-string v7, "boostThreadLegacy sched thread "

    .line 26
    :try_start_2
    iget-object v8, v1, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    if-nez v8, :cond_8

    .line 27
    :cond_5
    const-class v8, Lcom/miui/utils/BoostHelper;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 28
    :try_start_3
    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-nez v11, :cond_6

    const-string v11, "miui.process.ProcessManager"

    .line 29
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v12, "beginSchedThreads"

    new-array v13, v9, [Ljava/lang/Class;

    const-string v14, "[I"

    .line 30
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v5

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v4

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v10

    .line 31
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :catch_2
    :try_start_5
    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_6

    .line 33
    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    const-string v12, "beginSchedThreads"

    new-array v13, v10, [Ljava/lang/Class;

    const-string v14, "[I"

    .line 34
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v5

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v4

    .line 35
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    .line 36
    :cond_6
    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-eqz v11, :cond_a

    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_7

    iget-object v11, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    if-nez v11, :cond_7

    goto :goto_3

    .line 37
    :cond_7
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    if-lez v0, :cond_b

    .line 38
    :try_start_6
    iget-object v0, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    iget-object v0, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v6, v1, v5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BoostHelper"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is run,mod="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 42
    :cond_9
    iget-object v0, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    iget-object v0, v1, Lcom/miui/utils/BoostHelper;->mSchedThreadsMethodLegacy:Ljava/lang/reflect/Method;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v6, v1, v5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BoostHelper"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is run,mod="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 45
    :cond_a
    :goto_3
    :try_start_7
    iput-boolean v4, v1, Lcom/miui/utils/BoostHelper;->mIsSchedThreadDisabled:Z

    .line 46
    monitor-exit v8

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method
