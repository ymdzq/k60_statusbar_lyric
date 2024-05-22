.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Float;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconAlpha:F

    .line 25
    return-void

    .line 27
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Float;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewRadius:F

    .line 43
    return-void

    .line 45
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Float;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 57
    move-result p1

    .line 60
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewAlpha:F

    .line 61
    return-void

    .line 63
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Float;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterY:F

    .line 79
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterY:F

    .line 81
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleHeight:F

    .line 83
    const/high16 v1, 0x40000000    # 2.0f

    .line 85
    div-float/2addr v0, v1

    .line 87
    add-float/2addr v0, p1

    .line 88
    iget p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleWidth:F

    .line 89
    div-float/2addr p1, v1

    .line 91
    sub-float/2addr v0, p1

    .line 92
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterY:F

    .line 93
    return-void

    .line 95
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/Float;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 107
    move-result p1

    .line 110
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterX:F

    .line 111
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterX:F

    .line 113
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterX:F

    .line 115
    return-void

    .line 117
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 126
    check-cast p1, Ljava/lang/Float;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 129
    move-result p1

    .line 132
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeight:F

    .line 133
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleHeight:F

    .line 135
    return-void

    .line 137
    :pswitch_6
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 143
    move-result-object p1

    .line 146
    check-cast p1, Ljava/lang/Float;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 149
    move-result p1

    .line 152
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewWidth:F

    .line 153
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleWidth:F

    .line 155
    return-void

    .line 157
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 163
    move-result-object p1

    .line 166
    check-cast p1, Ljava/lang/Float;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 169
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 173
    cmpg-float v0, p1, v1

    .line 175
    if-gez v0, :cond_0

    .line 177
    goto :goto_0

    .line 179
    :cond_0
    move v1, p1

    .line 180
    :goto_0
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 181
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->handleMoveDistanceChanged()V

    .line 183
    return-void

    .line 186
    :pswitch_8
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 192
    move-result-object p1

    .line 195
    check-cast p1, Ljava/lang/Float;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 198
    move-result p1

    .line 201
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->handleMoveDistanceChanged()V

    .line 204
    return-void

    .line 207
    :pswitch_9
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 216
    check-cast p1, Ljava/lang/Float;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 219
    move-result p1

    .line 222
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveYPer:F

    .line 223
    return-void

    .line 225
    :pswitch_a
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 231
    move-result-object p1

    .line 234
    check-cast p1, Ljava/lang/Float;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 237
    move-result p1

    .line 240
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 241
    cmpg-float v0, p1, v1

    .line 243
    if-gez v0, :cond_1

    .line 245
    goto :goto_1

    .line 247
    :cond_1
    move v1, p1

    .line 248
    :goto_1
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 249
    return-void

    .line 251
    :pswitch_b
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 257
    move-result-object p1

    .line 260
    check-cast p1, Ljava/lang/Float;

    .line 261
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 263
    move-result p1

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundView:Landroid/view/View;

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 269
    return-void

    .line 272
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 278
    move-result-object p1

    .line 281
    check-cast p1, Ljava/lang/Float;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 284
    move-result p1

    .line 287
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconScale:F

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 290
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updatePreView()V

    .line 293
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateIconView()V

    .line 296
    return-void

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 300
.end method
