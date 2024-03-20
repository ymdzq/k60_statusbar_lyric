.class public final Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

.field public final mPendingTransitionTokens:Ljava/util/List;

.field public mPosition:Landroid/graphics/Point;

.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 12
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    move v7, v6

    .line 21
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v8

    .line 25
    iget-object v9, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 26
    if-eqz v8, :cond_8

    .line 28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v8

    .line 33
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 34
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 36
    move-result v10

    .line 39
    const/4 v11, 0x2

    .line 40
    and-int/2addr v10, v11

    .line 41
    if-eqz v10, :cond_0

    .line 42
    goto/16 :goto_4

    .line 44
    :cond_0
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    move-result-object v10

    .line 49
    if-eqz v10, :cond_7

    .line 50
    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    const/4 v12, -0x1

    .line 54
    if-ne v10, v12, :cond_1

    .line 55
    goto/16 :goto_4

    .line 57
    :cond_1
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 59
    move-result v10

    .line 62
    const/4 v12, 0x6

    .line 63
    if-ne v10, v12, :cond_6

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 66
    move-result v10

    .line 69
    check-cast v9, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 76
    move v13, v6

    .line 78
    move v14, v13

    .line 79
    move/from16 v16, v7

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_2
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v9

    .line 87
    const/16 v12, 0x3f2

    .line 88
    const/4 v13, 0x5

    .line 90
    if-ne v10, v12, :cond_3

    .line 91
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 93
    move-result v12

    .line 96
    if-ne v12, v13, :cond_3

    .line 97
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 99
    move-result-object v8

    .line 102
    const/4 v9, 0x0

    .line 103
    invoke-virtual {v2, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 107
    iget-object v8, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 110
    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 112
    new-instance v9, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    .line 114
    invoke-direct {v9, v4, v6}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 116
    check-cast v8, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 119
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    move v13, v6

    .line 124
    move/from16 v16, v7

    .line 125
    :goto_1
    const/4 v14, 0x1

    .line 127
    goto/16 :goto_2

    .line 128
    :cond_3
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 130
    move-result-object v12

    .line 133
    const/16 v15, 0x3f3

    .line 134
    iget-object v14, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 136
    move/from16 v16, v7

    .line 138
    const-wide/16 v6, 0x150

    .line 140
    if-ne v10, v15, :cond_4

    .line 142
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 144
    move-result v15

    .line 147
    if-ne v15, v13, :cond_4

    .line 148
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 150
    move-result v13

    .line 153
    if-nez v13, :cond_4

    .line 154
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 156
    move-result-object v8

    .line 159
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 160
    move-result v9

    .line 163
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 164
    move-result v10

    .line 167
    invoke-virtual {v2, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 171
    new-array v9, v11, [F

    .line 174
    fill-array-data v9, :array_0

    .line 176
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 179
    move-result-object v9

    .line 182
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 186
    move-result-object v6

    .line 189
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 190
    new-instance v7, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;

    .line 192
    invoke-direct {v7, v12, v8, v6}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 194
    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    new-instance v6, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;

    .line 200
    const/4 v13, 0x0

    .line 202
    invoke-direct {v6, v0, v3, v4, v13}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 203
    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 209
    goto :goto_1

    .line 212
    :cond_4
    const/4 v13, 0x0

    .line 213
    const/16 v15, 0x3f5

    .line 214
    if-ne v10, v15, :cond_5

    .line 216
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 218
    move-result v9

    .line 221
    const/4 v10, 0x1

    .line 222
    if-ne v9, v10, :cond_5

    .line 223
    iget-object v9, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    .line 225
    if-eqz v9, :cond_5

    .line 227
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 229
    move-result-object v8

    .line 232
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 233
    move-result-object v9

    .line 236
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 237
    move-result v10

    .line 240
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 241
    move-result v12

    .line 244
    invoke-virtual {v9, v8, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 245
    move-result-object v9

    .line 248
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 249
    new-instance v9, Landroid/animation/ValueAnimator;

    .line 252
    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    .line 254
    new-array v10, v11, [F

    .line 257
    fill-array-data v10, :array_1

    .line 259
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 262
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 265
    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 268
    move-result-object v6

    .line 271
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 272
    new-instance v7, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;

    .line 274
    invoke-direct {v7, v0, v6, v8}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 276
    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    new-instance v6, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;

    .line 282
    const/4 v7, 0x1

    .line 284
    invoke-direct {v6, v0, v3, v4, v7}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 285
    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 291
    move v14, v7

    .line 294
    goto :goto_2

    .line 295
    :cond_5
    move v14, v13

    .line 296
    :goto_2
    or-int v6, v16, v14

    .line 297
    move v7, v6

    .line 299
    goto :goto_3

    .line 300
    :cond_6
    move v13, v6

    .line 301
    move/from16 v16, v7

    .line 302
    :goto_3
    move v6, v13

    .line 304
    goto/16 :goto_0

    .line 305
    :cond_7
    :goto_4
    move v13, v6

    .line 307
    move/from16 v16, v7

    .line 308
    move v6, v13

    .line 310
    move/from16 v7, v16

    .line 311
    goto/16 :goto_0

    .line 313
    :cond_8
    move/from16 v16, v7

    .line 315
    check-cast v9, Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    return v16

    .line 322
    nop

    .line 323
    :array_0
    .array-data 4
        0x3f2aaaaa
        0x3f800000    # 1.0f
    .end array-data

    .line 324
    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
    .line 332
.end method
