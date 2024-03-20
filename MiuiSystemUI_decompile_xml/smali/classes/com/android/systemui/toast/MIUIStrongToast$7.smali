.class public final Lcom/android/systemui/toast/MIUIStrongToast$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$7;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$7;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    :pswitch_0
    return-void

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 12
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$7;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/toast/MIUIStrongToast$7;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 10
    sget v1, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/toast/MIUIStrongToast;->onComplete()V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast$7;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 18
    sget v2, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 28
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v5

    .line 36
    const-string/jumbo v6, "target"

    .line 37
    filled-new-array {v6, v5}, [Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 43
    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 44
    move-result-object v3

    .line 47
    const/high16 v5, 0x3f800000    # 1.0f

    .line 48
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v5

    .line 53
    new-instance v7, Lmiuix/animation/base/AnimConfig;

    .line 54
    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 56
    const/4 v8, 0x2

    .line 59
    new-array v8, v8, [F

    .line 60
    fill-array-data v8, :array_0

    .line 62
    const/4 v9, -0x2

    .line 65
    invoke-virtual {v7, v9, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 66
    move-result-object v7

    .line 69
    new-instance v8, Lcom/android/systemui/toast/MIUIStrongToast$12;

    .line 70
    invoke-direct {v8, v1}, Lcom/android/systemui/toast/MIUIStrongToast$12;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 72
    filled-new-array {v8}, [Lmiuix/animation/listener/TransitionListener;

    .line 75
    move-result-object v1

    .line 78
    invoke-virtual {v7, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 79
    move-result-object v1

    .line 82
    filled-new-array {v6, v5, v1}, [Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    invoke-interface {v3, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 87
    iget-object v0, v0, Lcom/android/systemui/toast/MIUIStrongToast$7;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 90
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v3

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/toast/MIUIStrongToast;->isRTL()Z

    .line 106
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 112
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 114
    move-result v1

    .line 117
    int-to-float v1, v1

    .line 118
    iget-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 119
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRight()I

    .line 121
    move-result v5

    .line 124
    goto :goto_1

    .line 125
    :cond_0
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationXPad:F

    .line 126
    iget-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 128
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 130
    move-result v5

    .line 133
    :goto_1
    int-to-float v5, v5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v7, "start :"

    .line 137
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    const-string v7, " end :"

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v6

    .line 157
    const-string v7, "MIUIStrongToast"

    .line 158
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v6, Lmiuix/animation/controller/AnimState;

    .line 163
    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 165
    sget-object v8, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 168
    float-to-double v9, v5

    .line 170
    invoke-virtual {v6, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 171
    move-result-object v6

    .line 174
    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 175
    const/4 v10, 0x1

    .line 177
    int-to-double v11, v10

    .line 178
    invoke-virtual {v6, v9, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 179
    move-result-object v6

    .line 182
    iget-object v13, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 183
    filled-new-array {v13}, [Landroid/view/View;

    .line 185
    move-result-object v13

    .line 188
    invoke-static {v13}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 189
    move-result-object v13

    .line 192
    invoke-interface {v13}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 193
    move-result-object v13

    .line 196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 197
    move-result-object v14

    .line 200
    filled-new-array {v8, v14, v9, v3}, [Ljava/lang/Object;

    .line 201
    move-result-object v14

    .line 204
    invoke-interface {v13, v14}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 205
    move-result-object v13

    .line 208
    new-instance v14, Lmiuix/animation/base/AnimConfig;

    .line 209
    invoke-direct {v14}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 211
    move-object/from16 p0, v3

    .line 214
    const-wide/16 v2, 0xb4

    .line 216
    invoke-virtual {v14, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 218
    move-result-object v14

    .line 221
    iget-object v15, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 222
    invoke-virtual {v14, v8, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 224
    move-result-object v14

    .line 227
    iget-object v15, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 228
    invoke-virtual {v14, v9, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 230
    move-result-object v14

    .line 233
    new-instance v15, Lcom/android/systemui/toast/MIUIStrongToast$10;

    .line 234
    invoke-direct {v15, v0, v5, v1, v10}, Lcom/android/systemui/toast/MIUIStrongToast$10;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;FFI)V

    .line 236
    filled-new-array {v15}, [Lmiuix/animation/listener/TransitionListener;

    .line 239
    move-result-object v1

    .line 242
    invoke-virtual {v14, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 243
    move-result-object v1

    .line 246
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 247
    move-result-object v1

    .line 250
    invoke-interface {v13, v6, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/toast/MIUIStrongToast;->isRTL()Z

    .line 254
    move-result v1

    .line 257
    if-eqz v1, :cond_1

    .line 258
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 260
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 262
    move-result v1

    .line 265
    iget-object v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 266
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 268
    move-result v5

    .line 271
    sub-int/2addr v1, v5

    .line 272
    int-to-float v1, v1

    .line 273
    goto :goto_2

    .line 274
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 275
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 277
    move-result v1

    .line 280
    int-to-float v4, v1

    .line 281
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 282
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    .line 284
    move-result v1

    .line 287
    int-to-float v1, v1

    .line 288
    iget v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationXPad:F

    .line 289
    sub-float/2addr v1, v5

    .line 291
    :goto_2
    new-instance v5, Lmiuix/animation/controller/AnimState;

    .line 292
    invoke-direct {v5}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 294
    float-to-double v13, v4

    .line 297
    invoke-virtual {v5, v8, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 298
    move-result-object v5

    .line 301
    invoke-virtual {v5, v9, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 302
    move-result-object v5

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v10, "startRight :"

    .line 308
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v6

    .line 320
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    const-string v10, "finalRight :"

    .line 326
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v6

    .line 337
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 341
    filled-new-array {v6}, [Landroid/view/View;

    .line 343
    move-result-object v6

    .line 346
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 347
    move-result-object v6

    .line 350
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 351
    move-result-object v6

    .line 354
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 355
    move-result-object v7

    .line 358
    move-object/from16 v10, p0

    .line 359
    filled-new-array {v8, v7, v9, v10}, [Ljava/lang/Object;

    .line 361
    move-result-object v7

    .line 364
    invoke-interface {v6, v7}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 365
    move-result-object v6

    .line 368
    new-instance v7, Lmiuix/animation/base/AnimConfig;

    .line 369
    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 371
    invoke-virtual {v7, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 374
    move-result-object v2

    .line 377
    iget-object v3, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 378
    invoke-virtual {v2, v8, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 380
    move-result-object v2

    .line 383
    iget-object v3, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 384
    invoke-virtual {v2, v9, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 386
    move-result-object v2

    .line 389
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$10;

    .line 390
    const/4 v7, 0x0

    .line 392
    invoke-direct {v3, v0, v1, v4, v7}, Lcom/android/systemui/toast/MIUIStrongToast$10;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;FFI)V

    .line 393
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 396
    move-result-object v0

    .line 399
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 400
    move-result-object v0

    .line 403
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 404
    move-result-object v0

    .line 407
    invoke-interface {v6, v5, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 408
    return-void

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 412
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ef5c28f    # 0.48f
    .end array-data
    .line 418
.end method
