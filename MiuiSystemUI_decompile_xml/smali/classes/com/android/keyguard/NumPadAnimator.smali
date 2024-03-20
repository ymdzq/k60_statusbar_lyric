.class public final Lcom/android/keyguard/NumPadAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackground:Landroid/graphics/drawable/GradientDrawable;

.field public mContractAnimator:Landroid/animation/ValueAnimator;

.field public mContractAnimatorSet:Landroid/animation/AnimatorSet;

.field public mEndRadius:F

.field public mExpandAnimator:Landroid/animation/ValueAnimator;

.field public mExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field public mHeight:I

.field public final mImageButton:Landroid/graphics/drawable/Drawable;

.field public mNormalBackgroundColor:I

.field public mPressedBackgroundColor:I

.field public mStartRadius:F

.field public final mStyle:I

.field public mTextColorPressed:I

.field public mTextColorPrimary:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/android/keyguard/NumPadAnimator;->mStyle:I

    .line 5
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 7
    iput-object p2, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 9
    iput-object p4, p0, Lcom/android/keyguard/NumPadAnimator;->mImageButton:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/keyguard/NumPadAnimator;->reloadColors(Landroid/content/Context;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final reloadColors(Landroid/content/Context;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mImageButton:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    const v3, 0x1010429    # @android:attr/colorControlNormal

    .line 11
    filled-new-array {v3}, [I

    .line 14
    move-result-object v3

    .line 17
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 18
    iget v5, p0, Lcom/android/keyguard/NumPadAnimator;->mStyle:I

    .line 20
    invoke-direct {v4, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-virtual {v4, v3}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 29
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    move-result v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const v5, 0x11200b0    # @android:^attr-private/materialColorSurfaceContainerHighest

    .line 40
    filled-new-array {v5}, [I

    .line 43
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 51
    move-result v5

    .line 54
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    move v4, v5

    .line 58
    :goto_1
    iput v4, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalBackgroundColor:I

    .line 59
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    const v3, 0x11200a6    # @android:^attr-private/materialColorPrimaryFixedDim

    .line 64
    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 67
    move-result v3

    .line 70
    iput v3, p0, Lcom/android/keyguard/NumPadAnimator;->mPressedBackgroundColor:I

    .line 71
    const v3, 0x1120095    # @android:^attr-private/materialColorOnPrimaryFixedVariant

    .line 73
    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 76
    move-result v3

    .line 79
    iput v3, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPressed:I

    .line 80
    iget-object v3, p0, Lcom/android/keyguard/NumPadAnimator;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 82
    iget v4, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalBackgroundColor:I

    .line 84
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 86
    if-eqz v0, :cond_2

    .line 89
    const v0, 0x112009b    # @android:^attr-private/materialColorOnSurfaceInverse

    .line 91
    invoke-static {p1, v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 94
    move-result p1

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    const v0, 0x1120099    # @android:^attr-private/materialColorOnSecondaryFixedVariant

    .line 99
    invoke-static {p1, v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 102
    move-result p1

    .line 105
    :goto_2
    iput p1, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPrimary:I

    .line 106
    const/4 p1, 0x2

    .line 108
    new-array v0, p1, [F

    .line 109
    fill-array-data v0, :array_0

    .line 111
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 114
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 118
    const-wide/16 v3, 0x64

    .line 120
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 125
    sget-object v3, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 132
    new-instance v4, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 134
    invoke-direct {v4, p0, v2}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 136
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 142
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 144
    iget v2, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalBackgroundColor:I

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v2

    .line 152
    iget v4, p0, Lcom/android/keyguard/NumPadAnimator;->mPressedBackgroundColor:I

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v4

    .line 158
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 159
    move-result-object v2

    .line 162
    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 163
    move-result-object v0

    .line 166
    const-wide/16 v4, 0x32

    .line 167
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    new-instance v2, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 175
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 183
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 185
    iget v2, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPrimary:I

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v2

    .line 193
    iget v6, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPressed:I

    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v6

    .line 199
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 200
    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 204
    move-result-object v1

    .line 207
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    new-instance v2, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 214
    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 216
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 222
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    iput-object v2, p0, Lcom/android/keyguard/NumPadAnimator;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 227
    iget-object v4, p0, Lcom/android/keyguard/NumPadAnimator;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 229
    filled-new-array {v4, v0, v1}, [Landroid/animation/Animator;

    .line 231
    move-result-object v0

    .line 234
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    new-array p1, p1, [F

    .line 238
    fill-array-data p1, :array_1

    .line 240
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 243
    move-result-object p1

    .line 246
    iput-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimator:Landroid/animation/ValueAnimator;

    .line 247
    const-wide/16 v0, 0x21

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 251
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimator:Landroid/animation/ValueAnimator;

    .line 254
    const-wide/16 v4, 0x1a1

    .line 256
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimator:Landroid/animation/ValueAnimator;

    .line 261
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 263
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object p1, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimator:Landroid/animation/ValueAnimator;

    .line 268
    new-instance v2, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 270
    const/4 v6, 0x3

    .line 272
    invoke-direct {v2, p0, v6}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 273
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    new-instance p1, Landroid/animation/ArgbEvaluator;

    .line 279
    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 281
    iget v2, p0, Lcom/android/keyguard/NumPadAnimator;->mPressedBackgroundColor:I

    .line 284
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v2

    .line 289
    iget v6, p0, Lcom/android/keyguard/NumPadAnimator;->mNormalBackgroundColor:I

    .line 290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    move-result-object v6

    .line 295
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 296
    move-result-object v2

    .line 299
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 300
    move-result-object p1

    .line 303
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 304
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 307
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    new-instance v2, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 313
    const/4 v6, 0x4

    .line 315
    invoke-direct {v2, p0, v6}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 316
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    new-instance v2, Landroid/animation/ArgbEvaluator;

    .line 322
    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 324
    iget v6, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPressed:I

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    move-result-object v6

    .line 332
    iget v7, p0, Lcom/android/keyguard/NumPadAnimator;->mTextColorPrimary:I

    .line 333
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    move-result-object v7

    .line 338
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 339
    move-result-object v6

    .line 342
    invoke-static {v2, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 343
    move-result-object v2

    .line 346
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 350
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    new-instance v0, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;

    .line 356
    const/4 v1, 0x5

    .line 358
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/NumPadAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/NumPadAnimator;I)V

    .line 359
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 365
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 367
    iput-object v0, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimatorSet:Landroid/animation/AnimatorSet;

    .line 370
    iget-object p0, p0, Lcom/android/keyguard/NumPadAnimator;->mContractAnimator:Landroid/animation/ValueAnimator;

    .line 372
    filled-new-array {p0, p1, v2}, [Landroid/animation/Animator;

    .line 374
    move-result-object p0

    .line 377
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    return-void

    .line 381
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 382
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 390
.end method
