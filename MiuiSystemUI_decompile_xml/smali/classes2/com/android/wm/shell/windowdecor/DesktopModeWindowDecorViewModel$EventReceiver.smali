.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mTasksOnDisplay:I

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 2
    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 7
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 12
    return-void
    .line 15
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    instance-of v2, v1, Landroid/view/MotionEvent;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_21

    .line 9
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 11
    move-object v11, v1

    .line 13
    check-cast v11, Landroid/view/MotionEvent;

    .line 14
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    .line 16
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Ljava/util/Optional;

    .line 18
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 20
    move-result v5

    .line 23
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 24
    const/4 v7, 0x1

    .line 26
    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 33
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 35
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 45
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    move-result-object v5

    .line 50
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 55
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    move-result-object v4

    .line 60
    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 63
    move-result-object v8

    .line 66
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 67
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 69
    move-result-object v8

    .line 72
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 73
    move-result v9

    .line 76
    float-to-int v9, v9

    .line 77
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 78
    move-result v10

    .line 81
    float-to-int v10, v10

    .line 82
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 83
    move-result v8

    .line 86
    if-eqz v8, :cond_0

    .line 87
    iget v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 89
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 94
    check-cast v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 95
    goto :goto_1

    .line 97
    :cond_0
    if-eqz v4, :cond_3

    .line 98
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    move-result-object v5

    .line 103
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 104
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 106
    move-result-object v5

    .line 109
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 110
    move-result v8

    .line 113
    float-to-int v8, v8

    .line 114
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 115
    move-result v9

    .line 118
    float-to-int v9, v9

    .line 119
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 120
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 126
    move-result-object v5

    .line 129
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 130
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 132
    move-result-object v5

    .line 135
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 136
    neg-int v8, v8

    .line 138
    int-to-float v8, v8

    .line 139
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 140
    neg-int v5, v5

    .line 142
    int-to-float v5, v5

    .line 143
    invoke-virtual {v11, v8, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 144
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 147
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 152
    check-cast v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 153
    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 156
    move-result v4

    .line 159
    move v5, v3

    .line 160
    :goto_0
    if-ge v5, v4, :cond_3

    .line 161
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 163
    move-result-object v8

    .line 166
    check-cast v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    .line 167
    if-eqz v8, :cond_2

    .line 169
    iget-object v9, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 173
    if-eqz v9, :cond_2

    .line 175
    move-object v13, v8

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 179
    goto :goto_0

    .line 181
    :cond_3
    const/4 v4, 0x0

    .line 182
    :goto_1
    move-object v13, v4

    .line 183
    :goto_2
    sget-boolean v14, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 184
    const/4 v15, 0x3

    .line 186
    if-eqz v14, :cond_17

    .line 187
    if-eqz v13, :cond_4

    .line 189
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 191
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 193
    move-result v4

    .line 196
    const/4 v5, 0x5

    .line 197
    if-ne v4, v5, :cond_4

    .line 198
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 200
    if-eqz v4, :cond_17

    .line 202
    :cond_4
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 204
    move-result v4

    .line 207
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    .line 208
    if-eqz v4, :cond_11

    .line 210
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 212
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 214
    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Ljava/util/Optional;

    .line 216
    const/4 v10, 0x2

    .line 218
    if-eq v4, v7, :cond_9

    .line 219
    if-eq v4, v10, :cond_6

    .line 221
    if-eq v4, v15, :cond_5

    .line 223
    goto/16 :goto_a

    .line 225
    :cond_5
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 227
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 229
    goto/16 :goto_a

    .line 231
    :cond_6
    if-nez v13, :cond_7

    .line 233
    goto/16 :goto_a

    .line 235
    :cond_7
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 237
    if-eqz v4, :cond_17

    .line 239
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 241
    invoke-direct {v4, v13, v11, v7}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V

    .line 243
    invoke-virtual {v9, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 246
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 251
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 253
    move-result-object v4

    .line 256
    iget-object v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 257
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 259
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 261
    move-result v6

    .line 264
    int-to-float v4, v4

    .line 265
    cmpl-float v4, v6, v4

    .line 266
    if-lez v4, :cond_8

    .line 268
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 270
    if-nez v4, :cond_8

    .line 272
    iput-boolean v7, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 274
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 276
    invoke-direct {v4, v2, v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    .line 278
    invoke-virtual {v9, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 281
    new-array v4, v10, [F

    .line 284
    fill-array-data v4, :array_0

    .line 286
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 289
    move-result-object v4

    .line 292
    iput-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 293
    const-wide/16 v9, 0x150

    .line 295
    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 300
    move-result-object v4

    .line 303
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 304
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 306
    new-instance v9, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 308
    invoke-direct {v9, v13, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;)V

    .line 310
    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 316
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 318
    :cond_8
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 321
    if-eqz v4, :cond_17

    .line 323
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 325
    move-result-object v4

    .line 328
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    .line 329
    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopValueAnimator:Landroid/animation/ValueAnimator;

    .line 331
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 333
    move-result-object v6

    .line 336
    check-cast v6, Ljava/lang/Float;

    .line 337
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 339
    move-result v6

    .line 342
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 343
    move-result v5

    .line 346
    int-to-float v5, v5

    .line 347
    mul-float/2addr v6, v5

    .line 348
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 349
    move-result v5

    .line 352
    const/high16 v8, 0x40000000    # 2.0f

    .line 353
    div-float/2addr v6, v8

    .line 355
    sub-float/2addr v5, v6

    .line 356
    iget-object v6, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 357
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 359
    move-result v8

    .line 362
    invoke-virtual {v4, v6, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 363
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 366
    goto/16 :goto_a

    .line 369
    :cond_9
    if-nez v13, :cond_a

    .line 371
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 373
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 375
    goto/16 :goto_a

    .line 377
    :cond_a
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 379
    if-eqz v4, :cond_e

    .line 381
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 383
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 385
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 387
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 389
    move-result-object v4

    .line 392
    iget-object v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 393
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 395
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 397
    move-result v6

    .line 400
    mul-int/2addr v4, v10

    .line 401
    int-to-float v4, v4

    .line 402
    cmpl-float v4, v6, v4

    .line 403
    if-lez v4, :cond_d

    .line 405
    if-eqz v14, :cond_b

    .line 407
    iget v3, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 409
    add-int/2addr v3, v7

    .line 411
    iput v3, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutBlock:I

    .line 412
    new-array v3, v10, [F

    .line 414
    fill-array-data v3, :array_1

    .line 416
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 419
    move-result-object v3

    .line 422
    const-wide/16 v6, 0x150

    .line 423
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 425
    iget-object v10, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 428
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 430
    move-result v4

    .line 433
    const v6, 0x3ecccccd    # 0.4f

    .line 434
    invoke-virtual {v2, v6, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->calculateFreeformBounds(FI)Landroid/graphics/Rect;

    .line 437
    move-result-object v4

    .line 440
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 441
    move-result-object v7

    .line 444
    move-object v9, v7

    .line 445
    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    .line 446
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    .line 448
    move-result v7

    .line 451
    int-to-float v7, v7

    .line 452
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 453
    move-result v8

    .line 456
    sub-float/2addr v7, v8

    .line 457
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 458
    int-to-float v4, v4

    .line 460
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 461
    move-result v8

    .line 464
    sub-float v8, v4, v8

    .line 465
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 467
    move-result v4

    .line 470
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 471
    move-result v5

    .line 474
    int-to-float v5, v5

    .line 475
    const/high16 v15, 0x40000000    # 2.0f

    .line 476
    invoke-static {v5, v6, v15, v4}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 478
    move-result v5

    .line 481
    new-instance v15, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;

    .line 482
    move-object v4, v15

    .line 484
    move v6, v7

    .line 485
    move-object v7, v11

    .line 486
    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda3;-><init>(FFLandroid/view/MotionEvent;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 487
    invoke-virtual {v3, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    new-instance v4, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    .line 493
    invoke-direct {v4, v2, v13, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    .line 495
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 501
    goto :goto_3

    .line 504
    :cond_b
    sget-boolean v3, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 505
    if-eqz v3, :cond_c

    .line 507
    new-instance v3, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 509
    const/4 v4, 0x0

    .line 511
    invoke-direct {v3, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 512
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeController:Ljava/util/Optional;

    .line 515
    invoke-virtual {v5, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 517
    move v3, v4

    .line 520
    goto :goto_4

    .line 521
    :cond_c
    :goto_3
    const/4 v3, 0x0

    .line 522
    :goto_4
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 523
    goto/16 :goto_8

    .line 525
    :cond_d
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 527
    if-eqz v4, :cond_e

    .line 529
    new-instance v4, Landroid/graphics/Point;

    .line 531
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 533
    move-result v5

    .line 536
    float-to-int v5, v5

    .line 537
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 538
    move-result v6

    .line 541
    float-to-int v6, v6

    .line 542
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 543
    new-instance v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    .line 546
    invoke-direct {v5, v13, v4, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;I)V

    .line 548
    invoke-virtual {v9, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 551
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStarted:Z

    .line 554
    goto/16 :goto_8

    .line 556
    :cond_e
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 558
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 560
    if-nez v4, :cond_f

    .line 562
    goto/16 :goto_8

    .line 564
    :cond_f
    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 566
    move-result v4

    .line 569
    if-nez v4, :cond_10

    .line 570
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 572
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 574
    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 576
    const v5, 0x7f0a02b1    # @id/desktop_mode_caption

    .line 578
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 581
    move-result-object v4

    .line 584
    const v5, 0x7f0a01c2    # @id/caption_handle

    .line 585
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 588
    move-result-object v4

    .line 591
    new-instance v5, Landroid/graphics/PointF;

    .line 592
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 594
    move-result v6

    .line 597
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 598
    move-result v7

    .line 601
    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 602
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 605
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 607
    invoke-static {v4, v6, v5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 609
    move-result v5

    .line 612
    if-eqz v5, :cond_16

    .line 613
    iget-object v5, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 615
    invoke-interface {v5, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 617
    goto/16 :goto_8

    .line 620
    :cond_10
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 622
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 624
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 626
    invoke-virtual {v5}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 628
    move-result-object v5

    .line 631
    const v6, 0x7f0a020b    # @id/collapse_menu_button

    .line 632
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 635
    move-result-object v5

    .line 638
    check-cast v5, Landroid/widget/ImageButton;

    .line 639
    new-instance v6, Landroid/graphics/PointF;

    .line 641
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    .line 643
    move-result v7

    .line 646
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 647
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 649
    sub-float/2addr v7, v9

    .line 651
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    .line 652
    move-result v9

    .line 655
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 656
    sub-float/2addr v9, v8

    .line 658
    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 659
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 662
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 664
    invoke-static {v5, v7, v6}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 666
    move-result v6

    .line 669
    if-eqz v6, :cond_16

    .line 670
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 672
    invoke-interface {v4, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 674
    goto :goto_8

    .line 677
    :cond_11
    if-eqz v13, :cond_16

    .line 678
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 680
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 682
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 684
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 686
    move-result-object v4

    .line 689
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 690
    if-eqz v14, :cond_12

    .line 693
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 695
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 697
    move-result v4

    .line 700
    const/4 v5, 0x1

    .line 701
    if-ne v4, v5, :cond_12

    .line 702
    const/4 v4, 0x1

    .line 704
    goto :goto_5

    .line 705
    :cond_12
    move v4, v3

    .line 706
    :goto_5
    if-eqz v4, :cond_16

    .line 707
    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 709
    move-result v4

    .line 712
    if-eqz v4, :cond_13

    .line 713
    goto :goto_6

    .line 715
    :cond_13
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 716
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 718
    if-nez v4, :cond_14

    .line 720
    goto :goto_6

    .line 722
    :cond_14
    invoke-virtual {v13, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 723
    move-result-object v4

    .line 726
    iget-object v5, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 727
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 729
    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 731
    const v6, 0x7f0a01c2    # @id/caption_handle

    .line 733
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 736
    move-result-object v5

    .line 739
    if-eqz v5, :cond_15

    .line 740
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 742
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 744
    invoke-static {v5, v6, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 746
    move-result v4

    .line 749
    if-eqz v4, :cond_15

    .line 750
    const/4 v4, 0x1

    .line 752
    goto :goto_7

    .line 753
    :cond_15
    :goto_6
    move v4, v3

    .line 754
    :goto_7
    if-eqz v4, :cond_16

    .line 755
    const/4 v4, 0x1

    .line 757
    iput-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 758
    goto :goto_9

    .line 760
    :cond_16
    :goto_8
    const/4 v4, 0x1

    .line 761
    :goto_9
    move/from16 v16, v4

    .line 762
    move v4, v3

    .line 764
    move/from16 v3, v16

    .line 765
    goto :goto_b

    .line 767
    :cond_17
    :goto_a
    move v4, v3

    .line 768
    move v3, v7

    .line 769
    :goto_b
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 770
    move-result v5

    .line 773
    if-eq v5, v3, :cond_18

    .line 774
    const/4 v6, 0x3

    .line 776
    if-ne v5, v6, :cond_1f

    .line 777
    :cond_18
    if-nez v13, :cond_19

    .line 779
    goto/16 :goto_e

    .line 781
    :cond_19
    iget-boolean v5, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 783
    if-nez v5, :cond_1f

    .line 785
    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    .line 787
    move-result v5

    .line 790
    if-nez v5, :cond_1a

    .line 791
    goto/16 :goto_e

    .line 793
    :cond_1a
    invoke-virtual {v13, v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 795
    move-result-object v5

    .line 798
    iget-object v6, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 799
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 801
    check-cast v6, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 803
    const v7, 0x7f0a06ce    # @id/open_menu_button

    .line 805
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 808
    move-result-object v6

    .line 811
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 812
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 814
    invoke-static {v6, v7, v8}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->pointInView(Landroid/view/View;FF)Z

    .line 816
    move-result v6

    .line 819
    iget-object v7, v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    .line 820
    iget-object v8, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 822
    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 824
    invoke-virtual {v8}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 826
    move-result-object v8

    .line 829
    invoke-virtual {v8}, Landroid/view/View;->isLaidOut()Z

    .line 830
    move-result v8

    .line 833
    if-nez v8, :cond_1b

    .line 834
    goto :goto_d

    .line 836
    :cond_1b
    iget-object v8, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 837
    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 839
    invoke-virtual {v8}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 841
    move-result-object v8

    .line 844
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 845
    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 847
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 849
    sub-float/2addr v9, v11

    .line 851
    iget v11, v5, Landroid/graphics/PointF;->y:F

    .line 852
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 854
    sub-float/2addr v11, v10

    .line 856
    invoke-static {v8, v9, v11}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 857
    move-result v8

    .line 860
    iget-object v9, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 861
    if-eqz v9, :cond_1c

    .line 863
    iget-object v9, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 865
    invoke-virtual {v9}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 867
    move-result-object v9

    .line 870
    iget v10, v5, Landroid/graphics/PointF;->x:F

    .line 871
    iget-object v11, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 873
    iget v15, v11, Landroid/graphics/PointF;->x:F

    .line 875
    sub-float/2addr v10, v15

    .line 877
    iget v15, v5, Landroid/graphics/PointF;->y:F

    .line 878
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 880
    sub-float/2addr v15, v11

    .line 882
    invoke-static {v9, v10, v15}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 883
    move-result v9

    .line 886
    goto :goto_c

    .line 887
    :cond_1c
    move v9, v4

    .line 888
    :goto_c
    iget-object v10, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 889
    iget-object v10, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 891
    invoke-virtual {v10}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 893
    move-result-object v10

    .line 896
    iget v11, v5, Landroid/graphics/PointF;->x:F

    .line 897
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 899
    iget v15, v7, Landroid/graphics/PointF;->x:F

    .line 901
    sub-float/2addr v11, v15

    .line 903
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 904
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 906
    sub-float/2addr v5, v7

    .line 908
    invoke-static {v10, v11, v5}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    .line 909
    move-result v5

    .line 912
    if-nez v8, :cond_1d

    .line 913
    if-nez v9, :cond_1d

    .line 915
    if-eqz v5, :cond_1e

    .line 917
    :cond_1d
    :goto_d
    move v4, v3

    .line 919
    :cond_1e
    if-nez v4, :cond_1f

    .line 920
    if-nez v6, :cond_1f

    .line 922
    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    .line 924
    :cond_1f
    :goto_e
    if-eqz v14, :cond_20

    .line 927
    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 929
    if-eqz v2, :cond_21

    .line 931
    invoke-virtual {v12}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 933
    goto :goto_f

    .line 936
    :cond_20
    sget-boolean v4, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 937
    if-eqz v4, :cond_21

    .line 939
    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitionDragActive:Z

    .line 941
    if-eqz v4, :cond_21

    .line 943
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 945
    invoke-static {v2}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 947
    move-result v2

    .line 950
    if-nez v2, :cond_21

    .line 951
    invoke-virtual {v12}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 953
    :cond_21
    :goto_f
    invoke-virtual {v0, v1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 956
    return-void

    .line 959
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 960
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 968
.end method
