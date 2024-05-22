.class public final Lcom/android/wm/shell/common/TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mMainHandler:Landroid/os/Handler;

.field public final mTaskStackListeners:Ljava/util/List;

.field public final mTmpListeners:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/app/IActivityTaskManager;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    :try_start_1
    iget-object p1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 23
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string p1, "TaskStackListenerImpl"

    .line 30
    const-string v0, "Failed to call registerTaskStackListener"

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
    .line 40
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    goto/16 :goto_19

    .line 12
    :pswitch_0
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 21
    sub-int/2addr v1, v3

    .line 22
    :goto_0
    if-ltz v1, :cond_7

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 33
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 35
    invoke-interface {v2, v4}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onLockTaskModeChanged(I)V

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 40
    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 47
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v2

    .line 54
    sub-int/2addr v2, v3

    .line 55
    :goto_1
    if-ltz v2, :cond_7

    .line 56
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 58
    check-cast v4, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 65
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 66
    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 71
    goto :goto_1

    .line 73
    :pswitch_2
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    move-result v1

    .line 81
    sub-int/2addr v1, v3

    .line 82
    :goto_2
    if-ltz v1, :cond_7

    .line 83
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 85
    check-cast v2, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 93
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 95
    invoke-interface {v2, v4}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityRotation(I)V

    .line 97
    add-int/lit8 v1, v1, -0x1

    .line 100
    goto :goto_2

    .line 102
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 105
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 107
    check-cast v2, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v2

    .line 114
    sub-int/2addr v2, v3

    .line 115
    :goto_3
    if-ltz v2, :cond_7

    .line 116
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 118
    check-cast v4, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v4

    .line 125
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 126
    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 128
    add-int/lit8 v2, v2, -0x1

    .line 131
    goto :goto_3

    .line 133
    :pswitch_4
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 134
    check-cast v1, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result v1

    .line 141
    sub-int/2addr v1, v3

    .line 142
    :goto_4
    if-ltz v1, :cond_7

    .line 143
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 145
    check-cast v4, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 152
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 153
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 155
    if-eqz v5, :cond_0

    .line 157
    move v5, v3

    .line 159
    goto :goto_5

    .line 160
    :cond_0
    move v5, v2

    .line 161
    :goto_5
    invoke-interface {v4, v5}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onRecentTaskListFrozenChanged(Z)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    .line 165
    goto :goto_4

    .line 167
    :pswitch_5
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 168
    check-cast v1, Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v1

    .line 175
    sub-int/2addr v1, v3

    .line 176
    :goto_6
    if-ltz v1, :cond_7

    .line 177
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 179
    check-cast v2, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object v2

    .line 186
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 187
    invoke-interface {v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onRecentTaskListUpdated()V

    .line 189
    add-int/lit8 v1, v1, -0x1

    .line 192
    goto :goto_6

    .line 194
    :pswitch_6
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 195
    check-cast v1, Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result v1

    .line 202
    sub-int/2addr v1, v3

    .line 203
    :goto_7
    if-ltz v1, :cond_7

    .line 204
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 206
    check-cast v2, Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v2

    .line 213
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 214
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 216
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 218
    invoke-interface {v2, v4, v5}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskDisplayChanged(II)V

    .line 220
    add-int/lit8 v1, v1, -0x1

    .line 223
    goto :goto_7

    .line 225
    :pswitch_7
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 226
    check-cast v1, Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 230
    move-result v1

    .line 233
    sub-int/2addr v1, v3

    .line 234
    :goto_8
    if-ltz v1, :cond_7

    .line 235
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 237
    check-cast v2, Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object v2

    .line 244
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 245
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    invoke-interface {v2, v4}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 251
    add-int/lit8 v1, v1, -0x1

    .line 254
    goto :goto_8

    .line 256
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 259
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 261
    check-cast v2, Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 265
    move-result v2

    .line 268
    sub-int/2addr v2, v3

    .line 269
    :goto_9
    if-ltz v2, :cond_7

    .line 270
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 272
    check-cast v4, Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v4

    .line 279
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 280
    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 282
    add-int/lit8 v2, v2, -0x1

    .line 285
    goto :goto_9

    .line 287
    :pswitch_9
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 288
    check-cast v1, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    move-result v1

    .line 295
    sub-int/2addr v1, v3

    .line 296
    :goto_a
    if-ltz v1, :cond_7

    .line 297
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 299
    check-cast v2, Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v2

    .line 306
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 307
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 309
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 311
    invoke-interface {v2, v4, v5}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityRequestedOrientationChanged(II)V

    .line 313
    add-int/lit8 v1, v1, -0x1

    .line 316
    goto :goto_a

    .line 318
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 321
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 323
    check-cast v2, Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 327
    move-result v2

    .line 330
    sub-int/2addr v2, v3

    .line 331
    :goto_b
    if-ltz v2, :cond_7

    .line 332
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 334
    check-cast v4, Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    move-result-object v4

    .line 341
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 342
    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 344
    add-int/lit8 v2, v2, -0x1

    .line 347
    goto :goto_b

    .line 349
    :pswitch_b
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 350
    check-cast v1, Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 354
    move-result v1

    .line 357
    sub-int/2addr v1, v3

    .line 358
    :goto_c
    if-ltz v1, :cond_7

    .line 359
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 361
    check-cast v2, Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    move-result-object v2

    .line 368
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 369
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 371
    invoke-interface {v2, v4}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskRemoved(I)V

    .line 373
    add-int/lit8 v1, v1, -0x1

    .line 376
    goto :goto_c

    .line 378
    :pswitch_c
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 379
    check-cast v1, Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 383
    move-result v1

    .line 386
    sub-int/2addr v1, v3

    .line 387
    :goto_d
    if-ltz v1, :cond_7

    .line 388
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 390
    check-cast v2, Ljava/util/ArrayList;

    .line 392
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    move-result-object v2

    .line 397
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 398
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 400
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    check-cast v5, Landroid/content/ComponentName;

    .line 404
    invoke-interface {v2, v4, v5}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 406
    add-int/lit8 v1, v1, -0x1

    .line 409
    goto :goto_d

    .line 411
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 414
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 416
    check-cast v2, Ljava/util/ArrayList;

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 420
    move-result v2

    .line 423
    sub-int/2addr v2, v3

    .line 424
    :goto_e
    if-ltz v2, :cond_7

    .line 425
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 427
    check-cast v4, Ljava/util/ArrayList;

    .line 429
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 431
    move-result-object v4

    .line 434
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 435
    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 437
    add-int/lit8 v2, v2, -0x1

    .line 440
    goto :goto_e

    .line 442
    :pswitch_e
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 443
    check-cast v1, Ljava/util/ArrayList;

    .line 445
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 447
    move-result v1

    .line 450
    sub-int/2addr v1, v3

    .line 451
    :goto_f
    if-ltz v1, :cond_7

    .line 452
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 454
    check-cast v2, Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    move-result-object v2

    .line 461
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 462
    invoke-interface {v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityUnpinned()V

    .line 464
    add-int/lit8 v1, v1, -0x1

    .line 467
    goto :goto_f

    .line 469
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 472
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 474
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 476
    check-cast v4, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 480
    move-result v4

    .line 483
    sub-int/2addr v4, v3

    .line 484
    :goto_10
    if-ltz v4, :cond_7

    .line 485
    iget-object v5, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 487
    check-cast v5, Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    move-result-object v5

    .line 494
    check-cast v5, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 495
    invoke-interface {v5, v1, v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 497
    add-int/lit8 v4, v4, -0x1

    .line 500
    goto :goto_10

    .line 502
    :pswitch_10
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 503
    check-cast v1, Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 507
    move-result v1

    .line 510
    sub-int/2addr v1, v3

    .line 511
    :goto_11
    if-ltz v1, :cond_7

    .line 512
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 514
    check-cast v2, Ljava/util/ArrayList;

    .line 516
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v2

    .line 521
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 522
    invoke-interface {v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityDismissingDockedStack()V

    .line 524
    add-int/lit8 v1, v1, -0x1

    .line 527
    goto :goto_11

    .line 529
    :pswitch_11
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 530
    check-cast v1, Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 534
    move-result v1

    .line 537
    sub-int/2addr v1, v3

    .line 538
    :goto_12
    if-ltz v1, :cond_7

    .line 539
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 541
    check-cast v2, Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 545
    move-result-object v2

    .line 548
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 549
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    check-cast v4, Ljava/lang/String;

    .line 553
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 555
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 557
    invoke-interface {v2, v4, v5, v6}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 559
    add-int/lit8 v1, v1, -0x1

    .line 562
    goto :goto_12

    .line 564
    :pswitch_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 567
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 569
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 573
    if-eqz v5, :cond_1

    .line 575
    move v5, v3

    .line 577
    goto :goto_13

    .line 578
    :cond_1
    move v5, v2

    .line 579
    :goto_13
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 580
    if-eqz v6, :cond_2

    .line 582
    move v6, v3

    .line 584
    goto :goto_14

    .line 585
    :cond_2
    move v6, v2

    .line 586
    :goto_14
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 587
    if-eqz v1, :cond_3

    .line 589
    move v2, v3

    .line 591
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 592
    check-cast v1, Ljava/util/ArrayList;

    .line 594
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 596
    move-result v1

    .line 599
    sub-int/2addr v1, v3

    .line 600
    :goto_15
    if-ltz v1, :cond_7

    .line 601
    iget-object v7, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 603
    check-cast v7, Ljava/util/ArrayList;

    .line 605
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    move-result-object v7

    .line 610
    check-cast v7, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 611
    invoke-interface {v7, v4, v5, v6, v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 613
    add-int/lit8 v1, v1, -0x1

    .line 616
    goto :goto_15

    .line 618
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 621
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 623
    check-cast v2, Ljava/util/ArrayList;

    .line 625
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 627
    move-result v2

    .line 630
    sub-int/2addr v2, v3

    .line 631
    :goto_16
    if-ltz v2, :cond_7

    .line 632
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 634
    check-cast v4, Ljava/util/ArrayList;

    .line 636
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    move-result-object v4

    .line 641
    check-cast v4, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 642
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 644
    check-cast v5, Ljava/lang/String;

    .line 646
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 648
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 650
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 652
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityPinned(Ljava/lang/String;III)V

    .line 654
    add-int/lit8 v2, v2, -0x1

    .line 657
    goto :goto_16

    .line 659
    :pswitch_14
    const-string v1, "onTaskSnapshotChanged"

    .line 660
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 662
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    check-cast v1, Landroid/window/TaskSnapshot;

    .line 667
    iget-object v4, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 669
    check-cast v4, Ljava/util/ArrayList;

    .line 671
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 673
    move-result v4

    .line 676
    sub-int/2addr v4, v3

    .line 677
    :goto_17
    if-ltz v4, :cond_4

    .line 678
    iget-object v5, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 680
    check-cast v5, Ljava/util/ArrayList;

    .line 682
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 684
    move-result-object v5

    .line 687
    check-cast v5, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 688
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 690
    invoke-interface {v5, v6, v1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)Z

    .line 692
    move-result v5

    .line 695
    or-int/2addr v2, v5

    .line 696
    add-int/lit8 v4, v4, -0x1

    .line 697
    goto :goto_17

    .line 699
    :cond_4
    if-nez v2, :cond_5

    .line 700
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 702
    move-result-object p0

    .line 705
    if-eqz p0, :cond_5

    .line 706
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 708
    move-result-object p0

    .line 711
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 712
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 715
    goto :goto_19

    .line 718
    :pswitch_15
    const-string v1, "onTaskStackChanged"

    .line 719
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 724
    check-cast v1, Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 728
    move-result v1

    .line 731
    sub-int/2addr v1, v3

    .line 732
    :goto_18
    if-ltz v1, :cond_6

    .line 733
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 735
    check-cast v2, Ljava/util/ArrayList;

    .line 737
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 739
    move-result-object v2

    .line 742
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 743
    invoke-interface {v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskStackChanged()V

    .line 745
    add-int/lit8 v1, v1, -0x1

    .line 748
    goto :goto_18

    .line 750
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 751
    :cond_7
    :goto_19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    .line 757
    if-eqz p1, :cond_8

    .line 759
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 763
    :cond_8
    return v3

    .line 766
    :catchall_0
    move-exception p0

    .line 767
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    throw p0

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 770
.end method

.method public final onActivityDismissingDockedTask()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    return-void
    .line 8
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    return-void
    .line 12
.end method

.method public final onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x9

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xe

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 14
    const/4 p2, 0x3

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
    .line 29
.end method

.method public final onActivityRequestedOrientationChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xd

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 14
    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    return-void
    .line 24
.end method

.method public final onActivityRotation(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x14

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onActivityUnpinned()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xf

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onLockTaskModeChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x16

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onRecentTaskListFrozenChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x12

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onRecentTaskListUpdated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x11

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xa

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x13

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskDisplayChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x10

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x15

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xc

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x7

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskRemoved(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xb

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskStackChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    :goto_0
    if-ltz v0, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 35
    invoke-interface {v2}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskStackChangedBackground()V

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTmpListeners:Ljava/util/List;

    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
    .line 63
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    return-void
    .line 4
.end method
