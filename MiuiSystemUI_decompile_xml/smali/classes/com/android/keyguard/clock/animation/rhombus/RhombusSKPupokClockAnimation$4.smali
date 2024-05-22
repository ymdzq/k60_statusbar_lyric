.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

.field public final synthetic val$firstNum:Z

.field public final synthetic val$lastNum:Z

.field public final synthetic val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

.field public final synthetic val$ticker:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;ZLcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;ZLandroid/view/View;FI)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$firstNum:Z

    .line 6
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 8
    iput-boolean p4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$lastNum:Z

    .line 10
    iput-object p5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$view:Landroid/view/View;

    .line 12
    iput p6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$ticker:F

    .line 14
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$firstNum:Z

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 12
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_0
    return-void

    .line 20
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 21
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    :cond_1
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$lastNum:Z

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 12
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 20
    :cond_0
    return-void

    .line 23
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 24
    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 32
    :cond_1
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$lastNum:Z

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 12
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 20
    :cond_0
    return-void

    .line 23
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 24
    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 32
    :cond_1
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget v5, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->$r8$classId:I

    .line 6
    iget v6, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$ticker:F

    .line 8
    iget-object v7, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$view:Landroid/view/View;

    .line 10
    iget-object v8, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 12
    iget-boolean v9, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$lastNum:Z

    .line 14
    const-string v10, "pr"

    .line 16
    const-string v11, "pl"

    .line 18
    iget-object v12, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$4;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 20
    const-string v13, "angel"

    .line 22
    const-string/jumbo v14, "viewAlpha"

    .line 24
    const-string/jumbo v15, "viewScaleY"

    .line 27
    const-string/jumbo v2, "viewScaleX"

    .line 30
    const-string/jumbo v3, "viewTranslationY"

    .line 33
    const-string/jumbo v4, "viewTranslationX"

    .line 36
    packed-switch v5, :pswitch_data_0

    .line 39
    goto/16 :goto_2

    .line 42
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 44
    invoke-static {v1, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 47
    move-result-object v0

    .line 50
    invoke-static {v1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 51
    move-result-object v3

    .line 54
    invoke-static {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 55
    move-result-object v2

    .line 58
    invoke-static {v1, v15}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 59
    move-result-object v4

    .line 62
    invoke-static {v1, v14}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 63
    move-result-object v5

    .line 66
    invoke-static {v1, v13}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 67
    move-result-object v1

    .line 70
    if-eqz v0, :cond_4

    .line 71
    if-eqz v3, :cond_4

    .line 73
    if-eqz v2, :cond_4

    .line 75
    if-eqz v4, :cond_4

    .line 77
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 81
    move-result v0

    .line 84
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 85
    move-result v3

    .line 88
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 89
    move-result v2

    .line 92
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 93
    move-result v4

    .line 96
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 97
    move-result-object v13

    .line 100
    invoke-virtual {v13, v11}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 101
    move-result v11

    .line 104
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 105
    move-result-object v13

    .line 108
    invoke-virtual {v13, v10}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 109
    move-result v10

    .line 112
    if-eqz v9, :cond_0

    .line 113
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 115
    move-result v9

    .line 118
    float-to-double v13, v9

    .line 119
    const-wide v17, 0x3fb999999999999aL    # 0.1

    .line 120
    cmpg-double v9, v13, v17

    .line 125
    if-gez v9, :cond_0

    .line 127
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 129
    move-result v9

    .line 132
    float-to-double v13, v9

    .line 133
    cmpg-double v9, v13, v17

    .line 134
    if-gez v9, :cond_0

    .line 136
    iget v9, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAodScale:F

    .line 138
    cmpl-float v9, v2, v9

    .line 140
    if-nez v9, :cond_0

    .line 142
    invoke-static {v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 144
    iget-object v9, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViewParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 147
    array-length v13, v9

    .line 149
    const/4 v14, 0x0

    .line 150
    :goto_0
    if-ge v14, v13, :cond_0

    .line 151
    aget-object v15, v9, v14

    .line 153
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 155
    move-result-object v15

    .line 158
    invoke-static {v15}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 159
    move-result-object v15

    .line 162
    const-string/jumbo v16, "viewTranslationX"

    .line 163
    const-string/jumbo v17, "viewTranslationY"

    .line 166
    const-string/jumbo v18, "viewScaleX"

    .line 169
    const-string/jumbo v19, "viewScaleY"

    .line 172
    const-string v20, "angel"

    .line 175
    const-string/jumbo v21, "viewAlpha"

    .line 177
    move-object/from16 p0, v9

    .line 180
    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    .line 182
    move-result-object v9

    .line 185
    invoke-interface {v15, v9}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 186
    add-int/lit8 v14, v14, 0x1

    .line 189
    move-object/from16 v9, p0

    .line 191
    goto :goto_0

    .line 193
    :cond_0
    if-eqz v5, :cond_1

    .line 194
    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 196
    move-result v5

    .line 199
    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 200
    :cond_1
    iget v5, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 203
    add-float/2addr v5, v6

    .line 205
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    invoke-static {v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 209
    move-result v5

    .line 212
    mul-float/2addr v5, v11

    .line 213
    add-float/2addr v5, v0

    .line 214
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 215
    iget v0, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 218
    add-float/2addr v0, v6

    .line 220
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 221
    move-result v0

    .line 224
    mul-float/2addr v0, v11

    .line 225
    add-float/2addr v0, v3

    .line 226
    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 227
    invoke-virtual {v7, v2}, Landroid/view/View;->setScaleX(F)V

    .line 230
    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleY(F)V

    .line 233
    instance-of v0, v7, Lcom/miui/clock/MiuiClockNumberView;

    .line 236
    if-eqz v0, :cond_3

    .line 238
    iget-boolean v0, v8, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 240
    if-eqz v0, :cond_2

    .line 242
    move-object v0, v7

    .line 244
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 245
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 247
    move-result v1

    .line 250
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 251
    goto :goto_1

    .line 254
    :cond_2
    move-object v0, v7

    .line 255
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 256
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 258
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 261
    move-result v1

    .line 264
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 265
    :cond_3
    :goto_1
    iget v0, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 267
    add-float/2addr v0, v6

    .line 269
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 270
    move-result v0

    .line 273
    mul-float/2addr v0, v10

    .line 274
    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    .line 275
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 278
    :cond_4
    return-void

    .line 281
    :goto_2
    invoke-super/range {p0 .. p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 282
    invoke-static {v1, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 285
    move-result-object v0

    .line 288
    invoke-static {v1, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 289
    move-result-object v3

    .line 292
    invoke-static {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 293
    move-result-object v2

    .line 296
    invoke-static {v1, v15}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 297
    move-result-object v4

    .line 300
    invoke-static {v1, v14}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 301
    move-result-object v5

    .line 304
    invoke-static {v1, v13}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 305
    move-result-object v1

    .line 308
    if-eqz v0, :cond_9

    .line 309
    if-eqz v3, :cond_9

    .line 311
    if-eqz v2, :cond_9

    .line 313
    if-eqz v4, :cond_9

    .line 315
    if-eqz v1, :cond_9

    .line 317
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 319
    move-result v0

    .line 322
    invoke-virtual {v3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 323
    move-result v3

    .line 326
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 327
    move-result v2

    .line 330
    invoke-virtual {v4}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 331
    move-result v4

    .line 334
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 335
    move-result-object v13

    .line 338
    invoke-virtual {v13, v11}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 339
    move-result v11

    .line 342
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 343
    move-result-object v13

    .line 346
    invoke-virtual {v13, v10}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 347
    move-result v10

    .line 350
    if-eqz v9, :cond_5

    .line 351
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 353
    move-result v9

    .line 356
    float-to-double v13, v9

    .line 357
    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    .line 358
    cmpg-double v9, v13, v19

    .line 363
    if-gez v9, :cond_5

    .line 365
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 367
    move-result v9

    .line 370
    float-to-double v13, v9

    .line 371
    cmpg-double v9, v13, v19

    .line 372
    if-gez v9, :cond_5

    .line 374
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 376
    move-result v9

    .line 379
    float-to-double v13, v9

    .line 380
    const-wide v17, 0x3fb999999999999aL    # 0.1

    .line 381
    cmpg-double v9, v13, v17

    .line 386
    if-gez v9, :cond_5

    .line 388
    const/high16 v9, 0x3f800000    # 1.0f

    .line 390
    cmpl-float v9, v2, v9

    .line 392
    if-nez v9, :cond_5

    .line 394
    invoke-static {v8}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->-$$Nest$mcancelSKParamAnim(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V

    .line 396
    iget-object v9, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockViewParams:[Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 399
    array-length v13, v9

    .line 401
    const/4 v14, 0x0

    .line 402
    :goto_3
    if-ge v14, v13, :cond_5

    .line 403
    aget-object v15, v9, v14

    .line 405
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 407
    move-result-object v15

    .line 410
    invoke-static {v15}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 411
    move-result-object v15

    .line 414
    const-string/jumbo v16, "viewTranslationX"

    .line 415
    const-string/jumbo v17, "viewTranslationY"

    .line 418
    const-string/jumbo v18, "viewScaleX"

    .line 421
    const-string/jumbo v19, "viewScaleY"

    .line 424
    const-string v20, "angel"

    .line 427
    const-string/jumbo v21, "viewAlpha"

    .line 429
    move-object/from16 p0, v9

    .line 432
    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    .line 434
    move-result-object v9

    .line 437
    invoke-interface {v15, v9}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 438
    add-int/lit8 v14, v14, 0x1

    .line 441
    move-object/from16 v9, p0

    .line 443
    goto :goto_3

    .line 445
    :cond_5
    if-eqz v5, :cond_6

    .line 446
    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 448
    move-result v5

    .line 451
    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 452
    :cond_6
    iget v5, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 455
    add-float/2addr v5, v6

    .line 457
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    invoke-static {v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 461
    move-result v5

    .line 464
    mul-float/2addr v5, v11

    .line 465
    add-float/2addr v5, v0

    .line 466
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 467
    iget v0, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 470
    add-float/2addr v0, v6

    .line 472
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 473
    move-result v0

    .line 476
    mul-float/2addr v0, v11

    .line 477
    add-float/2addr v0, v3

    .line 478
    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 479
    invoke-virtual {v7, v2}, Landroid/view/View;->setScaleX(F)V

    .line 482
    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleY(F)V

    .line 485
    instance-of v0, v7, Lcom/miui/clock/MiuiClockNumberView;

    .line 488
    if-eqz v0, :cond_8

    .line 490
    iget-boolean v0, v8, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 492
    if-eqz v0, :cond_7

    .line 494
    move-object v0, v7

    .line 496
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 497
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 499
    move-result v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 503
    goto :goto_4

    .line 506
    :cond_7
    move-object v0, v7

    .line 507
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 508
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 510
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 513
    move-result v1

    .line 516
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 517
    :cond_8
    :goto_4
    iget v0, v12, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 519
    add-float/2addr v0, v6

    .line 521
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 522
    move-result v0

    .line 525
    mul-float/2addr v0, v10

    .line 526
    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    .line 527
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 530
    :cond_9
    return-void

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 534
.end method
