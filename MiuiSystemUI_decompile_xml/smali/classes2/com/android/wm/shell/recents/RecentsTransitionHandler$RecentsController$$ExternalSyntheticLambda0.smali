.class public final synthetic Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    iput p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    iput-boolean p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;->f$4:Z

    .line 10
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 12
    const-string v5, "RecentsTransitionHandler"

    .line 14
    if-nez v4, :cond_0

    .line 16
    const-string p0, "Duplicate call to finishForSoScInner"

    .line 18
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto/16 :goto_a

    .line 23
    :cond_0
    const-string v4, "finishForSoScInner toHome:"

    .line 25
    const-string v6, " goingRecents:"

    .line 27
    const-string v7, " taskId:"

    .line 29
    invoke-static {v4, v1, v6, v2, v7}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v4

    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v6, " mState:"

    .line 38
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 43
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v6, " mKeyguardLocked:"

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v6, " mPausingTasks:"

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, " mOpeningTasks:"

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 81
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 85
    const/4 v6, 0x0

    .line 87
    iput-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 88
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 90
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 92
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 94
    iget-boolean v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 97
    const/4 v10, 0x1

    .line 99
    if-eqz v9, :cond_2

    .line 100
    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 102
    if-eqz v9, :cond_2

    .line 104
    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v8, v9, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v8, v9}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 112
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 115
    if-nez v1, :cond_5

    .line 116
    if-eqz v2, :cond_5

    .line 118
    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 120
    if-eqz v11, :cond_5

    .line 122
    iget v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 124
    if-nez v11, :cond_5

    .line 126
    const-string/jumbo p0, "sosc sc go"

    .line 128
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 134
    move-result-object p0

    .line 137
    invoke-virtual {p0, v3, v8}, Lcom/android/wm/shell/sosc/SoScUtils;->updateLaunchAdjacentRootWhenRecentFinished(ILandroid/window/WindowContainerTransaction;)V

    .line 138
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 143
    move-result p0

    .line 146
    sub-int/2addr p0, v10

    .line 147
    :goto_1
    if-ltz p0, :cond_10

    .line 148
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 156
    iget-object v5, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    iget v11, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 160
    if-ne v3, v11, :cond_3

    .line 162
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 164
    invoke-virtual {v8, v5, v6, v9}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 166
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 169
    move-result-object v5

    .line 172
    invoke-virtual {v5, v8}, Lcom/android/wm/shell/sosc/SoScUtils;->buildRequestHomeFocusWct(Landroid/window/WindowContainerTransaction;)V

    .line 173
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 176
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 178
    goto :goto_2

    .line 181
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object v1

    .line 187
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 188
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 190
    invoke-virtual {v8, v1, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 192
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v1

    .line 200
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 201
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 203
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 205
    :goto_2
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 208
    if-nez v1, :cond_4

    .line 210
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 212
    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v8, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 216
    :cond_4
    add-int/lit8 p0, p0, -0x1

    .line 219
    goto :goto_1

    .line 221
    :cond_5
    if-nez v1, :cond_7

    .line 222
    if-nez v2, :cond_7

    .line 224
    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 226
    if-eqz v11, :cond_7

    .line 228
    iget v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 230
    if-nez v11, :cond_7

    .line 232
    const-string/jumbo p0, "sosc sc cancel"

    .line 234
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 242
    move-result p0

    .line 245
    sub-int/2addr p0, v10

    .line 246
    :goto_3
    if-ltz p0, :cond_6

    .line 247
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 254
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 255
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 257
    invoke-virtual {v8, v1, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 259
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v1

    .line 267
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 268
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 270
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 272
    add-int/lit8 p0, p0, -0x1

    .line 275
    goto :goto_3

    .line 277
    :cond_6
    iget-boolean p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 278
    if-nez p0, :cond_10

    .line 280
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 282
    if-eqz p0, :cond_10

    .line 284
    invoke-virtual {v8, p0}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 286
    goto/16 :goto_9

    .line 289
    :cond_7
    if-nez v1, :cond_c

    .line 291
    if-nez v2, :cond_c

    .line 293
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 295
    if-eqz v1, :cond_c

    .line 297
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 299
    if-eqz v1, :cond_c

    .line 301
    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 303
    if-ne v1, v10, :cond_c

    .line 305
    const-string/jumbo p0, "sosc quick switch"

    .line 307
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move p0, v9

    .line 313
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 316
    move-result v1

    .line 319
    if-ge p0, v1, :cond_8

    .line 320
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    move-result-object v1

    .line 327
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 328
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 330
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 332
    add-int/lit8 p0, p0, 0x1

    .line 335
    goto :goto_4

    .line 337
    :cond_8
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 338
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 340
    move-result p0

    .line 343
    sub-int/2addr p0, v10

    .line 344
    :goto_5
    if-ltz p0, :cond_b

    .line 345
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    move-result-object v1

    .line 352
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 353
    iget-object v5, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 355
    iget v11, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 357
    if-ne v3, v11, :cond_9

    .line 359
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 361
    invoke-virtual {v8, v5, v6, v9}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 363
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 366
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 368
    goto :goto_6

    .line 371
    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 374
    move-result-object v1

    .line 377
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 378
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 380
    invoke-virtual {v8, v1, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 382
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 385
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    move-result-object v1

    .line 390
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 391
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 393
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 395
    :goto_6
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 398
    if-nez v1, :cond_a

    .line 400
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 402
    if-eqz v1, :cond_a

    .line 404
    invoke-virtual {v8, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 406
    :cond_a
    add-int/lit8 p0, p0, -0x1

    .line 409
    goto :goto_5

    .line 411
    :cond_b
    move v9, v10

    .line 412
    goto/16 :goto_9

    .line 413
    :cond_c
    const-string/jumbo v1, "sosc normal finish"

    .line 415
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move v1, v9

    .line 421
    :goto_7
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 424
    move-result v3

    .line 427
    if-ge v1, v3, :cond_d

    .line 428
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    move-result-object v3

    .line 435
    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 436
    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 438
    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 443
    goto :goto_7

    .line 445
    :cond_d
    move v1, v9

    .line 446
    :goto_8
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 449
    move-result v3

    .line 452
    if-ge v1, v3, :cond_f

    .line 453
    if-nez p0, :cond_e

    .line 455
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    move-result-object v3

    .line 462
    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 463
    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 465
    invoke-virtual {v8, v3}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 467
    :cond_e
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    move-result-object v3

    .line 475
    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 476
    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 478
    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 480
    add-int/lit8 v1, v1, 0x1

    .line 483
    goto :goto_8

    .line 485
    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 486
    if-eqz v1, :cond_10

    .line 488
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 490
    if-eqz v3, :cond_10

    .line 492
    if-eqz p0, :cond_10

    .line 494
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 496
    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 498
    move-result-object p0

    .line 501
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 502
    move-result-object p0

    .line 505
    invoke-virtual {v7, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 506
    iget-object p0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 509
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 511
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 513
    invoke-virtual {v1, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 515
    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 519
    move-result-object v1

    .line 522
    invoke-static {p0, v1, v7}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 523
    iput-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 526
    iput-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 528
    :cond_10
    :goto_9
    invoke-virtual {v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    .line 530
    invoke-virtual {v8}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 533
    move-result p0

    .line 536
    if-eqz p0, :cond_11

    .line 537
    move-object v8, v6

    .line 539
    :cond_11
    invoke-interface {v4, v8, v6}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 540
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 543
    move-result-object p0

    .line 546
    xor-int/lit8 v0, v2, 0x1

    .line 547
    invoke-virtual {p0, v10, v0, v9}, Lcom/android/wm/shell/sosc/SoScUtils;->onRecentsTransitionFinished(ZZZ)V

    .line 549
    :goto_a
    return-void
    .line 552
.end method
