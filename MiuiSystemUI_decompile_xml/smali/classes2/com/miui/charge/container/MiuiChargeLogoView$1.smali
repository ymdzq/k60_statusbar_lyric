.class public final Lcom/miui/charge/container/MiuiChargeLogoView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeLogoView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeLogoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 2
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 4
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    return-void
    .line 11
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 2
    iget v0, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 4
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v2, v0, :cond_0

    .line 8
    if-ne v1, v0, :cond_6

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 18
    iget v3, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 20
    const/4 v4, 0x1

    .line 22
    const-wide/16 v5, 0x12c

    .line 23
    if-ne v1, v3, :cond_3

    .line 25
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 27
    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    .line 29
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 32
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    .line 36
    sget-object p1, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 39
    new-array v0, v2, [F

    .line 41
    fill-array-data v0, :array_0

    .line 43
    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 46
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 60
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 65
    if-eqz v0, :cond_2

    .line 67
    const-class v0, Lcom/miui/charge/MiuiChargeController;

    .line 69
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    .line 75
    iget-boolean v0, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    .line 77
    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerCloseDoubleTx:Landroid/widget/TextView;

    .line 81
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    .line 83
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mMaxChargePowerTx:Landroid/widget/TextView;

    .line 98
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    .line 100
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 114
    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 116
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 121
    new-instance v0, Lcom/miui/charge/view/MiuiChargeTurboView$1;

    .line 123
    invoke-direct {v0, p0, v4}, Lcom/miui/charge/view/MiuiChargeTurboView$1;-><init>(Lcom/miui/charge/view/MiuiChargeTurboView;I)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 131
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 133
    goto/16 :goto_1

    .line 136
    :cond_3
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 138
    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 140
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 143
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 145
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 147
    if-eqz p1, :cond_4

    .line 149
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 151
    move-result p1

    .line 154
    if-eqz p1, :cond_4

    .line 155
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIconAnimator:Landroid/animation/ObjectAnimator;

    .line 157
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 162
    if-eqz p1, :cond_5

    .line 164
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 166
    :cond_5
    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    .line 169
    sget-object p1, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 172
    new-array v1, v2, [F

    .line 174
    fill-array-data v1, :array_1

    .line 176
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 179
    move-result-object p1

    .line 182
    sget-object v1, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 183
    new-array v3, v2, [F

    .line 185
    fill-array-data v3, :array_2

    .line 187
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 190
    move-result-object v1

    .line 193
    sget-object v3, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 194
    new-array v7, v2, [F

    .line 196
    fill-array-data v7, :array_3

    .line 198
    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 201
    move-result-object v3

    .line 204
    iget-object v7, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mChargeIcon:Landroid/widget/ImageView;

    .line 205
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    .line 207
    move-result-object p1

    .line 210
    invoke-static {v7, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 211
    move-result-object p1

    .line 214
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    move-result-object p1

    .line 218
    iget-object v7, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 219
    invoke-virtual {p1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    sget-object v7, Landroid/widget/RelativeLayout;->TRANSLATION_X:Landroid/util/Property;

    .line 224
    new-array v2, v2, [F

    .line 226
    iget v8, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTranslation:I

    .line 228
    neg-int v8, v8

    .line 230
    int-to-float v8, v8

    .line 231
    aput v8, v2, v0

    .line 232
    const/4 v8, 0x0

    .line 234
    aput v8, v2, v4

    .line 235
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 237
    move-result-object v2

    .line 240
    iget-object v4, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTurboIcon:Landroid/widget/ImageView;

    .line 241
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    .line 243
    move-result-object v7

    .line 246
    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 247
    move-result-object v4

    .line 250
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    move-result-object v4

    .line 254
    iget-object v7, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 255
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v7, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 260
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    .line 262
    move-result-object v2

    .line 265
    invoke-static {v7, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 266
    move-result-object v2

    .line 269
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    move-result-object v2

    .line 273
    iget-object v5, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 274
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    iget-object v5, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->mTailIcon:Landroid/widget/ImageView;

    .line 279
    filled-new-array {v1, v3}, [Landroid/animation/PropertyValuesHolder;

    .line 281
    move-result-object v1

    .line 284
    invoke-static {v5, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 285
    move-result-object v1

    .line 288
    const-wide/16 v5, 0x64

    .line 289
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    move-result-object v1

    .line 294
    iget-object v3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->cubicEaseOutInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 295
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 300
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 302
    iput-object v3, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 305
    filled-new-array {p1, v4, v2}, [Landroid/animation/Animator;

    .line 307
    move-result-object p1

    .line 310
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 311
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 314
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
    move-result-object p1

    .line 319
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 320
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 323
    new-instance v1, Lcom/miui/charge/view/MiuiChargeTurboView$1;

    .line 325
    invoke-direct {v1, p0, v0}, Lcom/miui/charge/view/MiuiChargeTurboView$1;-><init>(Lcom/miui/charge/view/MiuiChargeTurboView;I)V

    .line 327
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargeTurboView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 333
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 335
    :cond_6
    :goto_1
    return-void

    .line 338
    nop

    .line 339
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 340
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 348
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 356
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 364
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 2
    iget p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 4
    const/4 v0, 0x2

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 12
    const/16 p1, 0x8

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView$1;->this$0:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 2
    iget p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    .line 4
    const/4 v0, 0x2

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    .line 12
    const/16 p1, 0x8

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method
