.class public final Landroidx/constraintlayout/motion/widget/MotionScene;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAbstractTransitionList:Ljava/util/ArrayList;

.field public final mConstraintSetIdMap:Ljava/util/HashMap;

.field public final mConstraintSetMap:Landroid/util/SparseArray;

.field public mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

.field public mDefaultDuration:I

.field public mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

.field public final mDeriveMap:Landroid/util/SparseIntArray;

.field public mIgnoreTouch:Z

.field public mLastTouchDown:Landroid/view/MotionEvent;

.field public mLastTouchX:F

.field public mLastTouchY:F

.field public mLayoutDuringTransition:I

.field public final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mMotionOutsideRegion:Z

.field public mRtl:Z

.field public mStateSet:Landroidx/constraintlayout/widget/StateSet;

.field public final mTransitionList:Ljava/util/ArrayList;

.field public mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

.field public final mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v4, 0x0

    .line 13
    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 14
    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 23
    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 32
    new-instance v6, Landroid/util/SparseArray;

    .line 34
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 36
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 39
    new-instance v6, Ljava/util/HashMap;

    .line 41
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 46
    new-instance v6, Landroid/util/SparseIntArray;

    .line 48
    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 50
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 53
    const/16 v6, 0x190

    .line 55
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 57
    const/4 v6, 0x0

    .line 59
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    .line 60
    iput-boolean v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 62
    iput-boolean v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 64
    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 66
    new-instance v7, Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 68
    invoke-direct {v7, v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 70
    iput-object v7, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 73
    const-string v2, "Error parsing resource: "

    .line 75
    const-string v7, "MotionScene"

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v8

    .line 82
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 83
    move-result-object v8

    .line 86
    :try_start_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 87
    move-result v9

    .line 90
    move-object v10, v4

    .line 91
    :goto_0
    const/4 v11, 0x1

    .line 92
    if-eq v9, v11, :cond_7

    .line 93
    const/4 v12, 0x2

    .line 95
    if-eq v9, v12, :cond_0

    .line 96
    goto/16 :goto_4

    .line 98
    :cond_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 100
    move-result-object v9

    .line 103
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 104
    move-result v13

    .line 107
    const/4 v14, 0x4

    .line 108
    const/4 v15, 0x5

    .line 109
    const/4 v6, -0x1

    .line 110
    sparse-switch v13, :sswitch_data_0

    .line 111
    goto/16 :goto_1

    .line 114
    :sswitch_0
    const-string v11, "include"

    .line 116
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v9

    .line 121
    if-eqz v9, :cond_1

    .line 122
    const/4 v11, 0x6

    .line 124
    goto/16 :goto_2

    .line 125
    :sswitch_1
    const-string v11, "StateSet"

    .line 127
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v9

    .line 132
    if-eqz v9, :cond_1

    .line 133
    move v11, v14

    .line 135
    goto :goto_2

    .line 136
    :sswitch_2
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v9

    .line 140
    if-eqz v9, :cond_1

    .line 141
    const/4 v11, 0x0

    .line 143
    goto :goto_2

    .line 144
    :sswitch_3
    const-string v11, "OnSwipe"

    .line 145
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v9

    .line 150
    if-eqz v9, :cond_1

    .line 151
    move v11, v12

    .line 153
    goto :goto_2

    .line 154
    :sswitch_4
    const-string v11, "OnClick"

    .line 155
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v9

    .line 160
    if-eqz v9, :cond_1

    .line 161
    const/4 v11, 0x3

    .line 163
    goto :goto_2

    .line 164
    :sswitch_5
    const-string v12, "Transition"

    .line 165
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result v9

    .line 170
    if-eqz v9, :cond_1

    .line 171
    goto :goto_2

    .line 173
    :sswitch_6
    const-string v11, "ViewTransition"

    .line 174
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v9

    .line 179
    if-eqz v9, :cond_1

    .line 180
    const/16 v11, 0x9

    .line 182
    goto :goto_2

    .line 184
    :sswitch_7
    const-string v11, "Include"

    .line 185
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v9

    .line 190
    if-eqz v9, :cond_1

    .line 191
    const/4 v11, 0x7

    .line 193
    goto :goto_2

    .line 194
    :sswitch_8
    const-string v11, "KeyFrameSet"

    .line 195
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v9

    .line 200
    if-eqz v9, :cond_1

    .line 201
    const/16 v11, 0x8

    .line 203
    goto :goto_2

    .line 205
    :sswitch_9
    const-string v11, "ConstraintSet"

    .line 206
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    if-eqz v9, :cond_1

    .line 212
    move v11, v15

    .line 214
    goto :goto_2

    .line 215
    :cond_1
    :goto_1
    move v11, v6

    .line 216
    :goto_2
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 217
    packed-switch v11, :pswitch_data_0

    .line 219
    goto/16 :goto_4

    .line 222
    :pswitch_0
    :try_start_1
    new-instance v6, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 224
    invoke-direct {v6, v0, v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 226
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 229
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iput-object v4, v9, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 236
    iget v9, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 238
    if-ne v9, v14, :cond_2

    .line 240
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    .line 242
    move-result-object v9

    .line 245
    iget v6, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 246
    new-instance v11, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;

    .line 248
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;-><init>()V

    .line 250
    invoke-virtual {v9, v6, v11}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 253
    goto/16 :goto_4

    .line 256
    :cond_2
    if-ne v9, v15, :cond_6

    .line 258
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    .line 260
    move-result-object v9

    .line 263
    iget v6, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 264
    new-instance v11, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;

    .line 266
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;-><init>()V

    .line 268
    invoke-virtual {v9, v6, v11}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 271
    goto/16 :goto_4

    .line 274
    :pswitch_1
    new-instance v6, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 276
    invoke-direct {v6, v0, v8}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 278
    if-eqz v10, :cond_6

    .line 281
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    goto/16 :goto_4

    .line 288
    :pswitch_2
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseInclude(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 290
    goto :goto_4

    .line 293
    :pswitch_3
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    .line 294
    goto :goto_4

    .line 297
    :pswitch_4
    new-instance v6, Landroidx/constraintlayout/widget/StateSet;

    .line 298
    invoke-direct {v6, v0, v8}, Landroidx/constraintlayout/widget/StateSet;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 300
    iput-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 303
    goto :goto_4

    .line 305
    :pswitch_5
    if-eqz v10, :cond_6

    .line 306
    invoke-virtual {v9}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 308
    move-result v6

    .line 311
    if-nez v6, :cond_6

    .line 312
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 314
    invoke-direct {v6, v0, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 316
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    goto :goto_4

    .line 324
    :pswitch_6
    if-nez v10, :cond_3

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 327
    move-result-object v6

    .line 330
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 331
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 334
    :cond_3
    if-eqz v10, :cond_6

    .line 337
    new-instance v6, Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 339
    invoke-direct {v6, v0, v9, v8}, Landroidx/constraintlayout/motion/widget/TouchResponse;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 341
    iput-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 344
    goto :goto_4

    .line 346
    :pswitch_7
    new-instance v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 347
    invoke-direct {v10, v1, v0, v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 349
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 355
    if-nez v9, :cond_4

    .line 357
    iget-boolean v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 359
    if-nez v9, :cond_4

    .line 361
    iput-object v10, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 363
    iget-object v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 365
    if-eqz v9, :cond_4

    .line 367
    iget-boolean v11, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 369
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 371
    :cond_4
    iget-boolean v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 374
    if-eqz v9, :cond_6

    .line 376
    iget v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 378
    if-ne v9, v6, :cond_5

    .line 380
    iput-object v10, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 382
    goto :goto_3

    .line 384
    :cond_5
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 385
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    goto :goto_4

    .line 393
    :pswitch_8
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    :cond_6
    :goto_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 397
    move-result v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    const/4 v6, 0x0

    .line 401
    goto/16 :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v2

    .line 416
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    goto :goto_5

    .line 420
    :catch_1
    move-exception v0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v2

    .line 433
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :cond_7
    :goto_5
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 437
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 439
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 441
    const v3, 0x7f0a0620    # @id/motion_base

    .line 444
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 450
    const-string v1, "motion_base"

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    move-result-object v2

    .line 457
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void

    .line 461
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
    .end sparse-switch

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 504
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/16 v0, 0x2f

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 14
    move-result v0

    .line 17
    add-int/2addr v0, v1

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v3

    .line 26
    const-string v4, "id"

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {v3, v0, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p0, v2

    .line 38
    :goto_0
    if-ne p0, v2, :cond_2

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    move-result v0

    .line 44
    if-le v0, v1, :cond_1

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p1, "MotionScene"

    .line 56
    const-string v0, "error in parsing id"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2
    :goto_1
    return p0
    .line 63
.end method


# virtual methods
.method public final autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_b

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 30
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 32
    if-nez v4, :cond_3

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 37
    const/4 v6, 0x2

    .line 39
    if-ne v5, v3, :cond_5

    .line 40
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    .line 42
    and-int/2addr v5, v6

    .line 44
    if-eqz v5, :cond_4

    .line 45
    move v5, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    move v5, v1

    .line 49
    :goto_2
    if-eqz v5, :cond_5

    .line 50
    goto :goto_1

    .line 52
    :cond_5
    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 53
    sget-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 55
    sget-object v8, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 57
    sget-object v9, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 59
    if-ne p1, v5, :cond_8

    .line 61
    const/4 v5, 0x4

    .line 63
    if-eq v4, v5, :cond_6

    .line 64
    if-ne v4, v6, :cond_8

    .line 66
    :cond_6
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 68
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 71
    iget p0, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 74
    const/high16 p1, 0x3f800000    # 1.0f

    .line 76
    if-ne p0, v5, :cond_7

    .line 78
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 80
    const/4 p0, 0x0

    .line 83
    iput-object p0, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 86
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 89
    goto :goto_3

    .line 92
    :cond_7
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 93
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 96
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 99
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 102
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 105
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 108
    :goto_3
    return v2

    .line 111
    :cond_8
    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 112
    if-ne p1, v5, :cond_2

    .line 114
    const/4 v5, 0x3

    .line 116
    if-eq v4, v5, :cond_9

    .line 117
    if-ne v4, v2, :cond_2

    .line 119
    :cond_9
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 121
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 124
    iget p0, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 127
    const/4 p1, 0x0

    .line 129
    if-ne p0, v5, :cond_a

    .line 130
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 132
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 135
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 138
    goto :goto_4

    .line 141
    :cond_a
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 142
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 145
    invoke-virtual {p2, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 148
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 151
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 154
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 157
    :goto_4
    return v2

    .line 160
    :cond_b
    return v1
    .line 161
.end method

.method public final getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    move p1, v0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "Warning could not find ConstraintSet id/"

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {p1, p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, " In MotionScene"

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    const-string p1, "MotionScene"

    .line 51
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 57
    move-result p0

    .line 60
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 72
    :goto_0
    return-object p0
    .line 74
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 6
    return p0

    .line 8
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 9
    return p0
    .line 11
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 4
    const/4 v2, -0x2

    .line 6
    if-eq v1, v2, :cond_7

    .line 7
    const/4 p0, -0x1

    .line 9
    if-eq v1, p0, :cond_6

    .line 10
    if-eqz v1, :cond_5

    .line 12
    const/4 p0, 0x1

    .line 14
    if-eq v1, p0, :cond_4

    .line 15
    const/4 p0, 0x2

    .line 17
    if-eq v1, p0, :cond_3

    .line 18
    const/4 p0, 0x4

    .line 20
    if-eq v1, p0, :cond_2

    .line 21
    const/4 p0, 0x5

    .line 23
    if-eq v1, p0, :cond_1

    .line 24
    const/4 p0, 0x6

    .line 26
    if-eq v1, p0, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Landroid/view/animation/AnticipateInterpolator;

    .line 31
    invoke-direct {p0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 33
    return-object p0

    .line 36
    :cond_1
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    .line 37
    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 39
    return-object p0

    .line 42
    :cond_2
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    .line 43
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 45
    return-object p0

    .line 48
    :cond_3
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 51
    return-object p0

    .line 54
    :cond_4
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    .line 55
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 57
    return-object p0

    .line 60
    :cond_5
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 61
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 63
    return-object p0

    .line 66
    :cond_6
    iget-object p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 69
    move-result-object p0

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$1;

    .line 73
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 75
    return-object v0

    .line 78
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v0

    .line 84
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 85
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 87
    invoke-static {v0, p0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 89
    move-result-object p0

    .line 92
    return-object p0
    .line 93
.end method

.method public final getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 26
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 49
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_2
    return-void
    .line 55
.end method

.method public final getMaxAcceleration()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 10
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public final getStartId()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 8
    return p0
    .line 10
.end method

.method public final parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 13

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 10
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    move v4, v1

    .line 15
    move v5, v3

    .line 16
    move v6, v5

    .line 17
    :goto_0
    if-ge v4, v2, :cond_b

    .line 18
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 20
    move-result-object v7

    .line 23
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 24
    move-result-object v8

    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result v9

    .line 34
    const/4 v10, 0x2

    .line 35
    const/4 v11, 0x3

    .line 36
    const/4 v12, 0x1

    .line 37
    sparse-switch v9, :sswitch_data_0

    .line 38
    :goto_1
    move v7, v3

    .line 41
    goto :goto_2

    .line 42
    :sswitch_0
    const-string/jumbo v9, "stateLabels"

    .line 43
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v7

    .line 49
    if-nez v7, :cond_0

    .line 50
    goto :goto_1

    .line 52
    :cond_0
    move v7, v11

    .line 53
    goto :goto_2

    .line 54
    :sswitch_1
    const-string v9, "id"

    .line 55
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v7

    .line 60
    if-nez v7, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    move v7, v10

    .line 64
    goto :goto_2

    .line 65
    :sswitch_2
    const-string v9, "constraintRotate"

    .line 66
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v7

    .line 71
    if-nez v7, :cond_2

    .line 72
    goto :goto_1

    .line 74
    :cond_2
    move v7, v12

    .line 75
    goto :goto_2

    .line 76
    :sswitch_3
    const-string v9, "deriveConstraintsFrom"

    .line 77
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v7

    .line 82
    if-nez v7, :cond_3

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    move v7, v1

    .line 86
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 87
    goto/16 :goto_7

    .line 90
    :pswitch_0
    const-string v7, ","

    .line 92
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 97
    iput-object v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mMatchLabels:[Ljava/lang/String;

    .line 98
    move v7, v1

    .line 100
    :goto_3
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mMatchLabels:[Ljava/lang/String;

    .line 101
    array-length v9, v8

    .line 103
    if-ge v7, v9, :cond_a

    .line 104
    aget-object v9, v8, v7

    .line 106
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    move-result-object v9

    .line 111
    aput-object v9, v8, v7

    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 114
    goto :goto_3

    .line 116
    :pswitch_1
    invoke-static {p1, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 117
    move-result v5

    .line 120
    const/16 v7, 0x2f

    .line 121
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    .line 123
    move-result v7

    .line 126
    if-gez v7, :cond_4

    .line 127
    goto :goto_4

    .line 129
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 130
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    move-result-object v8

    .line 135
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v7

    .line 139
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    .line 140
    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v5, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 145
    move-result-object v7

    .line 148
    iput-object v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mIdString:Ljava/lang/String;

    .line 149
    goto/16 :goto_7

    .line 151
    :pswitch_2
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    move-result v7

    .line 156
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto/16 :goto_7

    .line 159
    :catch_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 164
    move-result v7

    .line 167
    const/4 v9, 0x4

    .line 168
    sparse-switch v7, :sswitch_data_1

    .line 169
    :goto_5
    move v7, v3

    .line 172
    goto :goto_6

    .line 173
    :sswitch_4
    const-string/jumbo v7, "x_right"

    .line 174
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v7

    .line 180
    if-nez v7, :cond_5

    .line 181
    goto :goto_5

    .line 183
    :cond_5
    move v7, v9

    .line 184
    goto :goto_6

    .line 185
    :sswitch_5
    const-string/jumbo v7, "right"

    .line 186
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v7

    .line 192
    if-nez v7, :cond_6

    .line 193
    goto :goto_5

    .line 195
    :cond_6
    move v7, v11

    .line 196
    goto :goto_6

    .line 197
    :sswitch_6
    const-string v7, "none"

    .line 198
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v7

    .line 203
    if-nez v7, :cond_7

    .line 204
    goto :goto_5

    .line 206
    :cond_7
    move v7, v10

    .line 207
    goto :goto_6

    .line 208
    :sswitch_7
    const-string v7, "left"

    .line 209
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v7

    .line 214
    if-nez v7, :cond_8

    .line 215
    goto :goto_5

    .line 217
    :cond_8
    move v7, v12

    .line 218
    goto :goto_6

    .line 219
    :sswitch_8
    const-string/jumbo v7, "x_left"

    .line 220
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v7

    .line 226
    if-nez v7, :cond_9

    .line 227
    goto :goto_5

    .line 229
    :cond_9
    move v7, v1

    .line 230
    :goto_6
    packed-switch v7, :pswitch_data_1

    .line 231
    goto :goto_7

    .line 234
    :pswitch_3
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 235
    goto :goto_7

    .line 237
    :pswitch_4
    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 238
    goto :goto_7

    .line 240
    :pswitch_5
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 241
    goto :goto_7

    .line 243
    :pswitch_6
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 244
    goto :goto_7

    .line 246
    :pswitch_7
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 247
    goto :goto_7

    .line 249
    :pswitch_8
    invoke-static {p1, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 250
    move-result v6

    .line 253
    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 254
    goto/16 :goto_0

    .line 256
    :cond_b
    if-eq v5, v3, :cond_d

    .line 258
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 260
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 262
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 264
    if-eq v6, v3, :cond_c

    .line 267
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 269
    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    :cond_c
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {p0, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    :cond_d
    return v5

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x59328327 -> :sswitch_3
        -0x44bbba68 -> :sswitch_2
        0xd1b -> :sswitch_1
        0x3a049ff0 -> :sswitch_0
    .end sparse-switch

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 298
    :sswitch_data_1
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x33af38 -> :sswitch_6
        0x677c21c -> :sswitch_5
        0x747feb95 -> :sswitch_4
    .end sparse-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
    .line 332
.end method

.method public final parseInclude(ILandroid/content/Context;)I
    .locals 6

    const-string v0, "Error parsing resource: "

    const-string v1, "MotionScene"

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 9
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    const-string v3, "ConstraintSet"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {p0, p2, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0

    .line 13
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public final parseInclude(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->include:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, -0x1

    .line 4
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 5
    invoke-virtual {p0, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseInclude(ILandroid/content/Context;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    move-result-object p2

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    if-ge v1, p2, :cond_2

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 28
    move-result v2

    .line 31
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 32
    const/16 v3, 0x8

    .line 34
    if-ge v2, v3, :cond_1

    .line 36
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x1

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 44
    move-result v2

    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
    .line 56
.end method

.method public final readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 8
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mIdString:Ljava/lang/String;

    .line 10
    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 16
    move-result p1

    .line 19
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 20
    if-lez p1, :cond_9

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 30
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 31
    if-nez p2, :cond_0

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {p1, p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    const-string p1, "MotionScene"

    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, "/"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    iput-object p0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 89
    iget-object p0, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 91
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 93
    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 100
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result p2

    .line 104
    if-eqz p2, :cond_14

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object p2

    .line 110
    check-cast p2, Ljava/lang/Integer;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result v0

    .line 116
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 120
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    move-result v3

    .line 130
    if-nez v3, :cond_2

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v3

    .line 136
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 137
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 139
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v0

    .line 148
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 152
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 153
    if-nez v0, :cond_3

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 158
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 160
    if-nez v4, :cond_4

    .line 162
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 164
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V

    .line 166
    :cond_4
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 169
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 171
    if-nez v4, :cond_5

    .line 173
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 175
    iget-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 177
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 179
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 181
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 183
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 185
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 187
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 189
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 191
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 193
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 195
    :cond_5
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 197
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 199
    if-nez v4, :cond_6

    .line 201
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 203
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V

    .line 205
    :cond_6
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 208
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 210
    if-nez v4, :cond_7

    .line 212
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 214
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Motion;)V

    .line 216
    :cond_7
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 219
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 221
    move-result-object v3

    .line 224
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 225
    move-result-object v3

    .line 228
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    move-result v4

    .line 232
    if-eqz v4, :cond_1

    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    move-result-object v4

    .line 238
    check-cast v4, Ljava/lang/String;

    .line 239
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 241
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 243
    move-result v5

    .line 246
    if-nez v5, :cond_8

    .line 247
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 249
    iget-object v6, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 251
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v6

    .line 256
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 257
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    goto :goto_1

    .line 262
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 268
    const-string v0, "  layout"

    .line 270
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object p0

    .line 275
    iput-object p0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 276
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 278
    move-result p0

    .line 281
    const/4 p1, 0x0

    .line 282
    :goto_2
    if-ge p1, p0, :cond_14

    .line 283
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 285
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 289
    move-result-object v3

    .line 292
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 295
    move-result v4

    .line 298
    iget-boolean v5, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 299
    if-eqz v5, :cond_b

    .line 301
    const/4 v5, -0x1

    .line 303
    if-eq v4, v5, :cond_a

    .line 304
    goto :goto_3

    .line 306
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    .line 307
    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 309
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 311
    throw p0

    .line 314
    :cond_b
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    move-result-object v5

    .line 318
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 319
    move-result v5

    .line 322
    if-nez v5, :cond_c

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    move-result-object v5

    .line 328
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 329
    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 331
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object v5

    .line 340
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-result-object v5

    .line 344
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 345
    if-nez v5, :cond_d

    .line 347
    goto/16 :goto_4

    .line 349
    :cond_d
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 351
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 353
    const/4 v8, 0x1

    .line 355
    if-nez v7, :cond_f

    .line 356
    invoke-virtual {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 358
    instance-of v3, v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 361
    if-eqz v3, :cond_e

    .line 363
    move-object v3, v0

    .line 365
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 366
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 368
    move-result-object v3

    .line 371
    iput-object v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 372
    instance-of v3, v0, Landroidx/constraintlayout/widget/Barrier;

    .line 374
    if-eqz v3, :cond_e

    .line 376
    move-object v3, v0

    .line 378
    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 379
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    .line 381
    move-result v4

    .line 384
    iput-boolean v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 385
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 387
    move-result v4

    .line 390
    iput v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 391
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 393
    move-result v3

    .line 396
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 397
    :cond_e
    iput-boolean v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 399
    :cond_f
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 401
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 403
    if-nez v4, :cond_10

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 407
    move-result v4

    .line 410
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 413
    move-result v4

    .line 416
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 417
    iput-boolean v8, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 419
    :cond_10
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 421
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 423
    if-nez v4, :cond_13

    .line 425
    iput-boolean v8, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    .line 429
    move-result v4

    .line 432
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    .line 435
    move-result v4

    .line 438
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    .line 441
    move-result v4

    .line 444
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 445
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 447
    move-result v4

    .line 450
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 453
    move-result v4

    .line 456
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    .line 459
    move-result v4

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    .line 463
    move-result v5

    .line 466
    float-to-double v6, v4

    .line 467
    const-wide/16 v8, 0x0

    .line 468
    cmpl-double v6, v6, v8

    .line 470
    if-nez v6, :cond_11

    .line 472
    float-to-double v6, v5

    .line 474
    cmpl-double v6, v6, v8

    .line 475
    if-eqz v6, :cond_12

    .line 477
    :cond_11
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 479
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 481
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 483
    move-result v4

    .line 486
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 489
    move-result v4

    .line 492
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    .line 495
    move-result v4

    .line 498
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 499
    iget-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 501
    if-eqz v4, :cond_13

    .line 503
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 505
    move-result v0

    .line 508
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 509
    :cond_13
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 511
    goto/16 :goto_2

    .line 513
    :cond_14
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 515
    move-result-object p0

    .line 518
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 519
    move-result-object p0

    .line 522
    :cond_15
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    move-result p1

    .line 526
    if-eqz p1, :cond_1a

    .line 527
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    move-result-object p1

    .line 532
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 533
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 535
    if-nez p2, :cond_16

    .line 537
    goto :goto_5

    .line 539
    :cond_16
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 540
    if-nez p2, :cond_17

    .line 542
    iget p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 544
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 546
    move-result-object p2

    .line 549
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 550
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 552
    goto :goto_5

    .line 555
    :cond_17
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 556
    move-result-object p2

    .line 559
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 560
    move-result-object p2

    .line 563
    :cond_18
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    move-result v0

    .line 567
    if-eqz v0, :cond_15

    .line 568
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    move-result-object v0

    .line 573
    check-cast v0, Ljava/lang/Integer;

    .line 574
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 576
    move-result v0

    .line 579
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 580
    move-result-object v0

    .line 583
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 584
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 586
    if-nez v3, :cond_19

    .line 588
    goto :goto_6

    .line 590
    :cond_19
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 591
    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 593
    move-result v3

    .line 596
    if-eqz v3, :cond_18

    .line 597
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 599
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 601
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 604
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 606
    move-result-object v3

    .line 609
    check-cast v3, Ljava/util/HashMap;

    .line 610
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 612
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 614
    goto :goto_6

    .line 617
    :cond_1a
    return-void
    .line 618
.end method

.method public final setTransition(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    .line 7
    move-result v0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move v0, p1

    .line 14
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 15
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    .line 17
    move-result v2

    .line 20
    if-eq v2, v1, :cond_2

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    move v0, p1

    .line 24
    :cond_2
    move v2, p2

    .line 25
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 26
    if-eqz v3, :cond_3

    .line 28
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 30
    if-ne v4, p2, :cond_3

    .line 32
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 34
    if-ne v3, p1, :cond_3

    .line 36
    return-void

    .line 38
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v4

    .line 44
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v5

    .line 48
    if-eqz v5, :cond_8

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 54
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 55
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 57
    if-ne v6, v2, :cond_5

    .line 59
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 61
    if-eq v7, v0, :cond_6

    .line 63
    :cond_5
    if-ne v6, p2, :cond_4

    .line 65
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 67
    if-ne v6, p1, :cond_4

    .line 69
    :cond_6
    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 71
    iget-object p1, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 73
    if-eqz p1, :cond_7

    .line 75
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 77
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 79
    :cond_7
    return-void

    .line 82
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 83
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v4

    .line 90
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v5

    .line 94
    if-eqz v5, :cond_a

    .line 95
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v5

    .line 100
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 101
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 103
    if-ne v6, p2, :cond_9

    .line 105
    move-object p1, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_a
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 109
    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 111
    iput v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 114
    iput v2, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 116
    if-eq v0, v1, :cond_b

    .line 118
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_b
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 123
    return-void
    .line 125
.end method

.method public final supportTouch()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    return v2

    .line 25
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 26
    if-eqz p0, :cond_2

    .line 28
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 30
    if-eqz p0, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_0
    return v2
    .line 36
.end method
