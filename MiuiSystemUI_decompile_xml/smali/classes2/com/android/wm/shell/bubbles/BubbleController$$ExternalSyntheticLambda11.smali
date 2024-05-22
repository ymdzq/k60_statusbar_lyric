.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    check-cast p1, Ljava/io/PrintWriter;

    .line 4
    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p2, "BubbleController state:"

    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string/jumbo v0, "selected: "

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "null"

    .line 36
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-string v0, "expanded: "

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 48
    const-string/jumbo v0, "stack bubble count:    "

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 57
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 82
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/PrintWriter;)V

    .line 84
    goto :goto_1

    .line 87
    :cond_1
    const-string v0, "overflow bubble count:    "

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 93
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v0

    .line 107
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 117
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 118
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/bubbles/Bubble;->dump(Ljava/io/PrintWriter;)V

    .line 120
    goto :goto_2

    .line 123
    :cond_2
    const-string/jumbo v0, "summaryKeys: "

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 130
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 132
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 136
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 139
    move-result-object p2

    .line 142
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p2

    .line 146
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    const-string v1, "   suppressing: "

    .line 159
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 161
    goto :goto_3

    .line 164
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 165
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 168
    if-eqz p2, :cond_b

    .line 170
    const-string v0, "Stack view state:"

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubblesOnScreen()Ljava/util/List;

    .line 177
    move-result-object v0

    .line 180
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 181
    move-result-object v1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v0

    .line 193
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v3

    .line 197
    if-eqz v3, :cond_7

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 203
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 204
    if-nez v3, :cond_4

    .line 206
    const-string v3, "   <null> !!!!!\n"

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_4

    .line 213
    :cond_4
    if-eqz v1, :cond_5

    .line 214
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 216
    move-result-object v4

    .line 219
    const-string v5, "Overflow"

    .line 220
    if-eq v4, v5, :cond_5

    .line 222
    if-ne v3, v1, :cond_5

    .line 224
    const/4 v4, 0x1

    .line 226
    goto :goto_5

    .line 227
    :cond_5
    const/4 v4, 0x0

    .line 228
    :goto_5
    if-eqz v4, :cond_6

    .line 229
    const-string v4, "=>"

    .line 231
    goto :goto_6

    .line 233
    :cond_6
    const-string v4, "  "

    .line 234
    :goto_6
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    .line 236
    move-result-wide v5

    .line 239
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    move-result-object v5

    .line 243
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 244
    move-result v6

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v6

    .line 251
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 252
    filled-new-array {v4, v5, v6, v3}, [Ljava/lang/Object;

    .line 254
    move-result-object v3

    .line 257
    const-string v4, "%s Bubble{act=%12d, showInShade=%d, key=%s}\n"

    .line 258
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    goto :goto_4

    .line 267
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 271
    const-string v1, "  bubbles on screen:       "

    .line 272
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    const-string v0, "  gestureInProgress:       "

    .line 280
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 287
    const-string v0, "  showingDismiss:          "

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 295
    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 299
    const-string v0, "  isExpansionAnimating:    "

    .line 302
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 307
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 309
    const-string v0, "  expandedContainerVis:    "

    .line 312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 317
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 319
    move-result v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 323
    const-string v0, "  expandedContainerAlpha:  "

    .line 326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 331
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 333
    move-result v0

    .line 336
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 337
    const-string v0, "  expandedContainerMatrix: "

    .line 340
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 345
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimationMatrix()Landroid/graphics/Matrix;

    .line 347
    move-result-object v0

    .line 350
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    const-string v1, "StackAnimationController state:"

    .line 359
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const-string v1, "  isActive:             "

    .line 364
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 369
    move-result v1

    .line 372
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 373
    const-string v1, "  restingStackPos:      "

    .line 376
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 381
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 383
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    .line 387
    move-result-object v1

    .line 390
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v1, "  currentStackPos:      "

    .line 394
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 399
    invoke-virtual {v1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 404
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v1, "  isMovingFromFlinging: "

    .line 408
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 413
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 415
    const-string v1, "  withinDismiss:        "

    .line 418
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    .line 423
    move-result v1

    .line 426
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 427
    const-string v1, "  firstBubbleSpringing: "

    .line 430
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 435
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 437
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    const-string v1, "ExpandedAnimationController state:"

    .line 445
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const-string v1, "  isActive:          "

    .line 450
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 455
    move-result v1

    .line 458
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 459
    const-string v1, "  animatingExpand:   "

    .line 462
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 467
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 469
    const-string v1, "  animatingCollapse: "

    .line 472
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 477
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 479
    const-string v1, "  springingBubble:   "

    .line 482
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 487
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 489
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 492
    if-eqz v0, :cond_a

    .line 494
    const-string v0, "Expanded bubble state:"

    .line 496
    const-string v1, "  expandedBubbleKey: "

    .line 498
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    move-result-object v0

    .line 503
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 504
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 506
    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 520
    invoke-interface {p2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 522
    move-result-object p2

    .line 525
    if-eqz p2, :cond_9

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    .line 528
    const-string v1, "  expandedViewVis:    "

    .line 530
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 535
    move-result v1

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    .line 549
    const-string v1, "  expandedViewAlpha:  "

    .line 551
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 556
    move-result v1

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    move-result-object v0

    .line 566
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "  expandedViewTaskId: "

    .line 572
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskId()I

    .line 577
    move-result v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    move-result-object v0

    .line 587
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/taskview/TaskView;

    .line 591
    move-result-object p2

    .line 594
    if-eqz p2, :cond_8

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    .line 597
    const-string v1, "  activityViewVis:    "

    .line 599
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 604
    move-result v1

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    move-result-object v0

    .line 614
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "  activityViewAlpha:  "

    .line 620
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 625
    move-result p2

    .line 628
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object p2

    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    goto :goto_7

    .line 639
    :cond_8
    const-string p2, "  activityView is null"

    .line 640
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    goto :goto_7

    .line 645
    :cond_9
    const-string p2, "Expanded bubble view state: expanded bubble view is null"

    .line 646
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    goto :goto_7

    .line 651
    :cond_a
    const-string p2, "Expanded bubble state: expanded bubble is null"

    .line 652
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    :cond_b
    :goto_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 657
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 660
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 662
    const-string p2, "mSelectedBubbleKey: "

    .line 664
    const-string v0, "mIsStackExpanded: "

    .line 666
    monitor-enter p0

    .line 668
    :try_start_0
    const-string v1, "BubbleImpl.CachedState state:"

    .line 669
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    .line 674
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mIsStackExpanded:Z

    .line 679
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    move-result-object v0

    .line 687
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    .line 691
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSelectedBubbleKey:Ljava/lang/String;

    .line 696
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    move-result-object p2

    .line 704
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const-string p2, "mSuppressedBubbleKeys: "

    .line 708
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedBubbleKeys:Ljava/util/HashSet;

    .line 713
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 715
    move-result p2

    .line 718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 719
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedBubbleKeys:Ljava/util/HashSet;

    .line 722
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 724
    move-result-object p2

    .line 727
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 728
    move-result v0

    .line 731
    if-eqz v0, :cond_c

    .line 732
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 734
    move-result-object v0

    .line 737
    check-cast v0, Ljava/lang/String;

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    .line 740
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    const-string v2, "   suppressing: "

    .line 745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    move-result-object v0

    .line 756
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    goto :goto_8

    .line 760
    :cond_c
    const-string p2, "mSuppressedGroupToNotifKeys: "

    .line 761
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 766
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 768
    move-result p2

    .line 771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 772
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 775
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 777
    move-result-object p2

    .line 780
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 781
    move-result-object p2

    .line 784
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 785
    move-result v0

    .line 788
    if-eqz v0, :cond_d

    .line 789
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    move-result-object v0

    .line 794
    check-cast v0, Ljava/lang/String;

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    .line 797
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    const-string v2, "   suppressing: "

    .line 802
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    move-result-object v0

    .line 813
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    goto :goto_9

    .line 817
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 818
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    const-string v0, "mAppBubbleTaskIds: "

    .line 823
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 828
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 830
    move-result-object v0

    .line 833
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    move-result-object p2

    .line 840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    monitor-exit p0

    .line 844
    return-void

    .line 845
    :catchall_0
    move-exception p1

    .line 846
    monitor-exit p0

    .line 847
    throw p1
    .line 848
.end method
