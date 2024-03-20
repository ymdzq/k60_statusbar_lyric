.class public final Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;
.super Landroid/app/TaskStackListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mRegistered:Z

.field public final mTaskStackListeners:Ljava/util/List;

.field public final mTmpListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners$TestSyncHandler;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mRegistered:Z

    .line 13
    if-nez p1, :cond_0

    .line 15
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 21
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    sget-object p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 29
    const-string p1, "TaskStackChangeListeners"

    .line 31
    const-string v0, "Failed to call registerTaskStackListener"

    .line 33
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
    .line 41
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v2, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    :pswitch_0
    goto/16 :goto_15

    .line 11
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    sub-int/2addr v1, v2

    .line 21
    :goto_0
    if-ltz v1, :cond_4

    .line 22
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 32
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 34
    invoke-interface {v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onLockTaskModeChanged(I)V

    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 39
    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v1

    .line 49
    sub-int/2addr v1, v2

    .line 50
    :goto_1
    if-ltz v1, :cond_4

    .line 51
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 66
    goto :goto_1

    .line 68
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 73
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v1

    .line 80
    sub-int/2addr v1, v2

    .line 81
    :goto_2
    if-ltz v1, :cond_4

    .line 82
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 91
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 97
    goto :goto_2

    .line 99
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 100
    check-cast v1, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result v1

    .line 107
    sub-int/2addr v1, v2

    .line 108
    :goto_3
    if-ltz v1, :cond_4

    .line 109
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 111
    check-cast v3, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 118
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 124
    goto :goto_3

    .line 126
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 127
    check-cast v1, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v1

    .line 134
    sub-int/2addr v1, v2

    .line 135
    :goto_4
    if-ltz v1, :cond_4

    .line 136
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 138
    check-cast v3, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v3

    .line 145
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    add-int/lit8 v1, v1, -0x1

    .line 151
    goto :goto_4

    .line 153
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 154
    check-cast v1, Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v1

    .line 161
    sub-int/2addr v1, v2

    .line 162
    :goto_5
    if-ltz v1, :cond_4

    .line 163
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 165
    check-cast v3, Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v3

    .line 172
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    add-int/lit8 v1, v1, -0x1

    .line 178
    goto :goto_5

    .line 180
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 181
    check-cast v1, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v1

    .line 188
    sub-int/2addr v1, v2

    .line 189
    :goto_6
    if-ltz v1, :cond_4

    .line 190
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 192
    check-cast v3, Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v3

    .line 199
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 200
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 204
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    add-int/lit8 v1, v1, -0x1

    .line 209
    goto :goto_6

    .line 211
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 214
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 216
    check-cast v1, Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 220
    move-result v1

    .line 223
    sub-int/2addr v1, v2

    .line 224
    :goto_7
    if-ltz v1, :cond_4

    .line 225
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 227
    check-cast v3, Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v3

    .line 234
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 235
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    add-int/lit8 v1, v1, -0x1

    .line 240
    goto :goto_7

    .line 242
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 243
    check-cast v1, Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 247
    move-result v1

    .line 250
    sub-int/2addr v1, v2

    .line 251
    :goto_8
    if-ltz v1, :cond_4

    .line 252
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 254
    check-cast v3, Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v3

    .line 261
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 262
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 264
    invoke-interface {v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRequestedOrientationChanged(I)V

    .line 266
    add-int/lit8 v1, v1, -0x1

    .line 269
    goto :goto_8

    .line 271
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 274
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 276
    check-cast v3, Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 280
    move-result v3

    .line 283
    sub-int/2addr v3, v2

    .line 284
    :goto_9
    if-ltz v3, :cond_4

    .line 285
    iget-object v4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 287
    check-cast v4, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    move-result-object v4

    .line 294
    check-cast v4, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 295
    invoke-interface {v4, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 297
    add-int/lit8 v3, v3, -0x1

    .line 300
    goto :goto_9

    .line 302
    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 303
    check-cast v1, Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 307
    move-result v1

    .line 310
    sub-int/2addr v1, v2

    .line 311
    :goto_a
    if-ltz v1, :cond_4

    .line 312
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 314
    check-cast v3, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v3

    .line 321
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 322
    invoke-interface {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskRemoved()V

    .line 324
    add-int/lit8 v1, v1, -0x1

    .line 327
    goto :goto_a

    .line 329
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 330
    check-cast v1, Ljava/util/ArrayList;

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 334
    move-result v1

    .line 337
    sub-int/2addr v1, v2

    .line 338
    :goto_b
    if-ltz v1, :cond_4

    .line 339
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 341
    check-cast v3, Ljava/util/ArrayList;

    .line 343
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    move-result-object v3

    .line 348
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 349
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 351
    check-cast v4, Landroid/content/ComponentName;

    .line 353
    invoke-interface {v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskCreated(Landroid/content/ComponentName;)V

    .line 355
    add-int/lit8 v1, v1, -0x1

    .line 358
    goto :goto_b

    .line 360
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 365
    check-cast v1, Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 369
    move-result v1

    .line 372
    sub-int/2addr v1, v2

    .line 373
    :goto_c
    if-ltz v1, :cond_4

    .line 374
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 376
    check-cast v3, Ljava/util/ArrayList;

    .line 378
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    move-result-object v3

    .line 383
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 384
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    add-int/lit8 v1, v1, -0x1

    .line 389
    goto :goto_c

    .line 391
    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 392
    check-cast v1, Ljava/util/ArrayList;

    .line 394
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 396
    move-result v1

    .line 399
    sub-int/2addr v1, v2

    .line 400
    :goto_d
    if-ltz v1, :cond_4

    .line 401
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 403
    check-cast v3, Ljava/util/ArrayList;

    .line 405
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    move-result-object v3

    .line 410
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 411
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    add-int/lit8 v1, v1, -0x1

    .line 416
    goto :goto_d

    .line 418
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 421
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 423
    iget-object v4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 425
    check-cast v4, Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 429
    move-result v4

    .line 432
    sub-int/2addr v4, v2

    .line 433
    :goto_e
    if-ltz v4, :cond_4

    .line 434
    iget-object v5, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 436
    check-cast v5, Ljava/util/ArrayList;

    .line 438
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 440
    move-result-object v5

    .line 443
    check-cast v5, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 444
    invoke-interface {v5, v1, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 446
    add-int/lit8 v4, v4, -0x1

    .line 449
    goto :goto_e

    .line 451
    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 452
    check-cast v1, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 456
    move-result v1

    .line 459
    sub-int/2addr v1, v2

    .line 460
    :goto_f
    if-ltz v1, :cond_4

    .line 461
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 463
    check-cast v3, Ljava/util/ArrayList;

    .line 465
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    move-result-object v3

    .line 470
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 471
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    add-int/lit8 v1, v1, -0x1

    .line 476
    goto :goto_f

    .line 478
    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 479
    check-cast v1, Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 483
    move-result v1

    .line 486
    sub-int/2addr v1, v2

    .line 487
    :goto_10
    if-ltz v1, :cond_4

    .line 488
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 490
    check-cast v3, Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    move-result-object v3

    .line 497
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 498
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    check-cast v4, Ljava/lang/String;

    .line 502
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    add-int/lit8 v1, v1, -0x1

    .line 507
    goto :goto_10

    .line 509
    :pswitch_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 512
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 514
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 516
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 518
    check-cast v1, Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 522
    move-result v1

    .line 525
    sub-int/2addr v1, v2

    .line 526
    :goto_11
    if-ltz v1, :cond_4

    .line 527
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 529
    check-cast v3, Ljava/util/ArrayList;

    .line 531
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    move-result-object v3

    .line 536
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 537
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    add-int/lit8 v1, v1, -0x1

    .line 542
    goto :goto_11

    .line 544
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 545
    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 547
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 549
    check-cast v3, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 553
    move-result v3

    .line 556
    sub-int/2addr v3, v2

    .line 557
    :goto_12
    if-ltz v3, :cond_4

    .line 558
    iget-object v4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 560
    check-cast v4, Ljava/util/ArrayList;

    .line 562
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 564
    move-result-object v4

    .line 567
    check-cast v4, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 568
    iget-object v5, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    .line 570
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    add-int/lit8 v3, v3, -0x1

    .line 575
    goto :goto_12

    .line 577
    :pswitch_14
    const-string v1, "onTaskSnapshotChanged"

    .line 578
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 580
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    check-cast v1, Landroid/window/TaskSnapshot;

    .line 585
    new-instance v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 587
    invoke-direct {v3, v1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    .line 589
    iget-object v4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 592
    check-cast v4, Ljava/util/ArrayList;

    .line 594
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 596
    move-result v4

    .line 599
    sub-int/2addr v4, v2

    .line 600
    :goto_13
    if-ltz v4, :cond_0

    .line 601
    iget-object v5, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 603
    check-cast v5, Ljava/util/ArrayList;

    .line 605
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    move-result-object v5

    .line 610
    check-cast v5, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 611
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    add-int/lit8 v4, v4, -0x1

    .line 616
    goto :goto_13

    .line 618
    :cond_0
    iget-object p0, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 619
    if-eqz p0, :cond_1

    .line 621
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 623
    :cond_1
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 626
    move-result-object p0

    .line 629
    if-eqz p0, :cond_2

    .line 630
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 632
    move-result-object p0

    .line 635
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 636
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 639
    goto :goto_15

    .line 642
    :pswitch_15
    const-string v1, "onTaskStackChanged"

    .line 643
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 648
    check-cast v1, Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 652
    move-result v1

    .line 655
    sub-int/2addr v1, v2

    .line 656
    :goto_14
    if-ltz v1, :cond_3

    .line 657
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 659
    check-cast v3, Ljava/util/ArrayList;

    .line 661
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 663
    move-result-object v3

    .line 666
    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 667
    invoke-interface {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    .line 669
    add-int/lit8 v1, v1, -0x1

    .line 672
    goto :goto_14

    .line 674
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 675
    :cond_4
    :goto_15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 679
    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    .line 681
    if-eqz p1, :cond_5

    .line 683
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 685
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 687
    :cond_5
    return v2

    .line 690
    :catchall_0
    move-exception p0

    .line 691
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    throw p0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
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
    .end packed-switch
    .line 694
.end method

.method public final onActivityDismissingDockedTask()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    return-void
    .line 8
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x6

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xb

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x10

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 10
    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;-><init>(ILjava/lang/String;II)V

    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    return-void
    .line 22
.end method

.method public final onActivityRequestedOrientationChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xf

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
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 14
    const/4 p2, 0x4

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

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

.method public final onActivityRotation(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

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

.method public final onActivityUnpinned()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x11

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x17

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x14

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x13

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xc

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

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

.method public final onTaskDisplayChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x12

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

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xe

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0x8

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

.method public final onTaskRemoved(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    const/16 v0, 0xd

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
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

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
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 35
    invoke-interface {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChangedBackground()V

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

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

.method public final removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mRegistered:Z

    .line 23
    if-eqz p1, :cond_0

    .line 25
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 27
    move-result-object p1

    .line 30
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 31
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 39
    const-string p1, "TaskStackChangeListeners"

    .line 41
    const-string v0, "Failed to call unregisterTaskStackListener"

    .line 43
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
    .line 51
.end method
