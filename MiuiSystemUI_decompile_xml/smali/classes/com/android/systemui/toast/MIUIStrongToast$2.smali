.class public final Lcom/android/systemui/toast/MIUIStrongToast$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->$r8$classId:I

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 17
    sget v3, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-array v3, v4, [F

    .line 24
    fill-array-data v3, :array_0

    .line 26
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 29
    move-result-object v3

    .line 32
    new-instance v4, Lcom/android/systemui/toast/MIUIStrongToast$4;

    .line 33
    invoke-direct {v4, v1, v5}, Lcom/android/systemui/toast/MIUIStrongToast$4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 35
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 41
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 43
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    const-wide/16 v4, 0x3e8

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 57
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 63
    return v2

    .line 66
    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 67
    iget-object v3, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 69
    if-eqz v3, :cond_0

    .line 71
    iget-object v1, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 75
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    iget-object v4, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 80
    iget-object v4, v4, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    .line 84
    move-result v4

    .line 87
    int-to-float v4, v4

    .line 88
    const-string/jumbo v5, "uViewSize"

    .line 89
    invoke-virtual {v3, v5, v1, v4}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 92
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 95
    iget-object v1, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    return v2

    .line 106
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 107
    iget-boolean v6, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 109
    if-eqz v6, :cond_6

    .line 111
    iput-boolean v5, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 113
    iget-boolean v6, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 115
    const-string v7, "MIUIStrongToast"

    .line 117
    if-eqz v6, :cond_3

    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/toast/MIUIStrongToast;->isRTL()Z

    .line 121
    move-result v6

    .line 124
    if-eqz v6, :cond_1

    .line 125
    iget-object v6, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 127
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 129
    move-result v6

    .line 132
    int-to-float v6, v6

    .line 133
    move v9, v6

    .line 134
    const/4 v6, 0x0

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    iget-object v6, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 137
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getRight()I

    .line 139
    move-result v6

    .line 142
    int-to-float v6, v6

    .line 143
    const/4 v9, 0x0

    .line 144
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v11, "start: "

    .line 147
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    const-string v11, " end :"

    .line 156
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v10

    .line 167
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v10, Lmiuix/animation/controller/AnimState;

    .line 171
    invoke-direct {v10}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 173
    sget-object v11, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 176
    float-to-double v12, v9

    .line 178
    invoke-virtual {v10, v11, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 179
    move-result-object v10

    .line 182
    sget-object v12, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 183
    int-to-double v13, v5

    .line 185
    invoke-virtual {v10, v12, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 186
    move-result-object v5

    .line 189
    iget-object v10, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 190
    filled-new-array {v10}, [Landroid/view/View;

    .line 192
    move-result-object v10

    .line 195
    invoke-static {v10}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 196
    move-result-object v10

    .line 199
    invoke-interface {v10}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 200
    move-result-object v10

    .line 203
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    move-result-object v15

    .line 207
    filled-new-array {v11, v15, v12, v3}, [Ljava/lang/Object;

    .line 208
    move-result-object v15

    .line 211
    invoke-interface {v10, v15}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 212
    move-result-object v10

    .line 215
    new-instance v15, Lmiuix/animation/base/AnimConfig;

    .line 216
    invoke-direct {v15}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 218
    iget-object v8, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 221
    invoke-virtual {v15, v11, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 223
    move-result-object v8

    .line 226
    iget-object v15, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 227
    invoke-virtual {v8, v12, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 229
    move-result-object v8

    .line 232
    new-instance v15, Lcom/android/systemui/toast/MIUIStrongToast$10;

    .line 233
    const/4 v2, 0x3

    .line 235
    invoke-direct {v15, v1, v9, v6, v2}, Lcom/android/systemui/toast/MIUIStrongToast$10;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;FFI)V

    .line 236
    filled-new-array {v15}, [Lmiuix/animation/listener/TransitionListener;

    .line 239
    move-result-object v2

    .line 242
    invoke-virtual {v8, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 243
    move-result-object v2

    .line 246
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 247
    move-result-object v2

    .line 250
    invoke-interface {v10, v5, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 251
    invoke-virtual {v1}, Lcom/android/systemui/toast/MIUIStrongToast;->isRTL()Z

    .line 254
    move-result v2

    .line 257
    if-eqz v2, :cond_2

    .line 258
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 260
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRight()I

    .line 262
    move-result v2

    .line 265
    int-to-float v2, v2

    .line 266
    move v8, v2

    .line 267
    const/4 v2, 0x0

    .line 268
    goto :goto_2

    .line 269
    :cond_2
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 270
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 272
    move-result v2

    .line 275
    int-to-float v2, v2

    .line 276
    const/4 v8, 0x0

    .line 277
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v6, "startRight :"

    .line 280
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 286
    const-string v6, "endRight :"

    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v5

    .line 300
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v5, Lmiuix/animation/controller/AnimState;

    .line 304
    invoke-direct {v5}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 306
    float-to-double v9, v2

    .line 309
    invoke-virtual {v5, v11, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 310
    move-result-object v5

    .line 313
    invoke-virtual {v5, v12, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 314
    move-result-object v5

    .line 317
    iget-object v6, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 318
    filled-new-array {v6}, [Landroid/view/View;

    .line 320
    move-result-object v6

    .line 323
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 324
    move-result-object v6

    .line 327
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 328
    move-result-object v6

    .line 331
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 332
    move-result-object v9

    .line 335
    filled-new-array {v11, v9, v12, v3}, [Ljava/lang/Object;

    .line 336
    move-result-object v3

    .line 339
    invoke-interface {v6, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 340
    move-result-object v3

    .line 343
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    .line 344
    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 346
    iget-object v9, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 349
    invoke-virtual {v6, v11, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 351
    move-result-object v6

    .line 354
    iget-object v9, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 355
    invoke-virtual {v6, v12, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 357
    move-result-object v6

    .line 360
    new-instance v9, Lcom/android/systemui/toast/MIUIStrongToast$10;

    .line 361
    invoke-direct {v9, v1, v8, v2, v4}, Lcom/android/systemui/toast/MIUIStrongToast$10;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;FFI)V

    .line 363
    filled-new-array {v9}, [Lmiuix/animation/listener/TransitionListener;

    .line 366
    move-result-object v1

    .line 369
    invoke-virtual {v6, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 370
    move-result-object v1

    .line 373
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 374
    move-result-object v1

    .line 377
    invoke-interface {v3, v5, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 378
    goto/16 :goto_5

    .line 381
    :cond_3
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 383
    const/4 v3, 0x4

    .line 385
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 389
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mCirCleCenter:Landroid/widget/FrameLayout;

    .line 394
    const-wide/16 v8, 0x1f4

    .line 396
    const-wide/16 v10, 0x64

    .line 398
    const-string v3, "alpha"

    .line 400
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 402
    if-eqz v2, :cond_4

    .line 404
    new-array v12, v4, [F

    .line 406
    fill-array-data v12, :array_1

    .line 408
    invoke-static {v2, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 411
    move-result-object v2

    .line 414
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    .line 415
    invoke-direct {v12, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 417
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 423
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 426
    goto :goto_3

    .line 429
    :cond_4
    const/4 v2, 0x0

    .line 430
    :goto_3
    move-object/from16 v23, v2

    .line 431
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 435
    iget-object v2, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 438
    new-array v12, v4, [F

    .line 440
    fill-array-data v12, :array_2

    .line 442
    invoke-static {v2, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 445
    move-result-object v2

    .line 448
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    .line 449
    invoke-direct {v12, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 451
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v10, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 460
    new-array v11, v4, [F

    .line 462
    fill-array-data v11, :array_3

    .line 464
    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 467
    move-result-object v3

    .line 470
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    .line 471
    invoke-direct {v10, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 473
    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 479
    iget-object v10, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 482
    sget-object v11, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 484
    new-array v12, v4, [F

    .line 486
    fill-array-data v12, :array_4

    .line 488
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 491
    move-result-object v10

    .line 494
    iget-object v11, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 495
    sget-object v12, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 497
    new-array v13, v4, [F

    .line 499
    fill-array-data v13, :array_5

    .line 501
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 504
    move-result-object v11

    .line 507
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    .line 508
    invoke-direct {v12, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 510
    invoke-virtual {v10, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    .line 516
    invoke-direct {v12, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 518
    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    const-wide/16 v12, 0x118

    .line 524
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 526
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 529
    iget-object v14, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 532
    sget-object v15, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 534
    new-array v5, v4, [F

    .line 536
    fill-array-data v5, :array_6

    .line 538
    invoke-static {v14, v15, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 541
    move-result-object v5

    .line 544
    iget-object v14, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgFL:Landroid/widget/FrameLayout;

    .line 545
    sget-object v15, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 547
    new-array v8, v4, [F

    .line 549
    fill-array-data v8, :array_7

    .line 551
    invoke-static {v14, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 554
    move-result-object v8

    .line 557
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    .line 558
    invoke-direct {v9, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 560
    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    .line 566
    invoke-direct {v9, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 568
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    const-wide/16 v14, 0x140

    .line 574
    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 576
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 579
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 585
    new-array v4, v4, [F

    .line 588
    fill-array-data v4, :array_8

    .line 590
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 593
    move-result-object v4

    .line 596
    const-wide/16 v12, 0x1f4

    .line 597
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    new-instance v6, Lcom/android/systemui/toast/MIUIStrongToast$7;

    .line 602
    const/4 v9, 0x1

    .line 604
    invoke-direct {v6, v1, v9}, Lcom/android/systemui/toast/MIUIStrongToast$7;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 605
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 611
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 613
    if-eqz v23, :cond_5

    .line 616
    move-object/from16 v16, v2

    .line 618
    move-object/from16 v17, v3

    .line 620
    move-object/from16 v18, v10

    .line 622
    move-object/from16 v19, v11

    .line 624
    move-object/from16 v20, v5

    .line 626
    move-object/from16 v21, v8

    .line 628
    move-object/from16 v22, v4

    .line 630
    filled-new-array/range {v16 .. v23}, [Landroid/animation/Animator;

    .line 632
    move-result-object v1

    .line 635
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 636
    goto :goto_4

    .line 639
    :cond_5
    iget-object v1, v1, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 642
    move-result-object v1

    .line 645
    const v9, 0x7f071112    # @dimen/strong_toast_view_animation_x '42.0dp'

    .line 646
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 649
    move-object/from16 v16, v2

    .line 652
    move-object/from16 v17, v3

    .line 654
    move-object/from16 v18, v10

    .line 656
    move-object/from16 v19, v11

    .line 658
    move-object/from16 v20, v5

    .line 660
    move-object/from16 v21, v8

    .line 662
    move-object/from16 v22, v4

    .line 664
    filled-new-array/range {v16 .. v22}, [Landroid/animation/Animator;

    .line 666
    move-result-object v1

    .line 669
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 670
    :goto_4
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 673
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 676
    const-string/jumbo v2, "width :"

    .line 678
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 684
    iget-object v2, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToast:Landroid/widget/LinearLayout;

    .line 686
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    .line 688
    move-result v2

    .line 691
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    move-result-object v1

    .line 698
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$2;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 702
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 704
    move-result-object v1

    .line 707
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 708
    const/4 v0, 0x0

    .line 711
    return v0

    .line 712
    nop

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 714
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 722
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 730
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 738
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 746
    :array_4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data

    .line 754
    :array_5
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data

    .line 762
    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 770
    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 778
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 786
.end method
