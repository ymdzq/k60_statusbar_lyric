.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->$r8$classId:I

    .line 4
    const/4 v2, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    goto/16 :goto_5c

    .line 10
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 12
    sget v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->$r8$clinit:I

    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    .line 16
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 21
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 23
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    goto :goto_2

    .line 30
    :cond_0
    move v3, v4

    .line 31
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v5

    .line 35
    if-ge v3, v5, :cond_3

    .line 36
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 38
    move-result-object v5

    .line 41
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    .line 50
    move-result v6

    .line 53
    instance-of v7, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 54
    if-eqz v7, :cond_1

    .line 56
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 58
    move-result v5

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v5

    .line 66
    :goto_1
    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 67
    add-int/2addr v5, v7

    .line 69
    iget v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 70
    if-ge v6, v7, :cond_2

    .line 72
    add-int/2addr v7, v5

    .line 74
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 75
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 81
    :goto_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 84
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 86
    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    .line 88
    move-result v5

    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v5, :cond_4

    .line 93
    move v5, v6

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 97
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 99
    move-result v5

    .line 102
    :goto_3
    iput v5, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 103
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 105
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 107
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 109
    move-result v3

    .line 112
    xor-int/2addr v3, v2

    .line 113
    const/high16 v5, 0x3f800000    # 1.0f

    .line 114
    if-nez v3, :cond_5

    .line 116
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 118
    if-eqz v3, :cond_d

    .line 120
    :cond_5
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 122
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 126
    move-result v7

    .line 129
    move v8, v4

    .line 130
    :goto_4
    if-ge v8, v7, :cond_d

    .line 131
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 133
    move-result-object v9

    .line 136
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 137
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 139
    move-result-object v10

    .line 142
    if-eqz v10, :cond_6

    .line 143
    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 145
    if-ne v10, v2, :cond_6

    .line 147
    move v10, v2

    .line 149
    goto :goto_5

    .line 150
    :cond_6
    move v10, v4

    .line 151
    :goto_5
    if-eqz v10, :cond_8

    .line 152
    filled-new-array {v9}, [Landroid/view/View;

    .line 154
    move-result-object v10

    .line 157
    invoke-static {v10}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 158
    move-result-object v10

    .line 161
    invoke-interface {v10}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 162
    move-result-object v10

    .line 165
    invoke-interface {v10}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 166
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 169
    move-result-object v10

    .line 172
    if-nez v10, :cond_7

    .line 173
    goto :goto_6

    .line 175
    :cond_7
    iput-boolean v4, v10, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 176
    :goto_6
    invoke-virtual {v9, v5}, Landroid/view/View;->setScaleX(F)V

    .line 178
    invoke-virtual {v9, v5}, Landroid/view/View;->setScaleY(F)V

    .line 181
    invoke-virtual {v9, v6}, Landroid/view/View;->setRotationX(F)V

    .line 184
    :cond_8
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 187
    if-eqz v10, :cond_c

    .line 189
    move-object v10, v9

    .line 191
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 192
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 194
    move-result-object v10

    .line 197
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 198
    move-result v9

    .line 201
    if-eqz v9, :cond_c

    .line 202
    if-eqz v10, :cond_c

    .line 204
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object v9

    .line 209
    :cond_9
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v10

    .line 213
    if-eqz v10, :cond_c

    .line 214
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v10

    .line 219
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 220
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 222
    move-result-object v11

    .line 225
    if-eqz v11, :cond_a

    .line 226
    iget-boolean v11, v11, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 228
    if-ne v11, v2, :cond_a

    .line 230
    move v11, v2

    .line 232
    goto :goto_8

    .line 233
    :cond_a
    move v11, v4

    .line 234
    :goto_8
    if-eqz v11, :cond_9

    .line 235
    filled-new-array {v10}, [Landroid/view/View;

    .line 237
    move-result-object v11

    .line 240
    invoke-static {v11}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 241
    move-result-object v11

    .line 244
    invoke-interface {v11}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 245
    move-result-object v11

    .line 248
    invoke-interface {v11}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 249
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 252
    move-result-object v11

    .line 255
    if-nez v11, :cond_b

    .line 256
    goto :goto_9

    .line 258
    :cond_b
    iput-boolean v4, v11, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 259
    :goto_9
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleX(F)V

    .line 261
    invoke-virtual {v10, v5}, Landroid/view/View;->setScaleY(F)V

    .line 264
    invoke-virtual {v10, v6}, Landroid/view/View;->setRotationX(F)V

    .line 267
    goto :goto_7

    .line 270
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 271
    goto/16 :goto_4

    .line 273
    :cond_d
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 275
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 277
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    .line 279
    move-result v8

    .line 282
    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 285
    move-result v10

    .line 288
    move v11, v4

    .line 289
    :goto_a
    if-ge v11, v10, :cond_e

    .line 290
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 292
    move-result-object v12

    .line 295
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 296
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 298
    add-int/lit8 v11, v11, 0x1

    .line 301
    goto :goto_a

    .line 303
    :cond_e
    iget v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 304
    iget-object v15, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 306
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    neg-int v10, v10

    .line 311
    int-to-float v10, v10

    .line 312
    iput v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 313
    iput v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 315
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 317
    move-result v10

    .line 320
    iget-object v14, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 326
    move v11, v4

    .line 329
    move v12, v11

    .line 330
    :goto_b
    if-ge v11, v10, :cond_12

    .line 331
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 333
    move-result-object v13

    .line 336
    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 337
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 339
    move-result v2

    .line 342
    const/16 v4, 0x8

    .line 343
    if-eq v2, v4, :cond_11

    .line 345
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 347
    if-ne v13, v2, :cond_f

    .line 349
    goto :goto_d

    .line 351
    :cond_f
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 352
    move-result-object v2

    .line 355
    iput v12, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 356
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v12, v12, 0x1

    .line 361
    instance-of v2, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 363
    if-eqz v2, :cond_11

    .line 365
    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 367
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 369
    move-result-object v2

    .line 372
    iget-boolean v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 373
    if-eqz v13, :cond_11

    .line 375
    if-eqz v2, :cond_11

    .line 377
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 379
    move-result-object v2

    .line 382
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    move-result v13

    .line 386
    if-eqz v13, :cond_11

    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    move-result-object v13

    .line 392
    check-cast v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 393
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 395
    move-result v6

    .line 398
    if-eq v6, v4, :cond_10

    .line 399
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 401
    move-result-object v6

    .line 404
    iput v12, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 405
    add-int/lit8 v12, v12, 0x1

    .line 407
    :cond_10
    const/4 v6, 0x0

    .line 409
    goto :goto_c

    .line 410
    :cond_11
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 411
    const/4 v2, 0x1

    .line 413
    const/4 v4, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    goto :goto_b

    .line 416
    :cond_12
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 417
    move-result v2

    .line 420
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;->mLatestVisibleChildrenCount:I

    .line 421
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 423
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    .line 426
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 428
    move-result-object v4

    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v9, 0x0

    .line 433
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    move-result v10

    .line 437
    const/16 v17, 0x0

    .line 438
    if-eqz v10, :cond_17

    .line 440
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    move-result-object v10

    .line 445
    add-int/lit8 v11, v6, 0x1

    .line 446
    if-ltz v6, :cond_16

    .line 448
    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 450
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 452
    move-result-object v12

    .line 455
    if-eqz v2, :cond_15

    .line 456
    add-int/lit8 v13, v6, 0x2

    .line 458
    move/from16 v19, v2

    .line 460
    if-gez v13, :cond_13

    .line 462
    const/4 v5, 0x0

    .line 464
    goto :goto_f

    .line 465
    :cond_13
    move v5, v13

    .line 466
    :goto_f
    const/16 v2, 0xa

    .line 467
    if-le v5, v2, :cond_14

    .line 469
    move v5, v2

    .line 471
    :cond_14
    int-to-float v2, v5

    .line 472
    const/high16 v5, 0x41200000    # 10.0f

    .line 473
    div-float/2addr v2, v5

    .line 475
    const/high16 v17, 0x3f800000    # 1.0f

    .line 476
    sub-float v2, v17, v2

    .line 478
    int-to-float v13, v13

    .line 480
    move-object/from16 v20, v4

    .line 481
    iget v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->springLength:F

    .line 483
    mul-float/2addr v13, v4

    .line 485
    div-float/2addr v13, v5

    .line 486
    mul-float/2addr v13, v2

    .line 487
    add-float/2addr v13, v9

    .line 488
    add-float/2addr v4, v13

    .line 489
    float-to-int v2, v4

    .line 490
    iput v2, v12, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 491
    move v9, v13

    .line 493
    goto :goto_10

    .line 494
    :cond_15
    move/from16 v19, v2

    .line 495
    move-object/from16 v20, v4

    .line 497
    :goto_10
    const v2, 0x7f0a05c5    # @id/miui_child_index_hint

    .line 499
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    move-result-object v4

    .line 505
    invoke-virtual {v10, v2, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 506
    move v6, v11

    .line 509
    move/from16 v2, v19

    .line 510
    move-object/from16 v4, v20

    .line 512
    const/high16 v5, 0x3f800000    # 1.0f

    .line 514
    goto :goto_e

    .line 516
    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 517
    throw v17

    .line 520
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    .line 521
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 526
    move-result-object v4

    .line 529
    :cond_18
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    move-result v5

    .line 533
    if-eqz v5, :cond_1a

    .line 534
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    move-result-object v5

    .line 539
    move-object v6, v5

    .line 540
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 541
    instance-of v9, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 543
    if-eqz v9, :cond_19

    .line 545
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 547
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 549
    if-eqz v6, :cond_19

    .line 551
    const/4 v6, 0x1

    .line 553
    goto :goto_12

    .line 554
    :cond_19
    const/4 v6, 0x0

    .line 555
    :goto_12
    if-eqz v6, :cond_18

    .line 556
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    goto :goto_11

    .line 561
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 562
    move-result-object v2

    .line 565
    const/4 v4, 0x0

    .line 566
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 567
    move-result v5

    .line 570
    if-eqz v5, :cond_20

    .line 571
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 573
    move-result-object v5

    .line 576
    add-int/lit8 v6, v4, 0x1

    .line 577
    if-ltz v4, :cond_1f

    .line 579
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 581
    if-nez v4, :cond_1d

    .line 583
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 585
    move-result-object v4

    .line 588
    if-nez v4, :cond_1b

    .line 589
    goto :goto_14

    .line 591
    :cond_1b
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 592
    move-result v9

    .line 595
    int-to-float v9, v9

    .line 596
    neg-float v9, v9

    .line 597
    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 598
    :goto_14
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 601
    move-result-object v4

    .line 604
    if-nez v4, :cond_1c

    .line 605
    goto :goto_15

    .line 607
    :cond_1c
    const/high16 v5, 0x3f800000    # 1.0f

    .line 608
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 610
    goto :goto_15

    .line 613
    :cond_1d
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 614
    move-result-object v4

    .line 617
    if-nez v4, :cond_1e

    .line 618
    goto :goto_15

    .line 620
    :cond_1e
    const/4 v5, 0x0

    .line 621
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 622
    :goto_15
    move v4, v6

    .line 625
    goto :goto_13

    .line 626
    :cond_1f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 627
    throw v17

    .line 630
    :cond_20
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 631
    move-result v2

    .line 634
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    .line 635
    if-eqz v2, :cond_21

    .line 637
    move-object v2, v4

    .line 639
    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 640
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 642
    move-result v2

    .line 645
    if-eqz v2, :cond_22

    .line 646
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 648
    move-result v2

    .line 651
    if-eqz v2, :cond_22

    .line 652
    :cond_21
    iget v2, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 654
    iget v5, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    .line 656
    add-float/2addr v2, v5

    .line 658
    iput v2, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 659
    iget v2, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 661
    add-float/2addr v2, v5

    .line 663
    iput v2, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 664
    :cond_22
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 666
    move-result v2

    .line 669
    const/4 v5, 0x0

    .line 670
    :goto_16
    const/4 v13, 0x2

    .line 671
    if-ge v5, v2, :cond_44

    .line 672
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 674
    move-result-object v9

    .line 677
    move-object v12, v9

    .line 678
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 679
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 681
    move-result-object v11

    .line 684
    const/4 v9, 0x0

    .line 685
    iput v9, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 686
    if-lez v5, :cond_23

    .line 688
    add-int/lit8 v9, v5, -0x1

    .line 690
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 692
    move-result-object v9

    .line 695
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 696
    goto :goto_17

    .line 698
    :cond_23
    move-object/from16 v9, v17

    .line 699
    :goto_17
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    .line 701
    check-cast v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 703
    invoke-virtual {v10, v12, v9}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->beginsSection(Landroid/view/View;Landroid/view/View;)Z

    .line 705
    move-result v10

    .line 708
    if-eqz v10, :cond_24

    .line 709
    if-lez v5, :cond_24

    .line 711
    instance-of v9, v9, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 713
    if-nez v9, :cond_24

    .line 715
    instance-of v9, v12, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 717
    if-nez v9, :cond_24

    .line 719
    const/4 v9, 0x1

    .line 721
    goto :goto_18

    .line 722
    :cond_24
    const/4 v9, 0x0

    .line 723
    :goto_18
    if-eqz v9, :cond_25

    .line 724
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 726
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 728
    move-result v10

    .line 731
    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapForLocation(FZ)F

    .line 732
    move-result v9

    .line 735
    iget v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 736
    const/high16 v18, 0x3f800000    # 1.0f

    .line 738
    mul-float v19, v9, v18

    .line 740
    add-float v10, v19, v10

    .line 742
    iput v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 744
    iget v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 746
    add-float/2addr v10, v9

    .line 748
    iput v10, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 749
    :cond_25
    iget-boolean v9, v11, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 751
    if-nez v9, :cond_26

    .line 753
    iget v9, v15, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 755
    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 757
    :cond_26
    iget v9, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 760
    iget v10, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 762
    int-to-float v10, v10

    .line 764
    add-float/2addr v9, v10

    .line 765
    iget v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 766
    add-float v19, v9, v10

    .line 768
    iget-boolean v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 770
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 772
    move-result v20

    .line 775
    iget v9, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 776
    const/16 v16, 0x0

    .line 778
    cmpl-float v9, v9, v16

    .line 780
    if-ltz v9, :cond_27

    .line 782
    const/16 v21, 0x1

    .line 784
    goto :goto_19

    .line 786
    :cond_27
    const/16 v21, 0x0

    .line 787
    :goto_19
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 789
    move/from16 v22, v9

    .line 791
    move-object v9, v3

    .line 793
    move/from16 v23, v10

    .line 794
    move-object v10, v11

    .line 796
    move-object v6, v11

    .line 797
    move/from16 v11, v23

    .line 798
    move/from16 v23, v2

    .line 800
    move-object v2, v12

    .line 802
    move/from16 v12, v20

    .line 803
    move v0, v13

    .line 805
    move/from16 v13, v21

    .line 806
    move-object/from16 v20, v14

    .line 808
    move/from16 v14, v19

    .line 810
    move-object v0, v15

    .line 812
    move/from16 v15, v22

    .line 813
    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->maybeUpdateHeadsUpIsVisible(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZZZFF)V

    .line 815
    instance-of v9, v2, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 818
    if-eqz v9, :cond_30

    .line 820
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 822
    const/4 v10, 0x1

    .line 824
    xor-int/2addr v9, v10

    .line 825
    if-eqz v9, :cond_28

    .line 826
    iput-boolean v10, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 828
    move-object/from16 v10, v20

    .line 830
    goto/16 :goto_29

    .line 832
    :cond_28
    iget v9, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 834
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 836
    move-result v10

    .line 839
    int-to-float v10, v10

    .line 840
    add-float/2addr v9, v10

    .line 841
    iget v10, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    .line 842
    cmpl-float v9, v9, v10

    .line 844
    if-lez v9, :cond_29

    .line 846
    const/4 v9, 0x1

    .line 848
    goto :goto_1a

    .line 849
    :cond_29
    const/4 v9, 0x0

    .line 850
    :goto_1a
    move-object v11, v6

    .line 851
    check-cast v11, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    .line 852
    if-nez v9, :cond_2f

    .line 854
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    .line 856
    if-eqz v9, :cond_2d

    .line 858
    const/4 v9, 0x0

    .line 860
    :goto_1b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    .line 861
    move-result v10

    .line 864
    if-ge v9, v10, :cond_2c

    .line 865
    move-object/from16 v10, v20

    .line 867
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 869
    move-result-object v12

    .line 872
    check-cast v12, Landroid/view/View;

    .line 873
    instance-of v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 875
    if-nez v13, :cond_2a

    .line 877
    goto :goto_1c

    .line 879
    :cond_2a
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 880
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    .line 882
    move-result v12

    .line 885
    if-nez v12, :cond_2b

    .line 886
    const/4 v9, 0x1

    .line 888
    goto :goto_1d

    .line 889
    :cond_2b
    :goto_1c
    add-int/lit8 v9, v9, 0x1

    .line 890
    move-object/from16 v20, v10

    .line 892
    goto :goto_1b

    .line 894
    :cond_2c
    move-object/from16 v10, v20

    .line 895
    const/4 v9, 0x0

    .line 897
    :goto_1d
    if-nez v9, :cond_2e

    .line 898
    goto :goto_1e

    .line 900
    :cond_2d
    move-object/from16 v10, v20

    .line 901
    :cond_2e
    const/4 v9, 0x0

    .line 903
    goto :goto_1f

    .line 904
    :cond_2f
    move-object/from16 v10, v20

    .line 905
    :goto_1e
    const/4 v9, 0x1

    .line 907
    :goto_1f
    iput-boolean v9, v11, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;->hideContent:Z

    .line 908
    goto/16 :goto_29

    .line 910
    :cond_30
    move-object/from16 v10, v20

    .line 912
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 914
    move-result-object v9

    .line 917
    if-eq v2, v9, :cond_3b

    .line 918
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 920
    if-eqz v9, :cond_34

    .line 922
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 924
    move-result v9

    .line 927
    if-eqz v9, :cond_32

    .line 928
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->maxAllowedKeyguardNotifications:I

    .line 930
    if-lt v5, v9, :cond_31

    .line 932
    const/4 v9, 0x1

    .line 934
    goto :goto_20

    .line 935
    :cond_31
    const/4 v9, 0x0

    .line 936
    :goto_20
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 937
    goto :goto_22

    .line 939
    :cond_32
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 940
    iget v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mScreenHeight:I

    .line 942
    int-to-float v11, v11

    .line 944
    cmpl-float v9, v9, v11

    .line 945
    if-lez v9, :cond_33

    .line 947
    const/4 v9, 0x1

    .line 949
    goto :goto_21

    .line 950
    :cond_33
    const/4 v9, 0x0

    .line 951
    :goto_21
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 952
    :goto_22
    const/4 v9, 0x0

    .line 954
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 955
    instance-of v9, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 957
    if-eqz v9, :cond_3b

    .line 959
    move-object v12, v2

    .line 961
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 962
    iget-boolean v9, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 964
    if-eqz v9, :cond_3b

    .line 966
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 968
    iget v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 970
    cmpl-float v9, v9, v11

    .line 972
    if-lez v9, :cond_3b

    .line 974
    iput v11, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 976
    goto/16 :goto_27

    .line 978
    :cond_34
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 980
    if-eqz v9, :cond_3b

    .line 982
    move-object v9, v4

    .line 984
    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 985
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 987
    move-result v9

    .line 990
    if-eqz v9, :cond_35

    .line 991
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 993
    move-result v9

    .line 996
    if-eqz v9, :cond_35

    .line 997
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 999
    move-result v9

    .line 1002
    if-nez v9, :cond_35

    .line 1003
    const/4 v9, 0x1

    .line 1005
    goto :goto_23

    .line 1006
    :cond_35
    const/4 v9, 0x0

    .line 1007
    :goto_23
    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 1008
    if-eqz v11, :cond_37

    .line 1010
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 1012
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1014
    cmpl-float v11, v11, v12

    .line 1016
    if-eqz v11, :cond_37

    .line 1018
    if-eqz v9, :cond_36

    .line 1020
    goto :goto_24

    .line 1022
    :cond_36
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    .line 1023
    goto :goto_25

    .line 1025
    :cond_37
    :goto_24
    const/4 v9, 0x0

    .line 1026
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    .line 1027
    move-result v11

    .line 1030
    int-to-float v9, v11

    .line 1031
    :goto_25
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1032
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 1034
    move-result v11

    .line 1037
    int-to-float v11, v11

    .line 1038
    sub-float/2addr v9, v11

    .line 1039
    iget v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 1040
    sub-float/2addr v9, v11

    .line 1042
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 1043
    move-result v11

    .line 1046
    if-nez v11, :cond_3a

    .line 1047
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 1049
    move-result v11

    .line 1052
    if-nez v11, :cond_3a

    .line 1053
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 1055
    move-result v9

    .line 1058
    if-eqz v9, :cond_39

    .line 1059
    iget v9, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mScreenHeight:I

    .line 1061
    int-to-float v9, v9

    .line 1063
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->maxAllowedKeyguardNotifications:I

    .line 1064
    if-lt v5, v11, :cond_38

    .line 1066
    const/4 v11, 0x1

    .line 1068
    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1069
    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 1071
    const/4 v11, 0x0

    .line 1073
    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1074
    goto :goto_26

    .line 1076
    :cond_38
    const/4 v11, 0x0

    .line 1077
    goto :goto_26

    .line 1078
    :cond_39
    const/4 v11, 0x0

    .line 1079
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    .line 1080
    move-result v9

    .line 1083
    int-to-float v9, v9

    .line 1084
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 1085
    int-to-float v11, v11

    .line 1087
    add-float/2addr v9, v11

    .line 1088
    float-to-int v9, v9

    .line 1089
    int-to-float v9, v9

    .line 1090
    :cond_3a
    :goto_26
    invoke-virtual {v3, v2, v6, v9}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;F)V

    .line 1091
    :cond_3b
    :goto_27
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 1094
    move-result v9

    .line 1097
    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1098
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 1100
    move-result v9

    .line 1103
    if-nez v9, :cond_3d

    .line 1104
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 1106
    move-result v9

    .line 1109
    if-nez v9, :cond_3d

    .line 1110
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1112
    if-ne v9, v2, :cond_3c

    .line 1114
    const/4 v9, 0x1

    .line 1116
    goto :goto_28

    .line 1117
    :cond_3c
    const/4 v9, 0x0

    .line 1118
    :goto_28
    if-nez v9, :cond_3d

    .line 1119
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1121
    int-to-float v9, v9

    .line 1123
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1124
    mul-float/2addr v9, v11

    .line 1126
    float-to-int v9, v9

    .line 1127
    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1128
    :cond_3d
    :goto_29
    iget v9, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 1130
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 1132
    move-result v11

    .line 1135
    int-to-float v11, v11

    .line 1136
    iget v12, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 1137
    add-float/2addr v11, v12

    .line 1139
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1140
    mul-float/2addr v11, v12

    .line 1142
    add-float/2addr v11, v9

    .line 1143
    iput v11, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 1144
    iget v9, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 1146
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 1148
    move-result v11

    .line 1151
    int-to-float v11, v11

    .line 1152
    iget v12, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 1153
    add-float/2addr v11, v12

    .line 1155
    add-float/2addr v11, v9

    .line 1156
    iput v11, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentExpandedYPosition:F

    .line 1157
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1159
    move-result-object v2

    .line 1162
    iget v9, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->mCurrentYPosition:F

    .line 1163
    const/4 v11, 0x4

    .line 1165
    iput v11, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1166
    const/4 v11, 0x0

    .line 1168
    cmpg-float v9, v9, v11

    .line 1169
    if-gtz v9, :cond_3e

    .line 1171
    const/4 v9, 0x2

    .line 1173
    iput v9, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1174
    goto :goto_2a

    .line 1176
    :cond_3e
    const/4 v9, 0x2

    .line 1177
    :goto_2a
    iget v11, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1178
    and-int/2addr v9, v11

    .line 1180
    if-eqz v9, :cond_3f

    .line 1181
    const/4 v9, 0x1

    .line 1183
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1184
    :cond_3f
    iget-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 1186
    if-nez v2, :cond_40

    .line 1188
    iget v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1190
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 1192
    add-float/2addr v2, v9

    .line 1194
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1195
    :cond_40
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1198
    move-result-object v2

    .line 1201
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1202
    instance-of v6, v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 1204
    if-eqz v6, :cond_41

    .line 1206
    move-object v6, v2

    .line 1208
    check-cast v6, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 1209
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1211
    move-result-object v6

    .line 1214
    if-eqz v6, :cond_41

    .line 1215
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->stackScrollLayoutHeight:I

    .line 1217
    int-to-float v9, v9

    .line 1219
    const/high16 v11, 0x40000000    # 2.0f

    .line 1220
    div-float/2addr v9, v11

    .line 1222
    iget v11, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1223
    int-to-float v11, v11

    .line 1225
    sub-float/2addr v9, v11

    .line 1226
    iget v11, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1227
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 1229
    move-result v9

    .line 1232
    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1233
    :cond_41
    if-eqz v2, :cond_43

    .line 1236
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1238
    move-result-object v2

    .line 1241
    if-eqz v2, :cond_43

    .line 1242
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1244
    if-eqz v6, :cond_42

    .line 1246
    const/4 v6, 0x0

    .line 1248
    iput v6, v2, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 1249
    :cond_42
    iget v6, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1251
    iget v9, v2, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 1253
    int-to-float v9, v9

    .line 1255
    add-float/2addr v6, v9

    .line 1256
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1257
    :cond_43
    add-int/lit8 v5, v5, 0x1

    .line 1260
    move-object v15, v0

    .line 1262
    move-object v14, v10

    .line 1263
    move/from16 v2, v23

    .line 1264
    move-object/from16 v0, p0

    .line 1266
    goto/16 :goto_16

    .line 1268
    :cond_44
    move-object v10, v14

    .line 1270
    move-object v0, v15

    .line 1271
    const/high16 v11, 0x40000000    # 2.0f

    .line 1272
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelAppeared:Z

    .line 1274
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1276
    move-result-object v4

    .line 1279
    const/4 v5, 0x0

    .line 1280
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1281
    move-result v6

    .line 1284
    if-eqz v6, :cond_53

    .line 1285
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1287
    move-result-object v6

    .line 1290
    add-int/lit8 v9, v5, 0x1

    .line 1291
    if-ltz v5, :cond_52

    .line 1293
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1295
    iget-boolean v5, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretchingFromHeadsUp:Z

    .line 1297
    instance-of v12, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1299
    if-eqz v12, :cond_46

    .line 1301
    move-object v12, v6

    .line 1303
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1304
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 1306
    if-nez v13, :cond_45

    .line 1308
    iget-boolean v12, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1310
    if-nez v12, :cond_45

    .line 1312
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1314
    move-result-object v12

    .line 1317
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1318
    move-result v12

    .line 1321
    if-eqz v12, :cond_46

    .line 1322
    if-nez v5, :cond_46

    .line 1324
    :cond_45
    const/4 v5, 0x1

    .line 1326
    goto :goto_2c

    .line 1327
    :cond_46
    const/4 v5, 0x0

    .line 1328
    :goto_2c
    if-nez v2, :cond_48

    .line 1329
    if-eqz v5, :cond_47

    .line 1331
    goto :goto_2d

    .line 1333
    :cond_47
    const/4 v5, 0x0

    .line 1334
    goto :goto_2e

    .line 1335
    :cond_48
    :goto_2d
    const/4 v5, 0x1

    .line 1336
    :goto_2e
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1337
    move-result-object v12

    .line 1340
    if-eqz v12, :cond_51

    .line 1341
    if-eqz v5, :cond_49

    .line 1343
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1345
    goto :goto_2f

    .line 1347
    :cond_49
    const/4 v13, 0x0

    .line 1348
    :goto_2f
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1349
    iget v13, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 1352
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1354
    cmpg-float v13, v13, v14

    .line 1356
    if-nez v13, :cond_4a

    .line 1358
    const/4 v13, 0x1

    .line 1360
    goto :goto_30

    .line 1361
    :cond_4a
    const/4 v13, 0x0

    .line 1362
    :goto_30
    if-eqz v13, :cond_4c

    .line 1363
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 1365
    move-result v13

    .line 1368
    const/4 v14, 0x0

    .line 1369
    cmpg-float v13, v13, v14

    .line 1370
    if-nez v13, :cond_4b

    .line 1372
    const/4 v13, 0x1

    .line 1374
    goto :goto_31

    .line 1375
    :cond_4b
    const/4 v13, 0x0

    .line 1376
    :goto_31
    if-nez v13, :cond_4c

    .line 1377
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 1379
    move-result v6

    .line 1382
    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1383
    :cond_4c
    iget-boolean v6, v12, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingAddRemove:Z

    .line 1386
    if-nez v6, :cond_4e

    .line 1388
    iget-boolean v6, v12, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 1390
    if-nez v6, :cond_4e

    .line 1392
    iget-boolean v6, v12, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 1394
    if-eqz v6, :cond_4d

    .line 1396
    goto :goto_32

    .line 1398
    :cond_4d
    const/4 v6, 0x0

    .line 1399
    goto :goto_33

    .line 1400
    :cond_4e
    :goto_32
    const/4 v6, 0x1

    .line 1401
    :goto_33
    if-nez v6, :cond_51

    .line 1402
    const v6, 0x3f6b851f    # 0.92f

    .line 1404
    if-eqz v5, :cond_4f

    .line 1407
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1409
    goto :goto_34

    .line 1411
    :cond_4f
    move v13, v6

    .line 1412
    :goto_34
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    .line 1413
    if-eqz v5, :cond_50

    .line 1416
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1418
    :cond_50
    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    .line 1420
    :cond_51
    move v5, v9

    .line 1423
    goto/16 :goto_2b

    .line 1424
    :cond_52
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 1426
    throw v17

    .line 1429
    :cond_53
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->isTransparent()Z

    .line 1430
    move-result v2

    .line 1433
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1434
    move-result-object v4

    .line 1437
    move v6, v11

    .line 1438
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1439
    move-result v5

    .line 1442
    if-eqz v5, :cond_57

    .line 1443
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1445
    move-result-object v5

    .line 1448
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1449
    if-nez v2, :cond_55

    .line 1451
    instance-of v9, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1453
    if-eqz v9, :cond_55

    .line 1455
    move-object v9, v5

    .line 1457
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1458
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 1460
    if-eqz v11, :cond_55

    .line 1462
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1464
    move-result-object v5

    .line 1467
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 1468
    const/4 v12, 0x0

    .line 1470
    int-to-float v13, v12

    .line 1471
    const/4 v12, 0x0

    .line 1472
    cmpl-float v14, v6, v12

    .line 1473
    if-lez v14, :cond_54

    .line 1475
    int-to-float v11, v11

    .line 1477
    mul-float/2addr v11, v6

    .line 1478
    goto :goto_36

    .line 1479
    :cond_54
    const/4 v11, 0x0

    .line 1480
    :goto_36
    add-float/2addr v13, v11

    .line 1481
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    .line 1482
    move-result v9

    .line 1485
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1486
    sub-float v9, v11, v9

    .line 1488
    iget v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 1490
    int-to-float v11, v11

    .line 1492
    mul-float/2addr v9, v11

    .line 1493
    add-float/2addr v9, v13

    .line 1494
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1495
    const/4 v5, 0x1

    .line 1498
    int-to-float v9, v5

    .line 1499
    sub-float/2addr v6, v9

    .line 1500
    goto :goto_35

    .line 1501
    :cond_55
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1502
    move-result-object v5

    .line 1505
    if-nez v5, :cond_56

    .line 1506
    goto :goto_35

    .line 1508
    :cond_56
    const/4 v9, 0x0

    .line 1509
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 1510
    goto :goto_35

    .line 1513
    :cond_57
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1514
    move-result v2

    .line 1517
    iget v4, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 1518
    iget v5, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    .line 1520
    int-to-float v5, v5

    .line 1522
    sub-float/2addr v4, v5

    .line 1523
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1524
    move-result-object v5

    .line 1527
    if-eqz v5, :cond_58

    .line 1528
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1530
    move-result-object v5

    .line 1533
    if-eqz v5, :cond_58

    .line 1534
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1536
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1538
    sub-float/2addr v6, v9

    .line 1540
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    .line 1541
    invoke-static {v4, v6, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 1543
    move-result v6

    .line 1546
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1547
    :cond_58
    move-object/from16 v9, v17

    .line 1550
    const/4 v5, 0x0

    .line 1552
    const/4 v6, 0x0

    .line 1553
    :goto_37
    iget-object v11, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 1554
    if-ge v5, v2, :cond_67

    .line 1556
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1558
    move-result-object v12

    .line 1561
    check-cast v12, Landroid/view/View;

    .line 1562
    instance-of v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1564
    if-nez v13, :cond_59

    .line 1566
    goto :goto_38

    .line 1568
    :cond_59
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1569
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 1571
    if-nez v13, :cond_5a

    .line 1573
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1575
    if-nez v13, :cond_5a

    .line 1577
    :goto_38
    move-object/from16 v21, v1

    .line 1579
    move/from16 v20, v2

    .line 1581
    move/from16 v22, v8

    .line 1583
    const/4 v1, 0x2

    .line 1585
    goto/16 :goto_3e

    .line 1586
    :cond_5a
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1588
    move-result-object v13

    .line 1591
    if-nez v9, :cond_5b

    .line 1592
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    .line 1594
    move-result v14

    .line 1597
    if-eqz v14, :cond_5b

    .line 1598
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1600
    if-nez v14, :cond_5b

    .line 1602
    const/4 v14, 0x1

    .line 1604
    iput v14, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 1605
    move-object v9, v12

    .line 1607
    :cond_5b
    if-ne v9, v12, :cond_5c

    .line 1608
    const/4 v14, 0x1

    .line 1610
    goto :goto_39

    .line 1611
    :cond_5c
    const/4 v14, 0x0

    .line 1612
    :goto_39
    iget v15, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1613
    move/from16 v20, v2

    .line 1615
    iget v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1617
    int-to-float v2, v2

    .line 1619
    add-float/2addr v15, v2

    .line 1620
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1621
    if-eqz v2, :cond_5e

    .line 1623
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    .line 1625
    move-result v2

    .line 1628
    if-eqz v2, :cond_5e

    .line 1629
    iget-boolean v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 1631
    if-nez v2, :cond_5e

    .line 1633
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    .line 1635
    move-result v2

    .line 1638
    if-nez v2, :cond_5e

    .line 1639
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 1641
    move-result v2

    .line 1644
    if-nez v2, :cond_5e

    .line 1645
    iget v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mQuickQsOffsetHeight:F

    .line 1647
    move-object/from16 v21, v1

    .line 1649
    iget v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1651
    move/from16 v22, v8

    .line 1653
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 1655
    move-result v8

    .line 1658
    int-to-float v8, v8

    .line 1659
    invoke-virtual {v3, v2, v1, v8, v13}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToTop(FFFLcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 1660
    if-eqz v14, :cond_5f

    .line 1663
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 1665
    move-result v1

    .line 1668
    if-eqz v1, :cond_5f

    .line 1669
    iget v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 1671
    const/4 v2, 0x0

    .line 1673
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    .line 1674
    move-result v8

    .line 1677
    int-to-float v2, v8

    .line 1678
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 1679
    int-to-float v8, v8

    .line 1681
    add-float/2addr v2, v8

    .line 1682
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 1683
    add-float/2addr v2, v8

    .line 1685
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 1686
    move-result v1

    .line 1689
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    .line 1690
    move-result v2

    .line 1693
    int-to-float v2, v2

    .line 1694
    sub-float v2, v1, v2

    .line 1695
    iget v8, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1697
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    .line 1699
    move-result v2

    .line 1702
    iget v8, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1703
    int-to-float v8, v8

    .line 1705
    sub-float/2addr v1, v2

    .line 1706
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    .line 1707
    move-result v1

    .line 1710
    float-to-int v1, v1

    .line 1711
    iput v1, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1712
    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1714
    iget-boolean v1, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mLastInSection:Z

    .line 1717
    if-eqz v1, :cond_5d

    .line 1719
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1721
    goto :goto_3a

    .line 1723
    :cond_5d
    iget v1, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mSmallCornerRadius:F

    .line 1724
    iget v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mLargeCornerRadius:F

    .line 1726
    div-float/2addr v1, v2

    .line 1728
    :goto_3a
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 1729
    move-result v2

    .line 1732
    int-to-float v2, v2

    .line 1733
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 1734
    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    .line 1736
    move-result v11

    .line 1739
    int-to-float v11, v11

    .line 1740
    invoke-virtual {v3, v2, v8, v11, v1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->computeCornerRoundnessForPinnedHun(FFFF)F

    .line 1741
    move-result v1

    .line 1744
    invoke-interface {v12}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 1745
    move-result-object v2

    .line 1748
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    .line 1749
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 1751
    move-result v2

    .line 1754
    sget-object v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->STACK_SCROLL_ALGO:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 1755
    invoke-interface {v12, v1, v8, v2}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 1757
    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mOnDetachResetRoundness:Ljava/util/Set;

    .line 1760
    check-cast v1, Ljava/util/HashSet;

    .line 1762
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1764
    const/4 v1, 0x0

    .line 1767
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1768
    goto :goto_3b

    .line 1770
    :cond_5e
    move-object/from16 v21, v1

    .line 1771
    move/from16 v22, v8

    .line 1773
    :cond_5f
    :goto_3b
    iget-boolean v1, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 1775
    if-eqz v1, :cond_64

    .line 1777
    iget v1, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1779
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 1781
    move-result v1

    .line 1784
    invoke-virtual {v13, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 1785
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 1788
    move-result v1

    .line 1791
    iget v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1792
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1794
    move-result v1

    .line 1797
    iput v1, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1798
    const/4 v1, 0x2

    .line 1800
    if-ge v6, v1, :cond_60

    .line 1801
    const/4 v2, 0x0

    .line 1803
    iput-boolean v2, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1804
    add-int/lit8 v6, v6, 0x1

    .line 1806
    :cond_60
    if-nez v9, :cond_61

    .line 1808
    move-object/from16 v2, v17

    .line 1810
    goto :goto_3c

    .line 1812
    :cond_61
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1813
    move-result-object v2

    .line 1816
    :goto_3c
    if-eqz v2, :cond_63

    .line 1817
    if-nez v14, :cond_63

    .line 1819
    iget-boolean v8, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1821
    if-eqz v8, :cond_62

    .line 1823
    iget v8, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1825
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1827
    int-to-float v2, v2

    .line 1829
    add-float/2addr v8, v2

    .line 1830
    cmpl-float v2, v15, v8

    .line 1831
    if-lez v2, :cond_63

    .line 1833
    :cond_62
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 1835
    move-result v2

    .line 1838
    iput v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1839
    :cond_63
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 1841
    if-nez v2, :cond_65

    .line 1843
    if-eqz v14, :cond_65

    .line 1845
    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 1847
    if-lez v2, :cond_65

    .line 1849
    iget v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1851
    neg-int v2, v2

    .line 1853
    int-to-float v2, v2

    .line 1854
    iput v2, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1855
    goto :goto_3d

    .line 1857
    :cond_64
    const/4 v1, 0x2

    .line 1858
    :cond_65
    :goto_3d
    iget-boolean v2, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1859
    if-eqz v2, :cond_66

    .line 1861
    iget v2, v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 1863
    neg-int v2, v2

    .line 1865
    int-to-float v2, v2

    .line 1866
    iput v2, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 1867
    const/4 v2, 0x0

    .line 1869
    iput-boolean v2, v13, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 1870
    :cond_66
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    .line 1872
    move/from16 v2, v20

    .line 1874
    move-object/from16 v1, v21

    .line 1876
    move/from16 v8, v22

    .line 1878
    goto/16 :goto_37

    .line 1880
    :cond_67
    move-object/from16 v21, v1

    .line 1882
    move/from16 v22, v8

    .line 1884
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 1886
    move-result-object v1

    .line 1889
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->needAnim(Landroid/content/Context;)Z

    .line 1890
    move-result v1

    .line 1893
    if-nez v1, :cond_68

    .line 1894
    goto/16 :goto_43

    .line 1896
    :cond_68
    new-instance v1, Ljava/util/ArrayList;

    .line 1898
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1900
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1903
    move-result-object v2

    .line 1906
    :cond_69
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1907
    move-result v4

    .line 1910
    if-eqz v4, :cond_6a

    .line 1911
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1913
    move-result-object v4

    .line 1916
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1917
    if-eqz v5, :cond_69

    .line 1919
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    goto :goto_3f

    .line 1924
    :cond_6a
    new-instance v2, Ljava/util/ArrayList;

    .line 1925
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1930
    move-result-object v1

    .line 1933
    :cond_6b
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1934
    move-result v4

    .line 1937
    if-eqz v4, :cond_6c

    .line 1938
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1940
    move-result-object v4

    .line 1943
    move-object v5, v4

    .line 1944
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1945
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1947
    move-result-object v5

    .line 1950
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 1951
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 1953
    if-eqz v5, :cond_6b

    .line 1955
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    goto :goto_40

    .line 1960
    :cond_6c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1961
    move-result-object v1

    .line 1964
    :cond_6d
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1965
    move-result v2

    .line 1968
    if-eqz v2, :cond_72

    .line 1969
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1971
    move-result-object v2

    .line 1974
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1975
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1977
    if-eqz v4, :cond_70

    .line 1979
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 1981
    move-result-object v4

    .line 1984
    if-eqz v4, :cond_6d

    .line 1985
    const v5, 0x3dcccccd    # 0.1f

    .line 1987
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleX(F)V

    .line 1990
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setScaleY(F)V

    .line 1993
    const/4 v5, 0x0

    .line 1996
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 1997
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2000
    move-result v6

    .line 2003
    int-to-float v6, v6

    .line 2004
    const/high16 v8, 0x420c0000    # 35.0f

    .line 2005
    sub-float/2addr v8, v6

    .line 2007
    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 2008
    const/16 v6, 0xc8

    .line 2011
    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 2013
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 2015
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 2018
    move-result v4

    .line 2021
    int-to-float v4, v4

    .line 2022
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 2023
    instance-of v4, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2026
    if-eqz v4, :cond_6e

    .line 2028
    move-object v4, v11

    .line 2030
    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2031
    goto :goto_42

    .line 2033
    :cond_6e
    move-object/from16 v4, v17

    .line 2034
    :goto_42
    if-eqz v4, :cond_6f

    .line 2036
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;

    .line 2038
    invoke-direct {v5, v2}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2040
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 2043
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2045
    :cond_6f
    const-class v4, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2048
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2050
    move-result-object v4

    .line 2053
    check-cast v4, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2054
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getFocusedNotifViewRect()Landroid/graphics/Rect;

    .line 2056
    move-result-object v4

    .line 2059
    move-object/from16 v23, v11

    .line 2060
    check-cast v23, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2062
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2064
    move-result-object v24

    .line 2067
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 2068
    add-int/lit8 v25, v2, 0x32

    .line 2070
    const/16 v27, 0xc8

    .line 2072
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 2074
    const/16 v29, 0x0

    .line 2076
    const/high16 v30, 0x3f800000    # 1.0f

    .line 2078
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 2080
    sub-int v31, v4, v2

    .line 2082
    move/from16 v26, v2

    .line 2084
    move/from16 v28, v5

    .line 2086
    invoke-virtual/range {v23 .. v31}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animToPromptView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIIIFFI)V

    .line 2088
    goto :goto_41

    .line 2091
    :cond_70
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2092
    move-result-object v2

    .line 2095
    if-nez v2, :cond_71

    .line 2096
    goto/16 :goto_41

    .line 2098
    :cond_71
    const/4 v4, 0x0

    .line 2100
    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 2101
    goto/16 :goto_41

    .line 2103
    :cond_72
    :goto_43
    invoke-virtual {v3, v0, v7}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 2105
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    .line 2108
    if-eqz v1, :cond_74

    .line 2110
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 2112
    move-result v1

    .line 2115
    if-eqz v1, :cond_73

    .line 2116
    iget v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 2118
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2120
    cmpl-float v1, v1, v2

    .line 2122
    if-eqz v1, :cond_74

    .line 2124
    :cond_73
    const/4 v1, 0x1

    .line 2126
    goto :goto_44

    .line 2127
    :cond_74
    const/4 v1, 0x0

    .line 2128
    :goto_44
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    .line 2129
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 2131
    move-result v4

    .line 2134
    const/4 v5, 0x0

    .line 2135
    :goto_45
    if-ge v5, v4, :cond_78

    .line 2136
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2138
    move-result-object v6

    .line 2141
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2142
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2144
    move-result-object v8

    .line 2147
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 2148
    instance-of v9, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2150
    if-eqz v9, :cond_75

    .line 2152
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2154
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2156
    move-result-object v6

    .line 2159
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hideSensitiveByAppLock:Z

    .line 2160
    goto :goto_46

    .line 2162
    :cond_75
    const/4 v6, 0x0

    .line 2163
    :goto_46
    if-nez v6, :cond_77

    .line 2164
    if-eqz v2, :cond_76

    .line 2166
    goto :goto_47

    .line 2168
    :cond_76
    const/4 v6, 0x0

    .line 2169
    goto :goto_48

    .line 2170
    :cond_77
    :goto_47
    const/4 v6, 0x1

    .line 2171
    :goto_48
    iput-boolean v6, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 2172
    add-int/lit8 v5, v5, 0x1

    .line 2174
    goto :goto_45

    .line 2176
    :cond_78
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2177
    move-result v1

    .line 2180
    if-eqz v1, :cond_79

    .line 2181
    const/4 v5, 0x0

    .line 2183
    goto :goto_49

    .line 2184
    :cond_79
    iget v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 2185
    int-to-float v1, v1

    .line 2187
    iget v2, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 2188
    add-float v5, v1, v2

    .line 2190
    :goto_49
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 2192
    move-result-object v1

    .line 2195
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 2196
    move-result-object v1

    .line 2199
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 2200
    move-result v2

    .line 2203
    if-eqz v2, :cond_7a

    .line 2204
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 2206
    move-result-object v1

    .line 2209
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2210
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2212
    move-result-object v1

    .line 2215
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 2216
    if-gez v1, :cond_7a

    .line 2218
    int-to-float v1, v1

    .line 2220
    add-float/2addr v5, v1

    .line 2221
    :cond_7a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 2222
    move-result v1

    .line 2225
    const/4 v2, 0x0

    .line 2226
    const/4 v4, 0x0

    .line 2227
    const/4 v6, 0x1

    .line 2228
    const/4 v8, 0x0

    .line 2229
    :goto_4a
    if-ge v8, v1, :cond_89

    .line 2230
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2232
    move-result-object v9

    .line 2235
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2236
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2238
    move-result-object v11

    .line 2241
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    .line 2242
    move-result v12

    .line 2245
    if-eqz v12, :cond_7b

    .line 2246
    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 2248
    if-eqz v12, :cond_7c

    .line 2250
    :cond_7b
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 2252
    move-result v2

    .line 2255
    :cond_7c
    iget v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2256
    iget v13, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 2258
    int-to-float v13, v13

    .line 2260
    add-float/2addr v13, v12

    .line 2261
    instance-of v14, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2262
    if-eqz v14, :cond_7d

    .line 2264
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 2266
    move-result v15

    .line 2269
    if-eqz v15, :cond_7d

    .line 2270
    move/from16 v17, v1

    .line 2272
    const/4 v15, 0x1

    .line 2274
    goto :goto_4b

    .line 2275
    :cond_7d
    move/from16 v17, v1

    .line 2276
    const/4 v15, 0x0

    .line 2278
    :goto_4b
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 2279
    if-eqz v1, :cond_81

    .line 2281
    if-nez v6, :cond_81

    .line 2283
    if-nez v15, :cond_7e

    .line 2285
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 2287
    move-result v1

    .line 2290
    if-eqz v1, :cond_81

    .line 2291
    :cond_7e
    cmpl-float v1, v13, v4

    .line 2293
    if-lez v1, :cond_81

    .line 2295
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 2297
    if-nez v1, :cond_81

    .line 2299
    sub-float v1, v13, v4

    .line 2301
    move/from16 v19, v4

    .line 2303
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    .line 2305
    if-eqz v4, :cond_7f

    .line 2307
    float-to-int v1, v1

    .line 2309
    goto :goto_4c

    .line 2310
    :cond_7f
    const/4 v1, 0x0

    .line 2311
    :goto_4c
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 2312
    if-eqz v14, :cond_80

    .line 2314
    move-object v1, v9

    .line 2316
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2317
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2319
    move-result-object v1

    .line 2322
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2323
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 2325
    if-eqz v1, :cond_80

    .line 2327
    const/4 v1, 0x0

    .line 2329
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 2330
    goto :goto_4d

    .line 2332
    :cond_80
    const/4 v1, 0x0

    .line 2333
    goto :goto_4d

    .line 2334
    :cond_81
    move/from16 v19, v4

    .line 2335
    const/4 v1, 0x0

    .line 2337
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 2338
    :goto_4d
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 2340
    if-eqz v1, :cond_84

    .line 2342
    iget-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 2344
    if-eqz v1, :cond_82

    .line 2346
    if-eqz v15, :cond_84

    .line 2348
    if-nez v6, :cond_84

    .line 2350
    :cond_82
    cmpg-float v1, v12, v2

    .line 2352
    if-gez v1, :cond_84

    .line 2354
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeOpening:Z

    .line 2356
    if-eqz v1, :cond_83

    .line 2358
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->expandingFromHeadsUp:Z

    .line 2360
    if-nez v1, :cond_84

    .line 2362
    :cond_83
    sub-float v1, v2, v12

    .line 2364
    float-to-int v1, v1

    .line 2366
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 2367
    goto :goto_4e

    .line 2369
    :cond_84
    const/4 v1, 0x0

    .line 2370
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 2371
    :goto_4e
    if-eqz v6, :cond_85

    .line 2373
    move v4, v13

    .line 2375
    goto :goto_4f

    .line 2376
    :cond_85
    move/from16 v4, v19

    .line 2377
    :goto_4f
    if-eqz v15, :cond_86

    .line 2379
    const/4 v6, 0x0

    .line 2381
    :cond_86
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    .line 2382
    move-result v1

    .line 2385
    if-nez v1, :cond_88

    .line 2386
    if-eqz v15, :cond_87

    .line 2388
    goto :goto_50

    .line 2390
    :cond_87
    move v12, v13

    .line 2391
    :goto_50
    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    .line 2392
    move-result v1

    .line 2395
    move v2, v1

    .line 2396
    :cond_88
    add-int/lit8 v8, v8, 0x1

    .line 2397
    move/from16 v1, v17

    .line 2399
    goto/16 :goto_4a

    .line 2401
    :cond_89
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 2403
    move-result-object v1

    .line 2406
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2407
    if-eqz v1, :cond_8a

    .line 2409
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2411
    move-result-object v1

    .line 2414
    if-eqz v1, :cond_8a

    .line 2415
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 2417
    if-gez v2, :cond_8a

    .line 2419
    const/4 v2, 0x0

    .line 2421
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 2422
    :cond_8a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 2424
    move-result v1

    .line 2427
    const/4 v9, 0x0

    .line 2428
    :goto_51
    if-ge v9, v1, :cond_8c

    .line 2429
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2431
    move-result-object v2

    .line 2434
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2435
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2437
    move-result-object v2

    .line 2440
    move/from16 v3, v22

    .line 2441
    if-lt v9, v3, :cond_8b

    .line 2443
    const/4 v4, 0x1

    .line 2445
    goto :goto_52

    .line 2446
    :cond_8b
    const/4 v4, 0x0

    .line 2447
    :goto_52
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 2448
    add-int/lit8 v9, v9, 0x1

    .line 2450
    move/from16 v22, v3

    .line 2452
    goto :goto_51

    .line 2454
    :cond_8c
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2455
    if-nez v1, :cond_8d

    .line 2457
    goto :goto_53

    .line 2459
    :cond_8d
    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 2460
    :goto_53
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2463
    move-result-object v0

    .line 2466
    :cond_8e
    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2467
    move-result v1

    .line 2470
    if-eqz v1, :cond_99

    .line 2471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2473
    move-result-object v1

    .line 2476
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2477
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2479
    move-result-object v2

    .line 2482
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 2483
    if-eqz v3, :cond_8f

    .line 2485
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2487
    move-result-object v3

    .line 2490
    if-ne v1, v3, :cond_8f

    .line 2491
    const/4 v3, 0x1

    .line 2493
    goto :goto_55

    .line 2494
    :cond_8f
    const/4 v3, 0x0

    .line 2495
    :goto_55
    if-eqz v3, :cond_90

    .line 2496
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2498
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2500
    goto :goto_59

    .line 2503
    :cond_90
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2504
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2506
    move-result v4

    .line 2509
    if-eqz v4, :cond_91

    .line 2510
    iget v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 2512
    sub-float v5, v3, v4

    .line 2514
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2516
    goto :goto_59

    .line 2519
    :cond_91
    iget-boolean v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 2520
    if-eqz v4, :cond_96

    .line 2522
    iget v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 2524
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2526
    if-eqz v5, :cond_92

    .line 2528
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    .line 2530
    move-result v5

    .line 2533
    if-eqz v5, :cond_92

    .line 2534
    const/4 v5, 0x1

    .line 2536
    goto :goto_56

    .line 2537
    :cond_92
    const/4 v5, 0x0

    .line 2538
    :goto_56
    if-eqz v5, :cond_93

    .line 2539
    invoke-static {v4}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 2541
    move-result v4

    .line 2544
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2545
    goto :goto_59

    .line 2548
    :cond_93
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 2549
    if-eqz v4, :cond_96

    .line 2551
    iget v4, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 2553
    iget-boolean v5, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    .line 2555
    if-nez v5, :cond_95

    .line 2557
    sget-object v5, Lcom/android/systemui/flags/Flags;->LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2559
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 2561
    check-cast v6, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 2563
    invoke-virtual {v6, v5}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 2565
    move-result v5

    .line 2568
    if-nez v5, :cond_94

    .line 2569
    goto :goto_57

    .line 2571
    :cond_94
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    .line 2572
    invoke-interface {v5, v4}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationFooterAlpha(F)F

    .line 2574
    move-result v4

    .line 2577
    goto :goto_58

    .line 2578
    :cond_95
    :goto_57
    invoke-static {v4}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 2579
    move-result v4

    .line 2582
    :goto_58
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2583
    :cond_96
    :goto_59
    instance-of v1, v1, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 2586
    if-eqz v1, :cond_97

    .line 2588
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 2590
    move-result v1

    .line 2593
    if-eqz v1, :cond_97

    .line 2594
    iget v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 2596
    invoke-static {v1}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 2598
    move-result v1

    .line 2601
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2602
    :cond_97
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2605
    if-eqz v1, :cond_8e

    .line 2607
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2609
    move-result-object v1

    .line 2612
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 2613
    if-eqz v4, :cond_98

    .line 2615
    goto/16 :goto_54

    .line 2617
    :cond_98
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2619
    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2621
    cmpl-float v1, v4, v1

    .line 2623
    if-ltz v1, :cond_8e

    .line 2625
    const/4 v1, 0x0

    .line 2627
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 2628
    goto/16 :goto_54

    .line 2631
    :cond_99
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 2633
    move-result v0

    .line 2636
    const/4 v9, 0x0

    .line 2637
    :goto_5a
    if-ge v9, v0, :cond_9b

    .line 2638
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2640
    move-result-object v1

    .line 2643
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2644
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2646
    if-eqz v2, :cond_9a

    .line 2648
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2650
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2652
    if-eqz v2, :cond_9a

    .line 2654
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 2656
    move-result-object v2

    .line 2659
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2660
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 2662
    :cond_9a
    add-int/lit8 v9, v9, 0x1

    .line 2665
    goto :goto_5a

    .line 2667
    :cond_9b
    move-object/from16 v0, v21

    .line 2668
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 2670
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 2672
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 2674
    move-result v1

    .line 2677
    const/4 v2, 0x1

    .line 2678
    xor-int/2addr v1, v2

    .line 2679
    if-nez v1, :cond_9c

    .line 2680
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2682
    if-nez v1, :cond_9c

    .line 2684
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    .line 2686
    goto :goto_5b

    .line 2689
    :cond_9c
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState()V

    .line 2690
    :goto_5b
    move-object/from16 v0, p0

    .line 2693
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2695
    const/4 v2, 0x0

    .line 2697
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 2698
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2700
    move-result-object v1

    .line 2703
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2704
    const/4 v0, 0x1

    .line 2707
    return v0

    .line 2708
    :goto_5c
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2709
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2711
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 2713
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2716
    if-nez v1, :cond_9d

    .line 2718
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 2720
    if-nez v1, :cond_9d

    .line 2722
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 2724
    :cond_9d
    const/4 v0, 0x1

    .line 2727
    return v0

    .line 2728
    nop

    .line 2729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 2730
.end method
