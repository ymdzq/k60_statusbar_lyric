.class public final Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public volatile canEnd:Z

.field public volatile inBoostTypes:Ljava/util/List;

.field public final longOperations:Ljava/util/List;

.field public final mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mName:Ljava/lang/String;

.field public mObtainRenderIdAgain:Z

.field public volatile mSmartServiceTriggered:Z

.field public final mThreadIds:Ljava/util/List;

.field public volatile mTryEndActionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/os/Looper;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 8
    const-string v0, "UNDEFINED_TYPE"

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;)V

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 26
    const-string v0, "MWS_ACTION_MOVE"

    .line 28
    const-string v1, "FREEFORM_ACTION_MOVE"

    .line 30
    const-string v2, "FREEFORM_ACTION_RESIZE"

    .line 32
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->longOperations:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mThreadIds:Ljava/util/List;

    .line 46
    new-instance p1, Landroid/os/Handler;

    .line 48
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    iput-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 53
    iput-boolean p4, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mObtainRenderIdAgain:Z

    .line 55
    return-void
    .line 57
.end method

.method public static calAllThreadIds()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 27
    iget-object v2, v2, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mThreadIds:Ljava/util/List;

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 43
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/List;

    .line 51
    return-object v0
    .line 53
.end method


# virtual methods
.method public final beginSchedThread(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mObtainRenderIdAgain:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->getRenderThreadId(I)I

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mThreadIds:Ljava/util/List;

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mObtainRenderIdAgain:Z

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 28
    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v0

    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->longOperations:Ljava/util/List;

    .line 47
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 55
    iget-object v3, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 62
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 66
    const-wide/16 v4, 0xfa0

    .line 68
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 73
    check-cast v2, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 81
    check-cast v2, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    move-result v2

    .line 88
    if-nez v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 91
    check-cast v2, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 98
    check-cast v2, Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v2

    .line 105
    if-eq v0, v2, :cond_5

    .line 106
    iput-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 108
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 110
    if-nez v0, :cond_8

    .line 112
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->oneBoosterTriggered()Z

    .line 117
    move-result v2

    .line 120
    if-nez v2, :cond_6

    .line 121
    return-void

    .line 123
    :cond_6
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 124
    move-result v2

    .line 127
    invoke-static {}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->calAllThreadIds()Ljava/util/List;

    .line 128
    move-result-object v3

    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 132
    move-result v4

    .line 135
    if-nez v4, :cond_7

    .line 136
    goto :goto_1

    .line 138
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 139
    move-result-object v3

    .line 142
    new-instance v4, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$$ExternalSyntheticLambda0;

    .line 143
    invoke-direct {v4, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 145
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 148
    move-result-object v3

    .line 151
    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    .line 152
    move-result-object v3

    .line 155
    :try_start_0
    const-string v4, "miui.smartpower.MultiTaskActionManager"

    .line 156
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    move-result-object v4

    .line 161
    new-array v5, v1, [Ljava/lang/Class;

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 164
    move-result-object v5

    .line 167
    new-array v6, v1, [Ljava/lang/Object;

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v5

    .line 173
    const-string v6, "miui.smartpower.MultiTaskActionManager$ActionInfo"

    .line 174
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 176
    move-result-object v6

    .line 179
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 180
    move-result-object v7

    .line 183
    const/4 v8, 0x3

    .line 184
    new-array v9, v8, [Ljava/lang/Class;

    .line 185
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 187
    aput-object v10, v9, v1

    .line 189
    aput-object v10, v9, v0

    .line 191
    const-class v10, [I

    .line 193
    const/4 v11, 0x2

    .line 195
    aput-object v10, v9, v11

    .line 196
    invoke-virtual {v6, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 198
    move-result-object v9

    .line 201
    new-array v8, v8, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 204
    move-result v7

    .line 207
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v7

    .line 211
    aput-object v7, v8, v1

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v2

    .line 217
    aput-object v2, v8, v0

    .line 218
    aput-object v3, v8, v11

    .line 220
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object v2

    .line 225
    const-string v3, "notifyMultiTaskActionStart"

    .line 226
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 228
    move-result-object v6

    .line 231
    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 232
    move-result-object v3

    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 236
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 242
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sput-object p1, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mCurrentType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :goto_1
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mCurrentType:Ljava/lang/String;

    .line 253
    const-string v2, "UNDEFINED_TYPE"

    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v0

    .line 260
    if-eqz v0, :cond_8

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "fail doNotifyMultiTaskActionStart for type="

    .line 265
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object p1

    .line 276
    const-string v0, "MiuiMultitaskingPerformanceHelper"

    .line 277
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 284
    iput-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 286
    iget-object p0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 288
    check-cast p0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 292
    :cond_8
    return-void
    .line 295
.end method

.method public final endSchedThread(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 2
    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    iget-boolean v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 34
    move-result v0

    .line 37
    if-ltz v0, :cond_1

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 42
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 49
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v0

    .line 56
    mul-int/lit16 v0, v0, 0x320

    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 59
    check-cast v2, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    const-string v0, "MWS_ACTION_MOVE"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    const/16 p1, 0x960

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    const/16 p1, 0x64

    .line 80
    :goto_0
    move v0, p1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 85
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 94
    int-to-long v0, v0

    .line 96
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    goto/16 :goto_4

    .line 100
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->oneBoosterTriggered()Z

    .line 102
    move-result p1

    .line 105
    const-string v0, "UNDEFINED_TYPE"

    .line 106
    if-eqz p1, :cond_6

    .line 108
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 110
    move-result p1

    .line 113
    invoke-static {}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->calAllThreadIds()Ljava/util/List;

    .line 114
    move-result-object v2

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 118
    move-result v3

    .line 121
    if-nez v3, :cond_5

    .line 122
    goto :goto_3

    .line 124
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 125
    move-result-object v2

    .line 128
    new-instance v3, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$$ExternalSyntheticLambda0;

    .line 129
    const/4 v4, 0x1

    .line 131
    invoke-direct {v3, v4}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 132
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 135
    move-result-object v2

    .line 138
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 139
    move-result-object v2

    .line 142
    sget-object v3, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mCurrentType:Ljava/lang/String;

    .line 143
    :try_start_0
    const-string v5, "miui.smartpower.MultiTaskActionManager"

    .line 145
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 147
    move-result-object v5

    .line 150
    new-array v6, v1, [Ljava/lang/Class;

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 153
    move-result-object v6

    .line 156
    new-array v7, v1, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object v6

    .line 162
    const-string v7, "miui.smartpower.MultiTaskActionManager$ActionInfo"

    .line 163
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    move-result-object v7

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 169
    move-result-object v3

    .line 172
    const/4 v8, 0x3

    .line 173
    new-array v9, v8, [Ljava/lang/Class;

    .line 174
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 176
    aput-object v10, v9, v1

    .line 178
    aput-object v10, v9, v4

    .line 180
    const-class v10, [I

    .line 182
    const/4 v11, 0x2

    .line 184
    aput-object v10, v9, v11

    .line 185
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 187
    move-result-object v9

    .line 190
    new-array v8, v8, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 193
    move-result v3

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v3

    .line 200
    aput-object v3, v8, v1

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object p1

    .line 206
    aput-object p1, v8, v4

    .line 207
    aput-object v2, v8, v11

    .line 209
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    move-result-object p1

    .line 214
    const-string v2, "notifyMultiTaskActionEnd"

    .line 215
    filled-new-array {v7}, [Ljava/lang/Class;

    .line 217
    move-result-object v3

    .line 220
    invoke-virtual {v5, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 221
    move-result-object v2

    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 225
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 228
    move-result-object p1

    .line 231
    invoke-virtual {v2, v6, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_2

    .line 235
    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_2
    sput-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mCurrentType:Ljava/lang/String;

    .line 240
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mHandler:Landroid/os/Handler;

    .line 242
    iget-object v2, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mEndSchedRunnable:Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster$$ExternalSyntheticLambda0;

    .line 244
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->canEnd:Z

    .line 251
    iput-object v0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mTryEndActionType:Ljava/lang/String;

    .line 253
    iget-object p0, p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->inBoostTypes:Ljava/util/List;

    .line 255
    check-cast p0, Ljava/util/ArrayList;

    .line 257
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_7
    :goto_4
    return-void
    .line 262
.end method

.method public final oneBoosterTriggered()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;

    .line 22
    if-eq v1, p0, :cond_0

    .line 24
    iget-boolean v1, v1, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$Booster;->mSmartServiceTriggered:Z

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    return p0
    .line 33
.end method
