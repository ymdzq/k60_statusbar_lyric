.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v2, v1, Landroid/view/MotionEvent;

    .line 11
    if-nez v2, :cond_0

    .line 13
    goto/16 :goto_26

    .line 15
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 17
    iget-boolean v3, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 19
    if-nez v3, :cond_1

    .line 21
    goto/16 :goto_26

    .line 23
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 25
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 31
    move-result v4

    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x1

    .line 37
    const-string v8, "PipTouchHandler"

    .line 38
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 40
    if-eqz v4, :cond_6

    .line 42
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 44
    if-nez v4, :cond_6

    .line 46
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 51
    if-nez v4, :cond_2

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    iget-object v4, v9, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 56
    iget v4, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 58
    if-eq v4, v7, :cond_5

    .line 60
    if-ne v4, v5, :cond_3

    .line 62
    move v4, v7

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v4, v6

    .line 66
    :goto_0
    if-eqz v4, :cond_4

    .line 67
    goto :goto_2

    .line 69
    :cond_4
    :goto_1
    move v4, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    :goto_2
    move v4, v7

    .line 72
    :goto_3
    if-eqz v4, :cond_6

    .line 73
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 75
    if-eqz v0, :cond_53

    .line 77
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 79
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    const v2, -0x6cbefa9c

    .line 85
    const-string v3, "%s: Waiting to entering pip, skip the motion event."

    .line 88
    invoke-static {v0, v2, v6, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    goto/16 :goto_26

    .line 93
    :cond_6
    check-cast v1, Landroid/view/MotionEvent;

    .line 95
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 97
    move-result v4

    .line 100
    const/4 v10, 0x2

    .line 101
    if-nez v4, :cond_a

    .line 102
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 104
    iget-boolean v11, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    .line 106
    if-eqz v11, :cond_9

    .line 108
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 110
    move-result v11

    .line 113
    if-eqz v11, :cond_8

    .line 114
    const/4 v12, 0x5

    .line 116
    if-eq v11, v12, :cond_7

    .line 117
    goto :goto_4

    .line 119
    :cond_7
    iget-boolean v11, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 120
    if-eqz v11, :cond_9

    .line 122
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 124
    move-result v11

    .line 127
    if-ne v11, v10, :cond_9

    .line 128
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 130
    iget-boolean v11, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 133
    iput-boolean v11, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 135
    goto :goto_5

    .line 137
    :cond_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 138
    move-result v11

    .line 141
    float-to-int v11, v11

    .line 142
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 143
    move-result v12

    .line 146
    float-to-int v12, v12

    .line 147
    invoke-virtual {v4, v11, v12}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 148
    move-result v4

    .line 151
    if-eqz v4, :cond_9

    .line 152
    move v11, v7

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    :goto_4
    move v11, v6

    .line 156
    :goto_5
    if-eqz v11, :cond_a

    .line 157
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 159
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 162
    goto/16 :goto_26

    .line 165
    :cond_a
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 167
    iget v11, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 169
    if-nez v11, :cond_c

    .line 171
    iget-boolean v4, v4, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 173
    if-eqz v4, :cond_b

    .line 175
    goto :goto_6

    .line 177
    :cond_b
    move v4, v6

    .line 178
    goto :goto_7

    .line 179
    :cond_c
    :goto_6
    move v4, v7

    .line 180
    :goto_7
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 181
    if-eqz v4, :cond_e

    .line 183
    iget-boolean v0, v11, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    .line 185
    if-nez v0, :cond_d

    .line 187
    goto/16 :goto_26

    .line 189
    :cond_d
    iget-object v0, v11, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 191
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 193
    goto/16 :goto_26

    .line 196
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 198
    move-result v4

    .line 201
    if-eqz v4, :cond_f

    .line 202
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 204
    if-eqz v4, :cond_11

    .line 206
    :cond_f
    iget-object v4, v11, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;

    .line 208
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    .line 210
    move-result v4

    .line 213
    if-eqz v4, :cond_11

    .line 214
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 216
    move-result v0

    .line 219
    if-nez v0, :cond_10

    .line 220
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 222
    :cond_10
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 225
    goto/16 :goto_26

    .line 228
    :cond_11
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 230
    if-nez v4, :cond_13

    .line 232
    iget-object v4, v9, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 234
    iget v4, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 236
    if-ne v4, v10, :cond_12

    .line 238
    move v4, v7

    .line 240
    goto :goto_8

    .line 241
    :cond_12
    move v4, v6

    .line 242
    :goto_8
    if-eqz v4, :cond_13

    .line 243
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 245
    if-eqz v0, :cond_53

    .line 247
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 249
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 254
    const v2, 0x4aa4e6d2    # 5403497.0f

    .line 255
    const-string v3, "%s: Waiting to start the entry animation, skip the motion event."

    .line 258
    invoke-static {v0, v2, v6, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 260
    goto/16 :goto_26

    .line 263
    :cond_13
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 265
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 268
    if-eqz v4, :cond_14

    .line 270
    move v4, v7

    .line 272
    goto :goto_9

    .line 273
    :cond_14
    move v4, v6

    .line 274
    :goto_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 275
    move-result v8

    .line 278
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 279
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    .line 281
    if-eqz v8, :cond_4c

    .line 283
    if-eq v8, v7, :cond_20

    .line 285
    if-eq v8, v10, :cond_19

    .line 287
    if-eq v8, v5, :cond_4a

    .line 289
    const/4 v9, 0x7

    .line 291
    if-eq v8, v9, :cond_18

    .line 292
    const/16 v9, 0x9

    .line 294
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 296
    if-eq v8, v9, :cond_17

    .line 298
    const/16 v9, 0xa

    .line 300
    if-eq v8, v9, :cond_15

    .line 302
    goto/16 :goto_24

    .line 304
    :cond_15
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 306
    move-result v8

    .line 309
    if-nez v8, :cond_16

    .line 310
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->scheduleHoverExitTimeoutCallback()V

    .line 312
    :cond_16
    if-nez v4, :cond_4f

    .line 315
    iget-boolean v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 317
    if-eqz v8, :cond_4f

    .line 319
    const/16 v8, 0x100

    .line 321
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 323
    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 326
    goto/16 :goto_24

    .line 328
    :cond_17
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 330
    move-result v8

    .line 333
    if-nez v8, :cond_18

    .line 334
    iget-object v8, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 336
    check-cast v8, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 338
    iget-object v9, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    .line 340
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 345
    move-result-object v8

    .line 348
    invoke-virtual {v11, v8, v7, v6, v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(Landroid/graphics/Rect;IZZ)V

    .line 349
    :cond_18
    if-nez v4, :cond_4f

    .line 352
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 354
    if-nez v6, :cond_4f

    .line 356
    const/16 v6, 0x80

    .line 358
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 360
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 363
    goto/16 :goto_24

    .line 365
    :cond_19
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 370
    if-nez v0, :cond_1a

    .line 372
    goto :goto_a

    .line 374
    :cond_1a
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 375
    iget-object v8, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 377
    if-eqz v0, :cond_1b

    .line 379
    const/high16 v0, -0x40800000    # -1.0f

    .line 381
    iput v0, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 383
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 385
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->showDismissTargetMaybe()V

    .line 387
    :cond_1b
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 390
    if-eqz v0, :cond_1e

    .line 392
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 394
    iput-boolean v7, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserMovedPip:Z

    .line 396
    iget-object v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 398
    iget-object v9, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 400
    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 402
    int-to-float v10, v10

    .line 404
    iget-object v12, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    .line 405
    iget v13, v12, Landroid/graphics/PointF;->x:F

    .line 407
    add-float/2addr v10, v13

    .line 409
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 410
    int-to-float v9, v9

    .line 412
    iget v14, v12, Landroid/graphics/PointF;->y:F

    .line 413
    add-float/2addr v9, v14

    .line 415
    iget v15, v0, Landroid/graphics/PointF;->x:F

    .line 416
    add-float/2addr v15, v10

    .line 418
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 419
    add-float/2addr v0, v9

    .line 421
    sub-float v10, v15, v10

    .line 422
    add-float/2addr v10, v13

    .line 424
    iput v10, v12, Landroid/graphics/PointF;->x:F

    .line 425
    sub-float v9, v0, v9

    .line 427
    add-float/2addr v9, v14

    .line 429
    iput v9, v12, Landroid/graphics/PointF;->y:F

    .line 430
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 432
    move-result-object v9

    .line 435
    iget-object v10, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 436
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    float-to-int v9, v15

    .line 441
    float-to-int v0, v0

    .line 442
    invoke-virtual {v10, v9, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 443
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 446
    invoke-virtual {v0, v10, v7}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 448
    iget-object v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 451
    iget-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 453
    if-eqz v9, :cond_1d

    .line 455
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 457
    iget-object v9, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 459
    iget-object v9, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 461
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 463
    int-to-float v9, v9

    .line 465
    cmpl-float v0, v0, v9

    .line 466
    if-ltz v0, :cond_1c

    .line 468
    move v6, v7

    .line 470
    :cond_1c
    iput-boolean v6, v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 471
    :cond_1d
    move v6, v7

    .line 473
    :cond_1e
    :goto_a
    if-eqz v6, :cond_1f

    .line 474
    goto/16 :goto_24

    .line 476
    :cond_1f
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 478
    xor-int/lit8 v4, v0, 0x1

    .line 480
    goto/16 :goto_24

    .line 482
    :cond_20
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 484
    iget-object v0, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 487
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 489
    iget-boolean v13, v8, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    .line 491
    if-nez v13, :cond_21

    .line 493
    goto :goto_b

    .line 495
    :cond_21
    iget-object v8, v8, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/bubbles/DismissView;

    .line 496
    invoke-virtual {v8}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 498
    :goto_b
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 501
    const/4 v13, 0x0

    .line 503
    iput-object v13, v8, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 504
    iget-boolean v8, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 506
    if-nez v8, :cond_22

    .line 508
    move v10, v6

    .line 510
    goto/16 :goto_21

    .line 511
    :cond_22
    iget-object v8, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 513
    iget-boolean v14, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 515
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 517
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 519
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 521
    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 523
    if-eqz v14, :cond_37

    .line 525
    iget v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 527
    if-eqz v14, :cond_23

    .line 529
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 531
    move-result-object v6

    .line 534
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 535
    move-result v10

    .line 538
    invoke-virtual {v5, v6, v14, v7, v10}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(Landroid/graphics/Rect;IZZ)V

    .line 539
    :cond_23
    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 542
    if-nez v5, :cond_24

    .line 544
    move v5, v7

    .line 546
    goto :goto_c

    .line 547
    :cond_24
    const/4 v5, 0x0

    .line 548
    :goto_c
    iput-boolean v5, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    .line 549
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 551
    iget-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    .line 554
    if-eqz v5, :cond_35

    .line 556
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 558
    move-result-object v5

    .line 561
    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 562
    iget v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mStashVelocityThreshold:F

    .line 564
    neg-float v14, v10

    .line 566
    cmpg-float v14, v6, v14

    .line 567
    if-gez v14, :cond_25

    .line 569
    move v14, v7

    .line 571
    goto :goto_d

    .line 572
    :cond_25
    const/4 v14, 0x0

    .line 573
    :goto_d
    cmpl-float v6, v6, v10

    .line 574
    if-lez v6, :cond_26

    .line 576
    move v6, v7

    .line 578
    goto :goto_e

    .line 579
    :cond_26
    const/4 v6, 0x0

    .line 580
    :goto_e
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 581
    move-result v10

    .line 584
    const/4 v15, 0x2

    .line 585
    div-int/2addr v10, v15

    .line 586
    iget v15, v5, Landroid/graphics/Rect;->left:I

    .line 587
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 589
    move-result-object v7

    .line 592
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 593
    sub-int/2addr v7, v10

    .line 595
    if-ge v15, v7, :cond_27

    .line 596
    const/4 v7, 0x1

    .line 598
    goto :goto_f

    .line 599
    :cond_27
    const/4 v7, 0x0

    .line 600
    :goto_f
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 601
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 603
    move-result-object v15

    .line 606
    iget v15, v15, Landroid/graphics/Rect;->right:I

    .line 607
    add-int/2addr v15, v10

    .line 609
    if-le v5, v15, :cond_28

    .line 610
    const/4 v5, 0x1

    .line 612
    goto :goto_10

    .line 613
    :cond_28
    const/4 v5, 0x0

    .line 614
    :goto_10
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 615
    move-result-object v10

    .line 618
    iget-object v10, v10, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 619
    if-eqz v10, :cond_2c

    .line 621
    if-nez v14, :cond_29

    .line 623
    if-eqz v7, :cond_2a

    .line 625
    :cond_29
    invoke-virtual {v10}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 627
    move-result-object v15

    .line 630
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    .line 631
    move-result v15

    .line 634
    if-nez v15, :cond_2a

    .line 635
    goto :goto_14

    .line 637
    :cond_2a
    if-nez v6, :cond_2b

    .line 638
    if-eqz v5, :cond_2c

    .line 640
    :cond_2b
    invoke-virtual {v10}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 642
    move-result-object v10

    .line 645
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    .line 646
    move-result v10

    .line 649
    if-nez v10, :cond_2c

    .line 650
    goto :goto_14

    .line 652
    :cond_2c
    if-eqz v14, :cond_2d

    .line 653
    iget v10, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 655
    const/4 v14, 0x2

    .line 657
    if-ne v10, v14, :cond_2e

    .line 658
    :cond_2d
    if-eqz v6, :cond_2f

    .line 660
    iget v6, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 662
    const/4 v10, 0x1

    .line 664
    if-eq v6, v10, :cond_2f

    .line 665
    :cond_2e
    const/4 v6, 0x1

    .line 667
    goto :goto_11

    .line 668
    :cond_2f
    const/4 v6, 0x0

    .line 669
    :goto_11
    if-nez v7, :cond_31

    .line 670
    if-eqz v5, :cond_30

    .line 672
    goto :goto_12

    .line 674
    :cond_30
    const/4 v5, 0x0

    .line 675
    goto :goto_13

    .line 676
    :cond_31
    :goto_12
    const/4 v5, 0x1

    .line 677
    :goto_13
    if-nez v6, :cond_33

    .line 678
    if-eqz v5, :cond_32

    .line 680
    goto :goto_15

    .line 682
    :cond_32
    :goto_14
    const/4 v5, 0x0

    .line 683
    goto :goto_16

    .line 684
    :cond_33
    :goto_15
    const/4 v5, 0x1

    .line 685
    :goto_16
    if-eqz v5, :cond_35

    .line 686
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 688
    iget v5, v8, Landroid/graphics/PointF;->x:F

    .line 690
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 692
    new-instance v7, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    .line 694
    const/4 v8, 0x1

    .line 696
    invoke-direct {v7, v8, v12}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 697
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 700
    iget v9, v9, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 702
    if-nez v9, :cond_34

    .line 704
    const/4 v9, 0x0

    .line 706
    goto :goto_17

    .line 707
    :cond_34
    move v9, v6

    .line 708
    :goto_17
    invoke-virtual {v0, v5, v9, v7, v8}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Z)V

    .line 709
    goto/16 :goto_20

    .line 712
    :cond_35
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 714
    move-result v5

    .line 717
    if-eqz v5, :cond_36

    .line 718
    sget-object v5, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 720
    invoke-virtual {v9, v5}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 722
    const/4 v5, 0x0

    .line 725
    invoke-virtual {v13, v5}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 726
    goto :goto_18

    .line 729
    :cond_36
    const/4 v5, 0x0

    .line 730
    :goto_18
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 731
    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 733
    iget v7, v8, Landroid/graphics/PointF;->y:F

    .line 735
    new-instance v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    .line 737
    const/4 v9, 0x2

    .line 739
    invoke-direct {v8, v9, v12}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 740
    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movetoTarget(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Z)V

    .line 743
    goto/16 :goto_20

    .line 746
    :cond_37
    iget-boolean v6, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 748
    if-eqz v6, :cond_46

    .line 750
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 752
    move-result v6

    .line 755
    if-nez v6, :cond_46

    .line 756
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 758
    const/4 v7, 0x1

    .line 760
    if-eq v6, v7, :cond_46

    .line 761
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 763
    iget-boolean v6, v6, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 765
    if-eqz v6, :cond_44

    .line 767
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 769
    move-result-object v6

    .line 772
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 773
    move-result v6

    .line 776
    iget-object v7, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 777
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 779
    if-ge v6, v8, :cond_38

    .line 781
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 783
    move-result-object v6

    .line 786
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 787
    :cond_38
    invoke-virtual {v5}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 790
    move-result v6

    .line 793
    if-eqz v6, :cond_39

    .line 794
    const/4 v6, 0x0

    .line 796
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 797
    :cond_39
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 800
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 802
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 804
    move-result-object v6

    .line 807
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 808
    move-result v6

    .line 811
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 812
    if-ne v6, v8, :cond_3a

    .line 814
    const/4 v6, 0x1

    .line 816
    goto :goto_19

    .line 817
    :cond_3a
    const/4 v6, 0x0

    .line 818
    :goto_19
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 819
    move-result-object v8

    .line 822
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 823
    move-result v8

    .line 826
    iget-object v9, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 827
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 829
    move-result v10

    .line 832
    if-ne v8, v10, :cond_3b

    .line 833
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 835
    move-result-object v8

    .line 838
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 839
    move-result v8

    .line 842
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 843
    move-result v10

    .line 846
    if-ne v8, v10, :cond_3b

    .line 847
    const/4 v8, 0x1

    .line 849
    goto :goto_1a

    .line 850
    :cond_3b
    const/4 v8, 0x0

    .line 851
    :goto_1a
    if-eqz v8, :cond_3c

    .line 852
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 854
    move-result v10

    .line 857
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 858
    move-result v9

    .line 861
    if-ne v10, v9, :cond_3c

    .line 862
    goto :goto_1c

    .line 864
    :cond_3c
    if-eqz v6, :cond_3d

    .line 865
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 867
    move-result v5

    .line 870
    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 871
    if-ne v5, v9, :cond_3d

    .line 873
    goto :goto_1b

    .line 875
    :cond_3d
    if-nez v8, :cond_40

    .line 876
    if-eqz v6, :cond_3e

    .line 878
    goto :goto_1d

    .line 880
    :cond_3e
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 881
    iget-object v6, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    .line 883
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 885
    add-int/2addr v5, v6

    .line 887
    const/4 v6, 0x2

    .line 888
    div-int/2addr v5, v6

    .line 889
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 890
    move-result-object v6

    .line 893
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 894
    move-result v6

    .line 897
    if-le v6, v5, :cond_3f

    .line 898
    :goto_1b
    const/4 v5, 0x1

    .line 900
    const/4 v10, 0x0

    .line 901
    goto :goto_1e

    .line 902
    :cond_3f
    :goto_1c
    const/4 v5, 0x1

    .line 903
    const/4 v10, 0x1

    .line 904
    goto :goto_1e

    .line 905
    :cond_40
    :goto_1d
    const/4 v6, 0x2

    .line 906
    move v10, v6

    .line 907
    const/4 v5, 0x1

    .line 908
    :goto_1e
    if-ne v10, v5, :cond_42

    .line 909
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 911
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 913
    move-result-object v6

    .line 916
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 917
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 919
    new-instance v5, Landroid/graphics/Rect;

    .line 922
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 924
    new-instance v6, Landroid/graphics/Rect;

    .line 927
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 929
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 931
    const/4 v9, 0x0

    .line 933
    invoke-direct {v6, v9, v9, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 934
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 937
    if-eqz v7, :cond_41

    .line 939
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 941
    goto :goto_1f

    .line 943
    :cond_41
    const/4 v7, 0x0

    .line 944
    :goto_1f
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 945
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 950
    invoke-static {v7, v6, v8, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 952
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 955
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 957
    new-instance v8, Landroid/graphics/Rect;

    .line 960
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 962
    move-result-object v9

    .line 965
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 966
    iget-object v9, v7, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 969
    iget-object v10, v13, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 971
    const/4 v12, 0x0

    .line 973
    invoke-virtual {v9, v8, v10, v12}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 974
    move-result v8

    .line 977
    invoke-static {v6, v8, v5}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 978
    const/4 v5, 0x0

    .line 981
    iput-object v5, v7, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    .line 982
    const/16 v5, 0xfa

    .line 984
    const/16 v9, 0x8

    .line 986
    iget-object v10, v7, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 988
    invoke-virtual {v10, v6, v5, v9}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 990
    iget-object v5, v7, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 993
    iget-object v5, v5, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 995
    iget-object v5, v5, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 997
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 999
    iget-object v5, v7, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 1002
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 1004
    iput v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 1007
    goto :goto_20

    .line 1009
    :cond_42
    if-nez v10, :cond_43

    .line 1010
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1012
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1014
    move-result-object v6

    .line 1017
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 1018
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1020
    const/4 v5, 0x0

    .line 1023
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToNormalSize(Ljava/lang/Runnable;)V

    .line 1024
    goto :goto_20

    .line 1027
    :cond_43
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 1028
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 1030
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnexpandedState(Landroid/graphics/Rect;)V

    .line 1032
    goto :goto_20

    .line 1035
    :cond_44
    const/4 v5, 0x0

    .line 1036
    iput-boolean v5, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 1037
    iget-boolean v6, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 1039
    if-eqz v6, :cond_45

    .line 1041
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 1043
    :cond_45
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1046
    invoke-virtual {v0, v5, v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(ZZ)V

    .line 1048
    goto :goto_20

    .line 1051
    :cond_46
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 1052
    const/4 v7, 0x1

    .line 1054
    if-eq v6, v7, :cond_49

    .line 1055
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1057
    move-result v6

    .line 1060
    iget-object v7, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1061
    iget-object v8, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    .line 1063
    if-eqz v6, :cond_47

    .line 1065
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnStashedState()V

    .line 1067
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 1070
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 1072
    const/4 v0, 0x0

    .line 1075
    invoke-virtual {v13, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 1076
    iput-boolean v0, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 1079
    check-cast v7, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1081
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    goto :goto_20

    .line 1086
    :cond_47
    iget-boolean v6, v15, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 1087
    if-nez v6, :cond_48

    .line 1089
    invoke-virtual {v13}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 1091
    move-result-object v6

    .line 1094
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 1095
    move-result v0

    .line 1098
    const/4 v7, 0x1

    .line 1099
    invoke-virtual {v5, v6, v7, v7, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(Landroid/graphics/Rect;IZZ)V

    .line 1100
    goto :goto_20

    .line 1103
    :cond_48
    if-eqz v6, :cond_49

    .line 1104
    invoke-virtual {v15}, Lcom/android/wm/shell/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    .line 1106
    move-result-wide v5

    .line 1109
    check-cast v7, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1110
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 1115
    :cond_49
    :goto_20
    const/4 v10, 0x1

    .line 1118
    :goto_21
    if-eqz v10, :cond_4a

    .line 1119
    goto :goto_24

    .line 1121
    :cond_4a
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 1122
    if-nez v0, :cond_4b

    .line 1124
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 1126
    if-nez v0, :cond_4b

    .line 1128
    const/4 v6, 0x1

    .line 1130
    goto :goto_22

    .line 1131
    :cond_4b
    const/4 v6, 0x0

    .line 1132
    :goto_22
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    .line 1133
    move v4, v6

    .line 1136
    goto :goto_24

    .line 1137
    :cond_4c
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    iget-boolean v0, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 1141
    if-nez v0, :cond_4d

    .line 1143
    goto :goto_24

    .line 1145
    :cond_4d
    iget-object v0, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 1146
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getPossiblyMotionBounds()Landroid/graphics/Rect;

    .line 1148
    move-result-object v5

    .line 1151
    iget-object v6, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    .line 1152
    const/4 v7, 0x0

    .line 1154
    invoke-virtual {v6, v7, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 1155
    iget-object v6, v12, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 1158
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 1160
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1162
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    .line 1164
    iget-object v5, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 1167
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 1169
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 1171
    iget-object v7, v6, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 1173
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 1175
    int-to-float v7, v7

    .line 1177
    cmpl-float v5, v5, v7

    .line 1178
    if-ltz v5, :cond_4e

    .line 1180
    const/4 v10, 0x1

    .line 1182
    goto :goto_23

    .line 1183
    :cond_4e
    const/4 v10, 0x0

    .line 1184
    :goto_23
    iput-boolean v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    .line 1185
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 1187
    const/4 v7, 0x0

    .line 1189
    iput-boolean v7, v5, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 1190
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1192
    iget-object v5, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 1194
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 1196
    iput-object v5, v7, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 1198
    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 1200
    if-eqz v5, :cond_4f

    .line 1202
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1204
    move-result v5

    .line 1207
    if-nez v5, :cond_4f

    .line 1208
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 1210
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 1212
    move-result v5

    .line 1215
    if-eqz v5, :cond_4f

    .line 1216
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1218
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1220
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 1222
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1224
    invoke-virtual {v5, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1226
    :cond_4f
    :goto_24
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 1229
    move-result v0

    .line 1232
    const/4 v3, 0x1

    .line 1233
    xor-int/2addr v0, v3

    .line 1234
    and-int/2addr v0, v4

    .line 1235
    if-eqz v0, :cond_53

    .line 1236
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 1238
    move-result-object v0

    .line 1241
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 1242
    if-eqz v1, :cond_50

    .line 1244
    const/4 v1, 0x3

    .line 1246
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1247
    invoke-virtual {v11}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 1250
    move-result v1

    .line 1253
    if-eqz v1, :cond_50

    .line 1254
    iget-object v1, v11, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1256
    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1258
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 1260
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1262
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1264
    :cond_50
    iget-object v1, v11, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1267
    if-nez v1, :cond_51

    .line 1269
    goto :goto_25

    .line 1271
    :cond_51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 1272
    move-result v1

    .line 1275
    if-eqz v1, :cond_52

    .line 1276
    iget-object v1, v11, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1278
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1280
    goto :goto_25

    .line 1283
    :cond_52
    iget-object v1, v11, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 1284
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1286
    :goto_25
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1289
    :cond_53
    :goto_26
    return-void
    .line 1292
.end method
