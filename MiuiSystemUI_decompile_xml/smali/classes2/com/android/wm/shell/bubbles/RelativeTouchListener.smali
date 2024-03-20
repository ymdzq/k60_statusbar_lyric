.class public abstract Lcom/android/wm/shell/bubbles/RelativeTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public movedEnough:Z

.field public performedLongClick:Z

.field public final touchDown:Landroid/graphics/PointF;

.field public touchSlop:I

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 17
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 23
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 8
    move-result v3

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v4

    .line 15
    sub-float/2addr v3, v4

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 17
    move-result v4

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 21
    move-result v5

    .line 24
    sub-float/2addr v4, v5

    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 29
    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    neg-float v3, v3

    .line 34
    neg-float v4, v4

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 39
    move-result v3

    .line 42
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 43
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 45
    sub-float/2addr v3, v4

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 48
    move-result v4

    .line 51
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 52
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 54
    sub-float/2addr v4, v5

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 57
    move-result v5

    .line 60
    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 61
    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 63
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eqz v5, :cond_27

    .line 67
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v12, 0x2

    .line 71
    if-eq v5, v9, :cond_14

    .line 72
    if-eq v5, v12, :cond_1

    .line 74
    const/4 v2, 0x3

    .line 76
    if-eq v5, v2, :cond_0

    .line 77
    goto/16 :goto_1b

    .line 79
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 81
    move-result-object v1

    .line 84
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 88
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 90
    iput-boolean v8, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 93
    goto/16 :goto_1b

    .line 95
    :cond_1
    iget-boolean v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 97
    if-nez v5, :cond_2

    .line 99
    float-to-double v12, v3

    .line 101
    float-to-double v14, v4

    .line 102
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 103
    move-result-wide v12

    .line 106
    double-to-float v5, v12

    .line 107
    iget v12, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 108
    int-to-float v12, v12

    .line 110
    cmpl-float v5, v5, v12

    .line 111
    if-lez v5, :cond_2

    .line 113
    iget-boolean v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 115
    if-nez v5, :cond_2

    .line 117
    iput-boolean v9, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 121
    move-result-object v5

    .line 124
    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    :cond_2
    iget-boolean v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 128
    if-eqz v5, :cond_30

    .line 130
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 132
    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 134
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 136
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 138
    iget v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->$r8$classId:I

    .line 140
    packed-switch v13, :pswitch_data_0

    .line 142
    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setFlyoutStateForDragLength(F)V

    .line 148
    goto/16 :goto_1b

    .line 151
    :pswitch_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 153
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 155
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->onMove(F)V

    .line 157
    goto/16 :goto_1b

    .line 160
    :goto_0
    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 162
    iget-boolean v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 164
    if-nez v14, :cond_30

    .line 166
    iget-boolean v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 168
    if-eqz v14, :cond_3

    .line 170
    goto/16 :goto_1b

    .line 172
    :cond_3
    iget-object v13, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 174
    invoke-virtual {v13}, Lcom/android/wm/shell/bubbles/DismissView;->show()V

    .line 176
    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 179
    iget-boolean v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 181
    if-eqz v14, :cond_5

    .line 183
    iget-object v13, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 185
    if-eqz v13, :cond_5

    .line 187
    invoke-interface {v13}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 189
    move-result-object v13

    .line 192
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v13

    .line 196
    if-eqz v13, :cond_5

    .line 197
    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 199
    iget-boolean v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 201
    if-nez v14, :cond_5

    .line 203
    iget-object v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 205
    if-eqz v14, :cond_5

    .line 207
    invoke-interface {v14}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 209
    move-result-object v14

    .line 212
    if-nez v14, :cond_4

    .line 213
    goto :goto_1

    .line 215
    :cond_4
    iput-boolean v9, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 216
    iget-object v14, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 218
    sget-object v15, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 220
    invoke-static {v14}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 222
    move-result-object v14

    .line 225
    sget-object v15, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 226
    iget-object v10, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 228
    const v8, 0x43e0ffff    # 449.99997f

    .line 230
    invoke-virtual {v14, v15, v8, v11, v10}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 233
    sget-object v10, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 236
    iget-object v15, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 238
    invoke-virtual {v14, v10, v8, v11, v15}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 240
    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;

    .line 243
    invoke-direct {v8, v13, v9}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 245
    iget-object v10, v14, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v14}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 253
    iget-object v8, v13, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 256
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->reverse()V

    .line 258
    :cond_5
    :goto_1
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 261
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 263
    if-eqz v8, :cond_6

    .line 265
    invoke-virtual {v8, v2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    .line 267
    move-result v2

    .line 270
    if-eqz v2, :cond_6

    .line 271
    move v2, v9

    .line 273
    goto :goto_2

    .line 274
    :cond_6
    const/4 v2, 0x0

    .line 275
    :goto_2
    if-nez v2, :cond_30

    .line 276
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 278
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    .line 280
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 283
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 285
    iget-boolean v8, v8, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 287
    if-eqz v8, :cond_e

    .line 289
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 291
    add-float/2addr v12, v3

    .line 293
    add-float/2addr v5, v4

    .line 294
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 295
    if-nez v2, :cond_7

    .line 297
    goto/16 :goto_1b

    .line 299
    :cond_7
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 301
    const v4, 0x461c4000    # 10000.0f

    .line 303
    if-eqz v3, :cond_8

    .line 306
    iget-object v2, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 308
    check-cast v2, Landroid/view/View;

    .line 310
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 312
    move-result-object v2

    .line 315
    const/4 v3, 0x0

    .line 316
    new-array v7, v3, [Ljava/lang/Runnable;

    .line 317
    const/4 v8, 0x0

    .line 319
    iput-object v8, v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 320
    invoke-virtual {v2, v6, v12, v7}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 322
    new-array v6, v3, [Ljava/lang/Runnable;

    .line 325
    invoke-virtual {v2, v5, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 327
    iput v4, v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 330
    new-array v4, v3, [Ljava/lang/Runnable;

    .line 332
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 334
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 337
    iput-boolean v9, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 339
    goto :goto_3

    .line 341
    :cond_8
    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 342
    if-eqz v2, :cond_a

    .line 344
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 346
    filled-new-array {v6, v7}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 348
    move-result-object v3

    .line 351
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {v1, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    .line 355
    move-result v2

    .line 358
    if-eqz v2, :cond_9

    .line 359
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 361
    iget-object v2, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 363
    check-cast v2, Landroid/view/View;

    .line 365
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 367
    move-result-object v2

    .line 370
    const/4 v3, 0x0

    .line 371
    new-array v7, v3, [Ljava/lang/Runnable;

    .line 372
    const/4 v8, 0x0

    .line 374
    iput-object v8, v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 375
    invoke-virtual {v2, v6, v12, v7}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 377
    new-array v6, v3, [Ljava/lang/Runnable;

    .line 380
    invoke-virtual {v2, v5, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 382
    iput v4, v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 385
    new-array v4, v3, [Ljava/lang/Runnable;

    .line 387
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 389
    goto :goto_3

    .line 392
    :cond_9
    const/4 v3, 0x0

    .line 393
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 394
    :cond_a
    :goto_3
    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 396
    if-nez v2, :cond_b

    .line 398
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 400
    invoke-virtual {v2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    .line 402
    move-result v2

    .line 405
    if-nez v2, :cond_b

    .line 406
    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 408
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 411
    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 414
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewYTopAligned()F

    .line 416
    move-result v1

    .line 419
    iget v2, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    .line 420
    add-float v3, v1, v2

    .line 422
    cmpl-float v3, v5, v3

    .line 424
    if-gtz v3, :cond_d

    .line 426
    sub-float/2addr v1, v2

    .line 428
    cmpg-float v1, v5, v1

    .line 429
    if-gez v1, :cond_c

    .line 431
    goto :goto_4

    .line 433
    :cond_c
    const/4 v8, 0x0

    .line 434
    goto :goto_5

    .line 435
    :cond_d
    :goto_4
    move v8, v9

    .line 436
    :goto_5
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 437
    if-eq v8, v1, :cond_30

    .line 439
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 441
    iput-boolean v8, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 444
    goto/16 :goto_1b

    .line 446
    :cond_e
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 448
    move-result v1

    .line 451
    if-eqz v1, :cond_f

    .line 452
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 454
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 456
    const/4 v2, 0x0

    .line 458
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 459
    goto :goto_6

    .line 462
    :cond_f
    const/4 v2, 0x0

    .line 463
    :goto_6
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 464
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 466
    add-float/2addr v12, v3

    .line 468
    add-float/2addr v5, v4

    .line 469
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 470
    if-eqz v1, :cond_10

    .line 472
    const v1, 0x463b8000    # 12000.0f

    .line 474
    invoke-virtual {v0, v12, v5, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 477
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 480
    iput-boolean v9, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 482
    goto :goto_8

    .line 484
    :cond_10
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 485
    if-eqz v1, :cond_13

    .line 487
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 489
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-result-object v2

    .line 494
    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 495
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-result-object v1

    .line 500
    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 501
    iget-boolean v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 503
    if-nez v3, :cond_12

    .line 505
    iget-boolean v3, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 507
    if-eqz v3, :cond_11

    .line 509
    goto :goto_7

    .line 511
    :cond_11
    const/4 v3, 0x0

    .line 512
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 513
    goto :goto_8

    .line 515
    :cond_12
    :goto_7
    invoke-virtual {v2, v12}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 516
    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 519
    :cond_13
    :goto_8
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 522
    if-nez v1, :cond_30

    .line 524
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    .line 526
    move-result v1

    .line 529
    if-nez v1, :cond_30

    .line 530
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 532
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 534
    const v1, -0x7fffffff

    .line 537
    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 540
    invoke-virtual {v0, v6, v12}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 542
    invoke-virtual {v0, v7, v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 545
    const/4 v1, 0x0

    .line 548
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 549
    goto/16 :goto_1b

    .line 551
    :cond_14
    iget-boolean v4, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 553
    if-eqz v4, :cond_25

    .line 555
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 557
    const/16 v5, 0x3e8

    .line 559
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 561
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 564
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 566
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 568
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 570
    move-result v5

    .line 573
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 574
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 576
    move-result v6

    .line 579
    move-object v7, v0

    .line 580
    check-cast v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 581
    iget v8, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->$r8$classId:I

    .line 583
    packed-switch v8, :pswitch_data_1

    .line 585
    goto/16 :goto_12

    .line 588
    :pswitch_2
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 590
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 592
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 594
    move-result v1

    .line 597
    if-eqz v1, :cond_15

    .line 598
    const/high16 v2, -0x3b060000    # -2000.0f

    .line 600
    cmpg-float v2, v5, v2

    .line 602
    if-gez v2, :cond_16

    .line 604
    goto :goto_9

    .line 606
    :cond_15
    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 607
    cmpl-float v2, v5, v2

    .line 609
    if-lez v2, :cond_16

    .line 611
    :goto_9
    move v2, v9

    .line 613
    goto :goto_a

    .line 614
    :cond_16
    const/4 v2, 0x0

    .line 615
    :goto_a
    const/high16 v4, 0x3e800000    # 0.25f

    .line 616
    if-eqz v1, :cond_17

    .line 618
    iget-object v6, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 620
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 622
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    .line 624
    move-result v6

    .line 627
    neg-int v6, v6

    .line 628
    int-to-float v6, v6

    .line 629
    mul-float/2addr v6, v4

    .line 630
    cmpg-float v3, v3, v6

    .line 631
    if-gez v3, :cond_18

    .line 633
    goto :goto_b

    .line 635
    :cond_17
    iget-object v6, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 636
    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 638
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    .line 640
    move-result v6

    .line 643
    int-to-float v6, v6

    .line 644
    mul-float/2addr v6, v4

    .line 645
    cmpl-float v3, v3, v6

    .line 646
    if-lez v3, :cond_18

    .line 648
    :goto_b
    move v3, v9

    .line 650
    goto :goto_c

    .line 651
    :cond_18
    const/4 v3, 0x0

    .line 652
    :goto_c
    if-eqz v1, :cond_19

    .line 653
    cmpl-float v1, v5, v11

    .line 655
    if-lez v1, :cond_1a

    .line 657
    goto :goto_d

    .line 659
    :cond_19
    cmpg-float v1, v5, v11

    .line 660
    if-gez v1, :cond_1a

    .line 662
    :goto_d
    move v1, v9

    .line 664
    goto :goto_e

    .line 665
    :cond_1a
    const/4 v1, 0x0

    .line 666
    :goto_e
    if-nez v2, :cond_1c

    .line 667
    if-eqz v3, :cond_1b

    .line 669
    if-nez v1, :cond_1b

    .line 671
    goto :goto_f

    .line 673
    :cond_1b
    const/4 v1, 0x0

    .line 674
    goto :goto_10

    .line 675
    :cond_1c
    :goto_f
    move v1, v9

    .line 676
    :goto_10
    iget-object v2, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 677
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 679
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 681
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 683
    iget-object v2, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 686
    invoke-virtual {v2, v5, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(FZ)V

    .line 688
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 691
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    .line 693
    goto :goto_11

    .line 696
    :pswitch_3
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 697
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 699
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->onUp(F)V

    .line 701
    :goto_11
    const/4 v2, 0x0

    .line 704
    goto/16 :goto_17

    .line 705
    :goto_12
    iget-object v8, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 707
    iget-boolean v10, v8, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 709
    if-eqz v10, :cond_1d

    .line 711
    goto :goto_11

    .line 713
    :cond_1d
    iget-boolean v10, v8, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 714
    if-eqz v10, :cond_1e

    .line 716
    const/4 v10, 0x0

    .line 718
    iput-boolean v10, v8, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 719
    move v2, v10

    .line 721
    goto/16 :goto_17

    .line 722
    :cond_1e
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 724
    if-eqz v8, :cond_1f

    .line 726
    invoke-virtual {v8, v2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    .line 728
    move-result v2

    .line 731
    if-eqz v2, :cond_1f

    .line 732
    move v2, v9

    .line 734
    goto :goto_13

    .line 735
    :cond_1f
    const/4 v2, 0x0

    .line 736
    :goto_13
    if-nez v2, :cond_24

    .line 737
    iget-object v2, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 739
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 741
    iget-boolean v8, v8, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 743
    if-eqz v8, :cond_21

    .line 745
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 747
    invoke-virtual {v2, v1, v5, v6}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    .line 749
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 752
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 754
    if-nez v2, :cond_20

    .line 756
    goto :goto_16

    .line 758
    :cond_20
    const/4 v2, 0x0

    .line 759
    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 760
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 762
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 764
    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 766
    move-result-object v2

    .line 769
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 770
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 772
    const v5, 0x43f9ffff    # 499.99997f

    .line 774
    invoke-virtual {v2, v3, v5, v11, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 777
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 780
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 782
    invoke-virtual {v2, v3, v5, v11, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 784
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;

    .line 787
    invoke-direct {v3, v1, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda20;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 789
    iget-object v4, v2, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 792
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 797
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 800
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 802
    goto :goto_16

    .line 805
    :cond_21
    iget-boolean v1, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 806
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 808
    add-float/2addr v4, v3

    .line 810
    invoke-virtual {v8, v4, v5, v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    .line 811
    move-result v3

    .line 814
    cmpg-float v3, v3, v11

    .line 815
    if-gtz v3, :cond_22

    .line 817
    move v3, v9

    .line 819
    goto :goto_14

    .line 820
    :cond_22
    const/4 v3, 0x0

    .line 821
    :goto_14
    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 822
    iget-object v2, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 824
    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 826
    if-eq v1, v3, :cond_23

    .line 828
    move v1, v9

    .line 830
    goto :goto_15

    .line 831
    :cond_23
    const/4 v1, 0x0

    .line 832
    :goto_15
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    .line 833
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 836
    const/4 v2, 0x7

    .line 838
    const/4 v3, 0x0

    .line 839
    invoke-virtual {v1, v3, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 840
    :goto_16
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 843
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 845
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 847
    :cond_24
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 850
    const/4 v2, 0x0

    .line 852
    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 853
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 855
    goto :goto_17

    .line 858
    :cond_25
    const/4 v2, 0x0

    .line 859
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 860
    if-nez v3, :cond_26

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->performClick()Z

    .line 864
    goto :goto_17

    .line 867
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 868
    move-result-object v1

    .line 871
    const/4 v3, 0x0

    .line 872
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 873
    :goto_17
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 876
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 878
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->movedEnough:Z

    .line 881
    goto/16 :goto_1b

    .line 883
    :cond_27
    move-object v3, v0

    .line 885
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 886
    iget v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->$r8$classId:I

    .line 888
    packed-switch v4, :pswitch_data_2

    .line 890
    goto :goto_18

    .line 893
    :pswitch_4
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 894
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 896
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 898
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 900
    goto/16 :goto_1a

    .line 903
    :pswitch_5
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 905
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 912
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    goto/16 :goto_1a

    .line 918
    :goto_18
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 920
    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 922
    if-eqz v5, :cond_28

    .line 924
    goto/16 :goto_1a

    .line 926
    :cond_28
    const/4 v5, 0x0

    .line 928
    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 929
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    .line 931
    move-result v4

    .line 934
    if-eqz v4, :cond_29

    .line 935
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 937
    iput-boolean v9, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 939
    goto/16 :goto_1a

    .line 941
    :cond_29
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 943
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 945
    move-result v4

    .line 948
    if-eqz v4, :cond_2a

    .line 949
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 951
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 953
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 955
    :cond_2a
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 958
    iget-boolean v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 960
    if-eqz v8, :cond_2b

    .line 962
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 964
    :cond_2b
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 967
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 969
    iget-boolean v5, v5, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 971
    if-eqz v5, :cond_2d

    .line 973
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 975
    if-eqz v4, :cond_2c

    .line 977
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    .line 979
    :cond_2c
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 982
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 984
    iget-object v6, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 986
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 988
    iget-object v7, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 990
    invoke-virtual {v7, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 992
    const v7, 0x46fffe00    # 32767.0f

    .line 995
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 998
    new-instance v7, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 1001
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1003
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1005
    move-result-object v8

    .line 1008
    invoke-direct {v7, v5, v8, v1, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 1009
    iput-object v7, v5, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 1012
    iget-object v7, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 1014
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1019
    new-instance v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    .line 1022
    invoke-direct {v7, v6}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 1024
    iget-object v6, v6, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    .line 1027
    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1029
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 1032
    iput-object v4, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    .line 1034
    iput-boolean v9, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    .line 1036
    const v4, 0x45bb8000    # 6000.0f

    .line 1038
    iput v4, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 1041
    sget-boolean v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 1043
    iput-boolean v4, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    .line 1045
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1047
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 1049
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1052
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 1054
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 1056
    iput-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1058
    goto/16 :goto_19

    .line 1060
    :cond_2d
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1062
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 1064
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 1067
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1070
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 1072
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1077
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 1079
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1084
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1086
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1088
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 1090
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1093
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 1095
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1098
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 1100
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1102
    if-nez v8, :cond_2e

    .line 1104
    new-instance v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1106
    iget-object v10, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1108
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1110
    move-result-object v12

    .line 1113
    new-instance v14, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 1114
    invoke-direct {v14, v5, v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 1116
    new-instance v15, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 1119
    invoke-direct {v15, v5, v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 1121
    move-object v10, v8

    .line 1124
    move-object v11, v5

    .line 1125
    move-object v13, v5

    .line 1126
    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroid/content/Context;Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;)V

    .line 1127
    iput-object v8, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1130
    iput-boolean v9, v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    .line 1132
    const/high16 v6, 0x457a0000    # 4000.0f

    .line 1134
    iput v6, v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 1136
    sget-boolean v6, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 1138
    iput-boolean v6, v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    .line 1140
    :cond_2e
    iget-object v6, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 1142
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1144
    move-result-object v6

    .line 1147
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1148
    move-result-object v6

    .line 1151
    iget-object v7, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1152
    iget v7, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 1154
    const-string v8, "bubble_dismiss_fling_min_velocity"

    .line 1156
    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 1158
    move-result v7

    .line 1161
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1162
    iget v8, v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    .line 1164
    const-string v10, "bubble_dismiss_stick_max_velocity"

    .line 1166
    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 1168
    move-result v8

    .line 1171
    iget-object v10, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1172
    iget v10, v10, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    .line 1174
    const-string v11, "bubble_dismiss_target_width_percent"

    .line 1176
    invoke-static {v6, v11, v10}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 1178
    move-result v6

    .line 1181
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 1182
    iput v7, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 1184
    iput v8, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    .line 1186
    iput v6, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    .line 1188
    iput-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1190
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1192
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1194
    iget-object v4, v4, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 1196
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1198
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1201
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1203
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 1205
    iget-object v5, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 1207
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    new-instance v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    .line 1215
    invoke-direct {v5, v4}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 1217
    iget-object v4, v4, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    .line 1220
    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1222
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1225
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1227
    iget-object v6, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 1229
    iput-object v6, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    .line 1231
    iput-boolean v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 1233
    const/4 v5, 0x0

    .line 1235
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 1236
    :goto_19
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1239
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 1241
    if-eqz v3, :cond_2f

    .line 1243
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1245
    move-result v3

    .line 1248
    :cond_2f
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1249
    move-result-object v3

    .line 1252
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1253
    move-result-object v3

    .line 1256
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1257
    move-result v3

    .line 1260
    iput v3, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchSlop:I

    .line 1261
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 1265
    move-result v4

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 1269
    move-result v2

    .line 1272
    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1273
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 1278
    move-result v3

    .line 1281
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 1282
    move-result v4

    .line 1285
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1286
    const/4 v2, 0x0

    .line 1289
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 1290
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 1292
    move-result-object v2

    .line 1295
    new-instance v3, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;

    .line 1296
    invoke-direct {v3, v1, v0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;-><init>(Landroid/view/View;Lcom/android/wm/shell/bubbles/RelativeTouchListener;)V

    .line 1298
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 1301
    move-result v0

    .line 1304
    int-to-long v0, v0

    .line 1305
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1306
    :cond_30
    :goto_1b
    return v9

    .line 1309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1310
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1318
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
    .line 1326
.end method
