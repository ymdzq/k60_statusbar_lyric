.class public Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public belowSpeedBump:Z

.field public clipBottomAmount:I

.field public clipRightAmount:I

.field public clipTopAmount:I

.field public dimmed:Z

.field public final foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 13
    return-void
    .line 15
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 1

    .line 1
    const v0, 0x7f0a03f7    # @id/height_animator_tag

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const v0, 0x7f0a03f5    # @id/height_animator_end_value_tag

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 8
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 11
    if-nez v3, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    move-object v3, v1

    .line 16
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 19
    move-result-object v4

    .line 22
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 25
    move-result v6

    .line 28
    const v7, 0x7f0a03f7    # @id/height_animator_tag

    .line 29
    const/4 v8, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const-wide/16 v14, 0x0

    .line 34
    if-eq v5, v6, :cond_7

    .line 36
    const v5, 0x7f0a03f6    # @id/height_animator_start_value_tag

    .line 38
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/Integer;

    .line 45
    const v9, 0x7f0a03f5    # @id/height_animator_end_value_tag

    .line 47
    invoke-virtual {v3, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 50
    move-result-object v10

    .line 53
    check-cast v10, Ljava/lang/Integer;

    .line 54
    iget v12, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 56
    if-eqz v10, :cond_1

    .line 58
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v11

    .line 63
    if-ne v11, v12, :cond_1

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 67
    move-result-object v11

    .line 70
    check-cast v11, Landroid/animation/ValueAnimator;

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 73
    move-result-object v7

    .line 76
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 77
    if-nez v7, :cond_3

    .line 79
    if-eqz v11, :cond_2

    .line 81
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 83
    move-result-object v7

    .line 86
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v10

    .line 90
    sub-int v10, v12, v10

    .line 91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v6

    .line 96
    add-int/2addr v6, v10

    .line 97
    aget-object v7, v7, v8

    .line 98
    filled-new-array {v6, v12}, [I

    .line 100
    move-result-object v10

    .line 103
    invoke-virtual {v7, v10}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v6

    .line 110
    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 111
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v5

    .line 117
    invoke-virtual {v3, v9, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 118
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 121
    move-result-wide v5

    .line 124
    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v3, v12, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 129
    :goto_0
    const/4 v5, 0x1

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 134
    move-result v6

    .line 137
    filled-new-array {v6, v12}, [I

    .line 138
    move-result-object v6

    .line 141
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 142
    move-result-object v6

    .line 145
    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;

    .line 146
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 148
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    sget-object v7, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 154
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-wide v8, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 159
    invoke-static {v8, v9, v11}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 161
    move-result-wide v8

    .line 164
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-wide v8, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 168
    cmp-long v8, v8, v14

    .line 170
    if-lez v8, :cond_5

    .line 172
    if-eqz v11, :cond_4

    .line 174
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 176
    move-result v8

    .line 179
    cmpl-float v8, v8, v13

    .line 180
    if-nez v8, :cond_5

    .line 182
    :cond_4
    iget-wide v8, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 184
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 186
    :cond_5
    const/4 v8, 0x0

    .line 189
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 190
    move-result-object v9

    .line 193
    if-eqz v9, :cond_6

    .line 194
    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    :cond_6
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    .line 199
    invoke-direct {v8, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 201
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 207
    const v8, 0x7f0a03f7    # @id/height_animator_tag

    .line 210
    invoke-virtual {v3, v8, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 213
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 216
    move-result v6

    .line 219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v6

    .line 223
    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 224
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v5

    .line 230
    const v6, 0x7f0a03f5    # @id/height_animator_end_value_tag

    .line 231
    invoke-virtual {v3, v6, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 234
    const/4 v5, 0x1

    .line 237
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeightAnimating(Z)V

    .line 238
    goto :goto_1

    .line 241
    :cond_7
    move v8, v7

    .line 242
    const/4 v5, 0x1

    .line 243
    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 244
    :goto_1
    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 247
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 249
    move-result v8

    .line 252
    if-eq v6, v8, :cond_8

    .line 253
    invoke-virtual {v0, v3, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 255
    goto :goto_2

    .line 258
    :cond_8
    const v5, 0x7f0a09ba    # @id/top_inset_animator_tag

    .line 259
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 262
    :goto_2
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 265
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 267
    move-result v6

    .line 270
    if-eq v5, v6, :cond_9

    .line 271
    const/4 v5, 0x0

    .line 273
    invoke-virtual {v0, v3, v2, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 274
    goto :goto_3

    .line 277
    :cond_9
    const v5, 0x7f0a0145    # @id/bottom_inset_animator_tag

    .line 278
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 281
    :goto_3
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 284
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 286
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 288
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 291
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 293
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 296
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    .line 298
    iget-wide v7, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 300
    iget-wide v9, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 302
    move-object v4, v3

    .line 304
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 305
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    .line 308
    move-result v4

    .line 311
    if-eqz v4, :cond_a

    .line 312
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 314
    if-nez v4, :cond_a

    .line 316
    iget-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 318
    iget-wide v6, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 320
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJ)V

    .line 322
    :cond_a
    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 325
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipRightAmount()I

    .line 327
    move-result v5

    .line 330
    const v6, 0x7f0a07b8    # @id/right_inset_animator_tag

    .line 331
    if-eq v4, v5, :cond_f

    .line 334
    const v1, 0x7f0a07b7    # @id/right_inset_animator_start_value_tag

    .line 336
    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 339
    move-result-object v4

    .line 342
    check-cast v4, Ljava/lang/Integer;

    .line 343
    const v4, 0x7f0a07b6    # @id/right_inset_animator_end_value_tag

    .line 345
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 348
    move-result-object v5

    .line 351
    check-cast v5, Ljava/lang/Integer;

    .line 352
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 354
    if-eqz v5, :cond_b

    .line 356
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 358
    move-result v5

    .line 361
    if-ne v5, v7, :cond_b

    .line 362
    goto :goto_4

    .line 364
    :cond_b
    invoke-virtual {v3, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 365
    move-result-object v5

    .line 368
    check-cast v5, Landroid/animation/ValueAnimator;

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 371
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipRightAmount()I

    .line 374
    move-result v8

    .line 377
    filled-new-array {v8, v7}, [I

    .line 378
    move-result-object v8

    .line 381
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 382
    move-result-object v8

    .line 385
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda2;

    .line 386
    invoke-direct {v9, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 388
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    sget-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 394
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 396
    iget-wide v9, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 399
    invoke-static {v9, v10, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 401
    move-result-wide v9

    .line 404
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 405
    iget-wide v9, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 408
    cmp-long v9, v9, v14

    .line 410
    if-lez v9, :cond_d

    .line 412
    if-eqz v5, :cond_c

    .line 414
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 416
    move-result v5

    .line 419
    cmpl-float v5, v5, v13

    .line 420
    if-nez v5, :cond_d

    .line 422
    :cond_c
    iget-wide v9, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 424
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 426
    :cond_d
    const/4 v5, 0x0

    .line 429
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 430
    move-result-object v2

    .line 433
    if-eqz v2, :cond_e

    .line 434
    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    :cond_e
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;

    .line 439
    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 441
    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 447
    invoke-virtual {v3, v6, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 450
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipRightAmount()I

    .line 453
    move-result v2

    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    move-result-object v2

    .line 460
    invoke-virtual {v3, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 461
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    move-result-object v1

    .line 467
    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 468
    goto :goto_4

    .line 471
    :cond_f
    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 472
    :goto_4
    iget-boolean v1, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 475
    if-nez v1, :cond_10

    .line 477
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 479
    if-eqz v1, :cond_10

    .line 481
    const/4 v1, 0x1

    .line 483
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 484
    :cond_10
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 487
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 489
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 492
    if-eqz v0, :cond_11

    .line 494
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    .line 496
    :cond_11
    return-void
    .line 499
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5
    if-eqz v0, :cond_4

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 15
    const/4 v8, 0x0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p1, v1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 23
    invoke-virtual {p1, v0, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDimmed(ZZ)V

    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 28
    const/4 v3, 0x0

    .line 30
    const-wide/16 v4, 0x0

    .line 31
    const-wide/16 v6, 0x0

    .line 33
    move-object v1, p1

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBelowSpeedBump(Z)V

    .line 41
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 44
    move-result v0

    .line 47
    int-to-float v0, v0

    .line 48
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 49
    int-to-float v2, v1

    .line 51
    cmpl-float v0, v0, v2

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 59
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 64
    int-to-float v2, v1

    .line 66
    cmpl-float v0, v0, v2

    .line 67
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipRightAmount()I

    .line 74
    move-result v0

    .line 77
    int-to-float v0, v0

    .line 78
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 79
    int-to-float v2, v1

    .line 81
    cmpl-float v0, v0, v2

    .line 82
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipRightAmount(I)V

    .line 86
    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransformingInShelf(Z)V

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setInShelf(Z)V

    .line 94
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 97
    if-eqz p0, :cond_4

    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    .line 101
    :cond_4
    return-void
    .line 104
.end method

.method public final cancelAnimations(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 2
    const p0, 0x7f0a03f7    # @id/height_animator_tag

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Landroid/animation/Animator;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_0
    const p0, 0x7f0a09ba    # @id/top_inset_animator_tag

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/animation/Animator;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 11
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 15
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 19
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 23
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 27
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 31
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 33
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 35
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 39
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipRightAmount:I

    .line 43
    :cond_0
    return-void
    .line 45
.end method

.method public final startClipAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    const v4, 0x7f0a09b9    # @id/top_inset_animator_start_value_tag

    .line 10
    const v5, 0x7f0a0144    # @id/bottom_inset_animator_start_value_tag

    .line 13
    if-eqz v3, :cond_0

    .line 16
    move v6, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v6, v5

    .line 20
    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v6

    .line 24
    check-cast v6, Ljava/lang/Integer;

    .line 25
    const v7, 0x7f0a09b8    # @id/top_inset_animator_end_value_tag

    .line 27
    const v8, 0x7f0a0143    # @id/bottom_inset_animator_end_value_tag

    .line 30
    if-eqz v3, :cond_1

    .line 33
    move v9, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v9, v8

    .line 37
    :goto_1
    invoke-virtual {v1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 38
    move-result-object v9

    .line 41
    check-cast v9, Ljava/lang/Integer;

    .line 42
    if-eqz v3, :cond_2

    .line 44
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 46
    goto :goto_2

    .line 48
    :cond_2
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipBottomAmount:I

    .line 49
    :goto_2
    if-eqz v9, :cond_3

    .line 51
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v11

    .line 56
    if-ne v11, v10, :cond_3

    .line 57
    return-void

    .line 59
    :cond_3
    const v11, 0x7f0a09ba    # @id/top_inset_animator_tag

    .line 60
    const v12, 0x7f0a0145    # @id/bottom_inset_animator_tag

    .line 63
    if-eqz v3, :cond_4

    .line 66
    move v13, v11

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v13, v12

    .line 70
    :goto_3
    invoke-virtual {v1, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 71
    move-result-object v13

    .line 74
    check-cast v13, Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 77
    move-result-object v14

    .line 80
    const/4 v15, 0x0

    .line 81
    if-eqz v3, :cond_5

    .line 82
    iget-boolean v14, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 84
    if-eqz v14, :cond_6

    .line 86
    :cond_5
    if-nez v3, :cond_b

    .line 88
    :cond_6
    if-eqz v13, :cond_9

    .line 90
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v2

    .line 99
    sub-int v2, v10, v2

    .line 100
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 102
    move-result v6

    .line 105
    add-int/2addr v6, v2

    .line 106
    aget-object v0, v0, v15

    .line 107
    filled-new-array {v6, v10}, [I

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 113
    if-eqz v3, :cond_7

    .line 116
    goto :goto_4

    .line 118
    :cond_7
    move v4, v5

    .line 119
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 124
    if-eqz v3, :cond_8

    .line 127
    goto :goto_5

    .line 129
    :cond_8
    move v7, v8

    .line 130
    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v0

    .line 134
    invoke-virtual {v1, v7, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 138
    move-result-wide v0

    .line 141
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 142
    return-void

    .line 145
    :cond_9
    if-eqz v3, :cond_a

    .line 146
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    .line 148
    goto :goto_6

    .line 151
    :cond_a
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 152
    :goto_6
    return-void

    .line 155
    :cond_b
    const/4 v6, 0x2

    .line 156
    new-array v6, v6, [I

    .line 157
    if-eqz v3, :cond_c

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 161
    move-result v9

    .line 164
    goto :goto_7

    .line 165
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 166
    move-result v9

    .line 169
    :goto_7
    aput v9, v6, v15

    .line 170
    const/4 v9, 0x1

    .line 172
    aput v10, v6, v9

    .line 173
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 175
    move-result-object v6

    .line 178
    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda1;

    .line 179
    invoke-direct {v14, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 181
    invoke-virtual {v6, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    sget-object v14, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 187
    invoke-virtual {v6, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-wide v14, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 192
    invoke-static {v14, v15, v13}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 194
    move-result-wide v14

    .line 197
    invoke-virtual {v6, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget-wide v14, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 201
    const-wide/16 v16, 0x0

    .line 203
    cmp-long v14, v14, v16

    .line 205
    if-lez v14, :cond_e

    .line 207
    if-eqz v13, :cond_d

    .line 209
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 211
    move-result v13

    .line 214
    const/4 v14, 0x0

    .line 215
    cmpl-float v13, v13, v14

    .line 216
    if-nez v13, :cond_e

    .line 218
    :cond_d
    iget-wide v13, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 220
    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 222
    :cond_e
    const/4 v13, 0x0

    .line 225
    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 226
    move-result-object v2

    .line 229
    if-eqz v2, :cond_f

    .line 230
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    :cond_f
    new-instance v13, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    .line 235
    invoke-direct {v13, v0, v1, v3, v9}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Landroid/view/View;ZI)V

    .line 237
    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 243
    if-eqz v3, :cond_10

    .line 246
    goto :goto_8

    .line 248
    :cond_10
    move v11, v12

    .line 249
    :goto_8
    invoke-virtual {v1, v11, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 250
    if-eqz v3, :cond_11

    .line 253
    goto :goto_9

    .line 255
    :cond_11
    move v4, v5

    .line 256
    :goto_9
    if-eqz v3, :cond_12

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 259
    move-result v0

    .line 262
    goto :goto_a

    .line 263
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 264
    move-result v0

    .line 267
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    move-result-object v0

    .line 271
    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 272
    if-eqz v3, :cond_13

    .line 275
    goto :goto_b

    .line 277
    :cond_13
    move v7, v8

    .line 278
    :goto_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v0

    .line 282
    invoke-virtual {v1, v7, v0}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 283
    return-void
    .line 286
.end method

.method public final startYTranslationAnimationUnimportant(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move-object/from16 v10, p2

    .line 6
    const v1, -0x8598a57

    .line 8
    invoke-virtual {v9, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Float;

    .line 15
    if-eqz v1, :cond_16

    .line 17
    instance-of v2, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 19
    if-eqz v2, :cond_16

    .line 21
    move-object v2, v9

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 24
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    goto/16 :goto_8

    .line 32
    :cond_0
    sget v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 34
    invoke-static {v11, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->abortAnimation(ILandroid/view/View;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearAnimation()V

    .line 39
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    move-result-object v4

    .line 53
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 54
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x1

    .line 57
    if-ne v4, v13, :cond_1

    .line 58
    move v8, v13

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v8, v12

    .line 62
    :goto_0
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    .line 63
    move-result v14

    .line 66
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 67
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isFoldNeedsAnim:Z

    .line 69
    sget v15, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 71
    sget v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 73
    if-nez v5, :cond_4

    .line 75
    invoke-virtual {v9, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 80
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 81
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 85
    :cond_2
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {v9, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {v9, v15, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 97
    if-eqz v14, :cond_3

    .line 100
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 102
    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {v9, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 109
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 113
    :goto_1
    return-void

    .line 116
    :cond_4
    iget-boolean v2, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 117
    if-nez v2, :cond_6

    .line 119
    if-nez v14, :cond_5

    .line 121
    if-nez v8, :cond_5

    .line 123
    goto :goto_2

    .line 125
    :cond_5
    iget v2, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->normalTarget:F

    .line 126
    goto :goto_3

    .line 128
    :cond_6
    :goto_2
    iget v2, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->unimportantTarget:F

    .line 129
    :goto_3
    iget v3, v4, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->headerDif:F

    .line 131
    const/16 v16, 0x0

    .line 133
    if-nez v8, :cond_8

    .line 135
    if-eqz v14, :cond_7

    .line 137
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 139
    move-result v4

    .line 142
    cmpg-float v4, v4, v16

    .line 143
    if-gez v4, :cond_8

    .line 145
    :cond_7
    const/high16 v4, 0x43480000    # 200.0f

    .line 147
    goto :goto_4

    .line 149
    :cond_8
    const/high16 v4, 0x42c80000    # 100.0f

    .line 150
    :goto_4
    sub-float v4, v2, v4

    .line 152
    if-eqz v14, :cond_b

    .line 154
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 156
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 158
    move-result v5

    .line 161
    add-float/2addr v5, v2

    .line 162
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 163
    move-result v2

    .line 166
    cmpg-float v2, v2, v16

    .line 167
    if-gez v2, :cond_a

    .line 169
    cmpl-float v2, v5, v4

    .line 171
    if-ltz v2, :cond_9

    .line 173
    move v5, v4

    .line 175
    :cond_9
    add-float/2addr v5, v3

    .line 176
    :cond_a
    invoke-virtual {v9, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    goto :goto_5

    .line 180
    :cond_b
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 181
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 183
    move-result v5

    .line 186
    sub-float/2addr v2, v5

    .line 187
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 188
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 190
    move-result v2

    .line 193
    cmpl-float v2, v2, v16

    .line 194
    if-lez v2, :cond_c

    .line 196
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 198
    cmpl-float v2, v2, v4

    .line 200
    if-ltz v2, :cond_c

    .line 202
    iput v4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 204
    :cond_c
    :goto_5
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 208
    move-result v5

    .line 211
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    .line 212
    move-result v6

    .line 215
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 216
    move-result v6

    .line 219
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 220
    move-result v2

    .line 223
    sub-float/2addr v2, v6

    .line 224
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 225
    move-result v2

    .line 228
    if-eqz v14, :cond_d

    .line 229
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 231
    move-result v5

    .line 234
    cmpg-float v5, v5, v16

    .line 235
    if-ltz v5, :cond_e

    .line 237
    :cond_d
    if-nez v14, :cond_f

    .line 239
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 241
    move-result v1

    .line 244
    cmpl-float v1, v1, v16

    .line 245
    if-lez v1, :cond_f

    .line 247
    :cond_e
    move/from16 v17, v13

    .line 249
    goto :goto_6

    .line 251
    :cond_f
    move/from16 v17, v12

    .line 252
    :goto_6
    if-eqz v17, :cond_10

    .line 254
    add-float/2addr v2, v3

    .line 256
    :cond_10
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;

    .line 257
    move-object v1, v5

    .line 259
    move v3, v4

    .line 260
    move v4, v6

    .line 261
    move-object v6, v5

    .line 262
    move-object/from16 v5, p1

    .line 263
    move-object/from16 v18, v6

    .line 265
    move/from16 v6, v17

    .line 267
    move/from16 v19, v7

    .line 269
    move v7, v14

    .line 271
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$$ExternalSyntheticLambda0;-><init>(FFFLandroid/view/View;ZZZ)V

    .line 272
    invoke-virtual {v9, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 275
    move-result-object v1

    .line 278
    check-cast v1, Ljava/lang/Float;

    .line 279
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 281
    if-eqz v1, :cond_11

    .line 283
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 285
    move-result v1

    .line 288
    cmpl-float v1, v1, v2

    .line 289
    if-nez v1, :cond_11

    .line 291
    goto/16 :goto_8

    .line 293
    :cond_11
    invoke-virtual {v9, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 295
    move-result-object v1

    .line 298
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 299
    const/4 v3, 0x2

    .line 301
    new-array v4, v3, [F

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 304
    move-result v5

    .line 307
    aput v5, v4, v12

    .line 308
    aput v2, v4, v13

    .line 310
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 312
    move-result-object v4

    .line 315
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 316
    invoke-virtual {v10, v5, v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/util/Property;Landroid/view/View;)Landroid/view/animation/Interpolator;

    .line 318
    move-result-object v5

    .line 321
    if-eqz v5, :cond_12

    .line 322
    goto :goto_7

    .line 324
    :cond_12
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 325
    :goto_7
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-wide v5, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 330
    invoke-static {v5, v6, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    .line 332
    move-result-wide v5

    .line 335
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 336
    iget-wide v5, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 339
    const-wide/16 v7, 0x0

    .line 341
    cmp-long v5, v5, v7

    .line 343
    if-lez v5, :cond_14

    .line 345
    if-eqz v1, :cond_13

    .line 347
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 349
    move-result v1

    .line 352
    cmpl-float v1, v1, v16

    .line 353
    if-nez v1, :cond_14

    .line 355
    :cond_13
    iget-wide v5, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 357
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 359
    :cond_14
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 362
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    .line 364
    move-result-object v1

    .line 367
    if-eqz v1, :cond_15

    .line 368
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    :cond_15
    move-object/from16 v5, v18

    .line 373
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;

    .line 378
    invoke-direct {v5, v0, v9, v14, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Landroid/view/View;ZI)V

    .line 380
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 383
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 386
    invoke-virtual {v9, v11, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 392
    move-result v0

    .line 395
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 396
    move-result-object v0

    .line 399
    move/from16 v1, v19

    .line 400
    invoke-virtual {v9, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 402
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 405
    move-result-object v0

    .line 408
    invoke-virtual {v9, v15, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 409
    :cond_16
    :goto_8
    return-void
    .line 412
.end method
