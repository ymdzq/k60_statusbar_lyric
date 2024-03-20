.class public final Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFinishRunnables:Landroid/util/ArrayMap;

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 2
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 2
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p4

    .line 10
    check-cast p4, Ljava/lang/Runnable;

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 14
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    .line 17
    if-nez p4, :cond_0

    .line 20
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 23
    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    .line 25
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 28
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
    .line 34
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v5, p2

    .line 6
    move-object/from16 v2, p3

    .line 8
    new-instance v12, Landroid/util/ArrayMap;

    .line 10
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    new-instance v3, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    .line 15
    invoke-direct {v3}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    .line 17
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 20
    move-result-object v13

    .line 23
    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    .line 24
    const/4 v4, 0x1

    .line 26
    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 27
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 30
    move-result-object v14

    .line 33
    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    .line 34
    const/4 v6, 0x0

    .line 36
    invoke-direct {v3, v6}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 37
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 40
    move-result-object v15

    .line 43
    invoke-static {v5, v4}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 44
    move-result v3

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    move v11, v6

    .line 50
    move/from16 v16, v11

    .line 51
    move/from16 v17, v16

    .line 53
    move/from16 v18, v7

    .line 55
    move/from16 v19, v18

    .line 57
    move-object v9, v8

    .line 59
    move-object v10, v9

    .line 60
    :goto_0
    const/4 v6, 0x2

    .line 61
    if-ltz v3, :cond_6

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 64
    move-result-object v7

    .line 67
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 71
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 72
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 74
    move-result-object v8

    .line 77
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 78
    move-result v8

    .line 81
    if-nez v8, :cond_0

    .line 82
    goto/16 :goto_4

    .line 84
    :cond_0
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    move-result-object v8

    .line 89
    if-eqz v8, :cond_3

    .line 90
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    move-result-object v8

    .line 95
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 96
    move-result v8

    .line 99
    if-ne v8, v6, :cond_3

    .line 100
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 102
    move-result v6

    .line 105
    if-eq v6, v4, :cond_2

    .line 106
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 108
    move-result v6

    .line 111
    const/4 v8, 0x3

    .line 112
    if-ne v6, v8, :cond_1

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    const/4 v6, 0x0

    .line 116
    move/from16 v16, v6

    .line 117
    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    move/from16 v16, v4

    .line 120
    :goto_2
    invoke-static {v5, v3}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 122
    move-result v11

    .line 125
    move-object v10, v7

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 128
    move-result v8

    .line 131
    and-int/2addr v6, v8

    .line 132
    if-eqz v6, :cond_4

    .line 133
    move-object v9, v7

    .line 135
    :cond_4
    :goto_3
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 136
    move-result-object v6

    .line 139
    if-nez v6, :cond_5

    .line 140
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 142
    move-result v6

    .line 145
    if-ltz v6, :cond_5

    .line 146
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 148
    move-result v6

    .line 151
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 152
    move-result v8

    .line 155
    if-eq v6, v8, :cond_5

    .line 156
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 158
    move-result v6

    .line 161
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 162
    move-result v8

    .line 165
    sub-int v17, v6, v8

    .line 166
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 168
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v6

    .line 175
    int-to-float v6, v6

    .line 176
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 177
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v7

    .line 184
    int-to-float v7, v7

    .line 185
    move/from16 v18, v6

    .line 186
    move/from16 v19, v7

    .line 188
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 190
    goto/16 :goto_0

    .line 192
    :cond_6
    new-instance v3, Lcom/android/wm/shell/util/CounterRotator;

    .line 194
    invoke-direct {v3}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 196
    new-instance v4, Lcom/android/wm/shell/util/CounterRotator;

    .line 199
    invoke-direct {v4}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 201
    if-eqz v10, :cond_8

    .line 204
    if-eqz v17, :cond_8

    .line 206
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 208
    move-result-object v6

    .line 211
    if-eqz v6, :cond_8

    .line 212
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 214
    move-result-object v6

    .line 217
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 218
    move-result-object v6

    .line 221
    if-eqz v6, :cond_7

    .line 222
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 224
    move-result-object v8

    .line 227
    move-object v6, v3

    .line 228
    move-object/from16 v7, p3

    .line 229
    move-object/from16 v20, v15

    .line 231
    move-object v15, v9

    .line 233
    move/from16 v9, v17

    .line 234
    move-object/from16 v21, v13

    .line 236
    move-object v13, v10

    .line 238
    move/from16 v10, v18

    .line 239
    move v1, v11

    .line 241
    move/from16 v11, v19

    .line 242
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 244
    goto :goto_5

    .line 247
    :cond_7
    move v1, v11

    .line 248
    move-object/from16 v21, v13

    .line 249
    move-object/from16 v20, v15

    .line 251
    move-object v15, v9

    .line 253
    move-object v13, v10

    .line 254
    const-string v6, "RemoteAnimRunnerCompat"

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    const-string v8, "Malformed: "

    .line 259
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string v8, " has parent="

    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 272
    move-result-object v8

    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const-string v8, " but it\'s not in info."

    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v7

    .line 287
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_5
    iget-object v6, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 291
    if-eqz v6, :cond_9

    .line 293
    invoke-virtual {v2, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 295
    goto :goto_6

    .line 298
    :cond_8
    move-object/from16 v21, v13

    .line 299
    move-object/from16 v20, v15

    .line 301
    move-object v15, v9

    .line 303
    move-object v13, v10

    .line 304
    :cond_9
    :goto_6
    if-eqz v16, :cond_11

    .line 305
    iget-object v1, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 307
    if-eqz v1, :cond_a

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 311
    move-result-object v6

    .line 314
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 315
    move-result v6

    .line 318
    mul-int/lit8 v6, v6, 0x3

    .line 319
    invoke-virtual {v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 321
    :cond_a
    const/4 v1, 0x1

    .line 324
    invoke-static {v5, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 325
    move-result v1

    .line 328
    :goto_7
    if-ltz v1, :cond_10

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 331
    move-result-object v6

    .line 334
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    move-result-object v6

    .line 338
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 339
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 341
    move-result-object v7

    .line 344
    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-result-object v7

    .line 348
    check-cast v7, Landroid/view/SurfaceControl;

    .line 349
    if-nez v7, :cond_b

    .line 351
    goto :goto_8

    .line 353
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 354
    move-result-object v8

    .line 357
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object v8

    .line 361
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 362
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 364
    move-result v8

    .line 367
    invoke-static {v6, v5}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 368
    move-result v6

    .line 371
    if-nez v6, :cond_c

    .line 372
    goto :goto_8

    .line 374
    :cond_c
    const/4 v6, 0x2

    .line 375
    if-eq v8, v6, :cond_d

    .line 376
    const/4 v6, 0x4

    .line 378
    if-ne v8, v6, :cond_f

    .line 379
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 381
    move-result-object v6

    .line 384
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 385
    move-result v6

    .line 388
    mul-int/lit8 v6, v6, 0x3

    .line 389
    sub-int/2addr v6, v1

    .line 391
    invoke-virtual {v2, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 392
    iget-object v6, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 395
    if-nez v6, :cond_e

    .line 397
    goto :goto_8

    .line 399
    :cond_e
    invoke-virtual {v2, v7, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 400
    :cond_f
    :goto_8
    add-int/lit8 v1, v1, -0x1

    .line 403
    goto :goto_7

    .line 405
    :cond_10
    array-length v1, v14

    .line 406
    add-int/lit8 v1, v1, -0x1

    .line 407
    :goto_9
    if-ltz v1, :cond_16

    .line 409
    aget-object v6, v14, v1

    .line 411
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 413
    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 415
    aget-object v6, v14, v1

    .line 418
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 420
    const/high16 v7, 0x3f800000    # 1.0f

    .line 422
    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 424
    add-int/lit8 v1, v1, -0x1

    .line 427
    goto :goto_9

    .line 429
    :cond_11
    if-eqz v13, :cond_13

    .line 430
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 432
    move-result-object v1

    .line 435
    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-result-object v1

    .line 439
    check-cast v1, Landroid/view/SurfaceControl;

    .line 440
    iget-object v6, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 442
    if-nez v6, :cond_12

    .line 444
    goto :goto_a

    .line 446
    :cond_12
    invoke-virtual {v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 447
    :cond_13
    :goto_a
    if-eqz v15, :cond_16

    .line 450
    if-eqz v17, :cond_16

    .line 452
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 454
    move-result-object v1

    .line 457
    if-eqz v1, :cond_16

    .line 458
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 460
    move-result-object v1

    .line 463
    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 464
    move-result-object v1

    .line 467
    if-eqz v1, :cond_14

    .line 468
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 470
    move-result-object v8

    .line 473
    move-object v6, v4

    .line 474
    move-object/from16 v7, p3

    .line 475
    move/from16 v9, v17

    .line 477
    move/from16 v10, v18

    .line 479
    move/from16 v11, v19

    .line 481
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 483
    goto :goto_b

    .line 486
    :cond_14
    const-string v1, "RemoteAnimRunnerCompat"

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    const-string v7, "Malformed: "

    .line 491
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    const-string v7, " has parent="

    .line 499
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 504
    move-result-object v7

    .line 507
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    const-string v7, " but it\'s not in info."

    .line 511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    move-result-object v6

    .line 519
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_b
    iget-object v1, v4, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 523
    if-eqz v1, :cond_16

    .line 525
    const/4 v6, -0x1

    .line 527
    invoke-virtual {v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 528
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 531
    move-result-object v1

    .line 534
    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    move-result-object v1

    .line 538
    check-cast v1, Landroid/view/SurfaceControl;

    .line 539
    iget-object v6, v4, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 541
    if-nez v6, :cond_15

    .line 543
    goto :goto_c

    .line 545
    :cond_15
    invoke-virtual {v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 546
    :cond_16
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 549
    new-instance v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;

    .line 552
    move-object v2, v1

    .line 554
    move-object/from16 v5, p2

    .line 555
    move-object v6, v12

    .line 557
    move-object/from16 v7, p4

    .line 558
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 560
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 563
    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 566
    move-object/from16 v4, p1

    .line 568
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 574
    const/4 v5, 0x0

    .line 576
    new-instance v9, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;

    .line 577
    invoke-direct {v9, v0, v4, v1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;)V

    .line 579
    move-object v4, v2

    .line 582
    move-object/from16 v6, v21

    .line 583
    move-object v7, v14

    .line 585
    move-object/from16 v8, v20

    .line 586
    invoke-interface/range {v4 .. v9}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 588
    return-void

    .line 591
    :catchall_0
    move-exception v0

    .line 592
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    throw v0
    .line 594
.end method
