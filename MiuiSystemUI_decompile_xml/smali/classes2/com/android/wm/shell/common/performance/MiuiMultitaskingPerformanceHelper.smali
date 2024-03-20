.class public abstract Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final mBoosterHashMap:Ljava/util/HashMap;

.field public static mCurrentType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 7
    const-string v0, "UNDEFINED_TYPE"

    .line 9
    sput-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mCurrentType:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public static declared-synchronized beginSchedThread(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "/"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    const-string v1, "UNDEFINED_TYPE"

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    const-string v1, "/"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    aget-object v1, v1, v2

    .line 28
    sget-object v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 36
    if-eqz v2, :cond_0

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "/"

    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    const-string v3, ""

    .line 57
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->beginSchedThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
    .line 70
.end method

.method public static declared-synchronized endSchedThread(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "/"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    const-string v1, "/"

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aget-object v1, v1, v2

    .line 20
    sget-object v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    iget-object v3, v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, "/"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 58
    const-string v4, ""

    .line 59
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    iget-object v4, v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 65
    check-cast v4, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 72
    if-nez v3, :cond_0

    .line 73
    iget-boolean v3, v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 75
    if-eqz v3, :cond_1

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "/"

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    const-string v3, ""

    .line 96
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->endSchedThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0

    .line 108
    throw p0
    .line 109
.end method

.method public static getRenderThreadId(I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-string v2, "miui.process.ProcessManager"

    .line 4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v2

    .line 9
    const-string v3, "getRenderThreadTidByPid"

    .line 10
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    aput-object v6, v5, v0

    .line 17
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 23
    new-array v3, v4, [Ljava/lang/Object;

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p0

    .line 31
    aput-object p0, v3, v0

    .line 32
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_0
    if-nez v1, :cond_0

    .line 43
    goto :goto_1

    .line 45
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v0

    .line 51
    :goto_1
    return v0
    .line 52
.end method
