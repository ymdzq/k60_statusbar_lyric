.class public final Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->$r8$classId:I

    .line 4
    const-wide/16 v2, 0x12c

    .line 6
    const v4, 0x3eb33333    # 0.35f

    .line 8
    const v5, 0x3f666666    # 0.9f

    .line 11
    const/4 v6, -0x2

    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    goto/16 :goto_1

    .line 22
    :pswitch_0
    sget-boolean v1, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v1, "QSDetail"

    .line 28
    const-string/jumbo v6, "showing on low end"

    .line 30
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v1, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 41
    invoke-direct {v1, v5, v4}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 43
    new-array v4, v8, [F

    .line 46
    fill-array-data v4, :array_0

    .line 48
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    move-result-object v4

    .line 54
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    move-result-object v2

    .line 58
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;

    .line 59
    invoke-direct {v3, v0, v10}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$7;

    .line 67
    invoke-direct {v3, v0, v10}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$7;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 69
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    goto/16 :goto_0

    .line 81
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->computeAnimationParams()V

    .line 85
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnim:Lmiuix/animation/IStateStyle;

    .line 88
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 90
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnim:Lmiuix/animation/IStateStyle;

    .line 93
    const-string v11, "fromLeft"

    .line 95
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 97
    aget v2, v2, v10

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v12

    .line 104
    const-string v13, "fromTop"

    .line 105
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 107
    aget v2, v2, v9

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v14

    .line 114
    const-string v15, "fromRight"

    .line 115
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 117
    aget v2, v2, v8

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v16

    .line 124
    const-string v17, "fromBottom"

    .line 125
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 127
    aget v2, v2, v7

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v18

    .line 134
    const-string/jumbo v19, "toLeft"

    .line 135
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 138
    aget v2, v2, v10

    .line 140
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 142
    aget v3, v3, v10

    .line 144
    add-int/2addr v2, v3

    .line 146
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 147
    aget v3, v3, v10

    .line 149
    sub-int/2addr v2, v3

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v20

    .line 155
    const-string/jumbo v21, "toTop"

    .line 156
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 159
    aget v2, v2, v9

    .line 161
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 163
    aget v3, v3, v9

    .line 165
    add-int/2addr v2, v3

    .line 167
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 168
    aget v3, v3, v9

    .line 170
    sub-int/2addr v2, v3

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v22

    .line 176
    const-string/jumbo v23, "toRight"

    .line 177
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 180
    aget v2, v2, v8

    .line 182
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 184
    aget v3, v3, v8

    .line 186
    add-int/2addr v2, v3

    .line 188
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 189
    aget v3, v3, v8

    .line 191
    sub-int/2addr v2, v3

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v24

    .line 197
    const-string/jumbo v25, "toBottom"

    .line 198
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 201
    aget v2, v2, v7

    .line 203
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 205
    aget v3, v3, v7

    .line 207
    add-int/2addr v2, v3

    .line 209
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 210
    aget v3, v3, v7

    .line 212
    sub-int/2addr v2, v3

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v26

    .line 218
    filled-new-array/range {v11 .. v26}, [Ljava/lang/Object;

    .line 219
    move-result-object v2

    .line 222
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 223
    move-result-object v1

    .line 226
    const-string v11, "fromLeft"

    .line 227
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 229
    aget v2, v2, v10

    .line 231
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 233
    aget v3, v3, v10

    .line 235
    add-int/2addr v2, v3

    .line 237
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 238
    aget v3, v3, v10

    .line 240
    sub-int/2addr v2, v3

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object v12

    .line 246
    const-string v13, "fromTop"

    .line 247
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 249
    aget v2, v2, v9

    .line 251
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 253
    aget v3, v3, v9

    .line 255
    add-int/2addr v2, v3

    .line 257
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 258
    aget v3, v3, v9

    .line 260
    sub-int/2addr v2, v3

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v14

    .line 266
    const-string v15, "fromRight"

    .line 267
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 269
    aget v2, v2, v8

    .line 271
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 273
    aget v3, v3, v8

    .line 275
    add-int/2addr v2, v3

    .line 277
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 278
    aget v3, v3, v8

    .line 280
    sub-int/2addr v2, v3

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v16

    .line 286
    const-string v17, "fromBottom"

    .line 287
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 289
    aget v2, v2, v7

    .line 291
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 293
    aget v3, v3, v7

    .line 295
    add-int/2addr v2, v3

    .line 297
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 298
    aget v3, v3, v7

    .line 300
    sub-int/2addr v2, v3

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    move-result-object v18

    .line 306
    const-string/jumbo v19, "toLeft"

    .line 307
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 310
    aget v2, v2, v10

    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    move-result-object v20

    .line 317
    const-string/jumbo v21, "toTop"

    .line 318
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 321
    aget v2, v2, v9

    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    move-result-object v22

    .line 328
    const-string/jumbo v23, "toRight"

    .line 329
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 332
    aget v2, v2, v8

    .line 334
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    move-result-object v24

    .line 339
    const-string/jumbo v25, "toBottom"

    .line 340
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 343
    aget v2, v2, v7

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    move-result-object v26

    .line 350
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 351
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 353
    new-array v3, v8, [F

    .line 356
    fill-array-data v3, :array_1

    .line 358
    invoke-virtual {v2, v6, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 361
    move-result-object v2

    .line 364
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;

    .line 365
    invoke-direct {v3, v0, v10}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 367
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 370
    move-result-object v0

    .line 373
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 374
    move-result-object v27

    .line 377
    filled-new-array/range {v11 .. v27}, [Ljava/lang/Object;

    .line 378
    move-result-object v0

    .line 381
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 382
    :goto_0
    return-void

    .line 385
    :goto_1
    sget-boolean v1, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 386
    if-eqz v1, :cond_1

    .line 388
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    new-instance v1, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 395
    invoke-direct {v1, v5, v4}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 397
    new-array v4, v8, [F

    .line 400
    fill-array-data v4, :array_2

    .line 402
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 405
    move-result-object v4

    .line 408
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 409
    move-result-object v2

    .line 412
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;

    .line 413
    invoke-direct {v3, v0, v9}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$6;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 415
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$7;

    .line 421
    invoke-direct {v3, v0, v9}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$7;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 423
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 429
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 432
    goto/16 :goto_2

    .line 435
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 437
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mIsAnimating:Z

    .line 439
    if-nez v1, :cond_2

    .line 441
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->computeAnimationParams()V

    .line 443
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnim:Lmiuix/animation/IStateStyle;

    .line 446
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 448
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnim:Lmiuix/animation/IStateStyle;

    .line 451
    const-string v11, "fromLeft"

    .line 453
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 455
    aget v2, v2, v10

    .line 457
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 459
    aget v3, v3, v10

    .line 461
    add-int/2addr v2, v3

    .line 463
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 464
    aget v3, v3, v10

    .line 466
    sub-int/2addr v2, v3

    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    move-result-object v12

    .line 472
    const-string v13, "fromTop"

    .line 473
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 475
    aget v2, v2, v9

    .line 477
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 479
    aget v3, v3, v9

    .line 481
    add-int/2addr v2, v3

    .line 483
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 484
    aget v3, v3, v9

    .line 486
    sub-int/2addr v2, v3

    .line 488
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    move-result-object v14

    .line 492
    const-string v15, "fromRight"

    .line 493
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 495
    aget v2, v2, v8

    .line 497
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 499
    aget v3, v3, v8

    .line 501
    add-int/2addr v2, v3

    .line 503
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 504
    aget v3, v3, v8

    .line 506
    sub-int/2addr v2, v3

    .line 508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    move-result-object v16

    .line 512
    const-string v17, "fromBottom"

    .line 513
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 515
    aget v2, v2, v7

    .line 517
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 519
    aget v3, v3, v7

    .line 521
    add-int/2addr v2, v3

    .line 523
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 524
    aget v3, v3, v7

    .line 526
    sub-int/2addr v2, v3

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    move-result-object v18

    .line 532
    const-string/jumbo v19, "toLeft"

    .line 533
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 536
    aget v2, v2, v10

    .line 538
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    move-result-object v20

    .line 543
    const-string/jumbo v21, "toTop"

    .line 544
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 547
    aget v2, v2, v9

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    move-result-object v22

    .line 554
    const-string/jumbo v23, "toRight"

    .line 555
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 558
    aget v2, v2, v8

    .line 560
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 562
    move-result-object v24

    .line 565
    const-string/jumbo v25, "toBottom"

    .line 566
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 569
    aget v2, v2, v7

    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    move-result-object v26

    .line 576
    filled-new-array/range {v11 .. v26}, [Ljava/lang/Object;

    .line 577
    move-result-object v2

    .line 580
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 581
    move-result-object v1

    .line 584
    const-string v11, "fromLeft"

    .line 585
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 587
    aget v2, v2, v10

    .line 589
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    move-result-object v12

    .line 594
    const-string v13, "fromTop"

    .line 595
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 597
    aget v2, v2, v9

    .line 599
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    move-result-object v14

    .line 604
    const-string v15, "fromRight"

    .line 605
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 607
    aget v2, v2, v8

    .line 609
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    move-result-object v16

    .line 614
    const-string v17, "fromBottom"

    .line 615
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewFrame:[I

    .line 617
    aget v2, v2, v7

    .line 619
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    move-result-object v18

    .line 624
    const-string/jumbo v19, "toLeft"

    .line 625
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 628
    aget v2, v2, v10

    .line 630
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 632
    aget v3, v3, v10

    .line 634
    add-int/2addr v2, v3

    .line 636
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 637
    aget v3, v3, v10

    .line 639
    sub-int/2addr v2, v3

    .line 641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 642
    move-result-object v20

    .line 645
    const-string/jumbo v21, "toTop"

    .line 646
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 649
    aget v2, v2, v9

    .line 651
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 653
    aget v3, v3, v9

    .line 655
    add-int/2addr v2, v3

    .line 657
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 658
    aget v3, v3, v9

    .line 660
    sub-int/2addr v2, v3

    .line 662
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    move-result-object v22

    .line 666
    const-string/jumbo v23, "toRight"

    .line 667
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 670
    aget v2, v2, v8

    .line 672
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 674
    aget v3, v3, v8

    .line 676
    add-int/2addr v2, v3

    .line 678
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 679
    aget v3, v3, v8

    .line 681
    sub-int/2addr v2, v3

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    move-result-object v24

    .line 687
    const-string/jumbo v25, "toBottom"

    .line 688
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewFrame:[I

    .line 691
    aget v2, v2, v7

    .line 693
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromViewLocation:[I

    .line 695
    aget v3, v3, v7

    .line 697
    add-int/2addr v2, v3

    .line 699
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToViewLocation:[I

    .line 700
    aget v3, v3, v7

    .line 702
    sub-int/2addr v2, v3

    .line 704
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    move-result-object v26

    .line 708
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 709
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 711
    new-array v3, v8, [F

    .line 714
    fill-array-data v3, :array_3

    .line 716
    invoke-virtual {v2, v6, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 719
    move-result-object v2

    .line 722
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;

    .line 723
    invoke-direct {v3, v0, v9}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;I)V

    .line 725
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 728
    move-result-object v0

    .line 731
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 732
    move-result-object v27

    .line 735
    filled-new-array/range {v11 .. v27}, [Ljava/lang/Object;

    .line 736
    move-result-object v0

    .line 739
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 740
    :goto_2
    return-void

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 744
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 750
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
    .end array-data

    .line 758
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 766
    :array_3
    .array-data 4
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
    .end array-data
    .line 774
.end method
