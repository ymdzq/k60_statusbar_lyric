.class public final Lcom/android/systemui/biometrics/AuthPanelController;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContainerHeight:I

.field public mContainerWidth:I

.field public mContentHeight:I

.field public mContentWidth:I

.field public final mContext:Landroid/content/Context;

.field public mCornerRadius:F

.field public mMargin:I

.field public final mPanelView:Landroid/view/View;

.field public mPosition:I

.field public mUseFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 15
    const v2, 0x7f0700ec    # @dimen/biometric_dialog_corner_size '4.0dp'

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    move-result v1

    .line 22
    iput v1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 28
    const v1, 0x7f0700e9    # @dimen/biometric_dialog_border_padding '4.0dp'

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    move-result p1

    .line 35
    float-to-int p1, p1

    .line 36
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 42
    return-void
    .line 45
.end method


# virtual methods
.method public final getLeftBound(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_3

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "Unrecognized position: "

    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    const-string v0, "BiometricPrompt/AuthPanelController"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthPanelController;->getLeftBound(I)I

    .line 30
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 35
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 37
    sub-int/2addr p1, v0

    .line 39
    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 40
    sub-int/2addr p1, p0

    .line 42
    return p1

    .line 43
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 44
    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    .line 50
    move-result-object p1

    .line 53
    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 54
    iget p1, p1, Landroid/graphics/Insets;->left:I

    .line 56
    add-int/2addr p0, p1

    .line 58
    return p0

    .line 59
    :cond_2
    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 60
    return p0

    .line 62
    :cond_3
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 63
    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 65
    sub-int/2addr p1, p0

    .line 67
    div-int/2addr p1, v0

    .line 68
    return p1
    .line 69
.end method

.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->getLeftBound(I)I

    .line 4
    move-result v1

    .line 7
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 10
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x3

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    .line 18
    move-result-object v0

    .line 21
    if-ne p1, v3, :cond_0

    .line 22
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 24
    add-int/2addr p1, v1

    .line 26
    iget v0, v0, Landroid/graphics/Insets;->right:I

    .line 27
    :goto_0
    sub-int/2addr p1, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-ne p1, v2, :cond_1

    .line 31
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 33
    add-int/2addr p1, v1

    .line 35
    iget v0, v0, Landroid/graphics/Insets;->left:I

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 39
    add-int/2addr p1, v1

    .line 41
    :goto_1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 42
    if-eq v0, v2, :cond_2

    .line 44
    if-eq v0, v3, :cond_2

    .line 46
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 48
    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 50
    sub-int/2addr v0, v2

    .line 52
    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 53
    sub-int/2addr v0, v2

    .line 55
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 61
    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 63
    sub-int/2addr v0, v3

    .line 65
    div-int/2addr v0, v2

    .line 66
    iget v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 67
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v0

    .line 72
    :goto_2
    move v2, v0

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 74
    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    .line 80
    move-result-object v0

    .line 83
    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 84
    add-int/2addr v3, v2

    .line 86
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 87
    sub-int/2addr v3, v0

    .line 89
    iget v4, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 90
    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 92
    sub-int/2addr v4, v5

    .line 94
    sub-int/2addr v4, v0

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 96
    move-result v0

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 101
    add-int/2addr v0, v2

    .line 103
    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 104
    iget v4, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 106
    sub-int/2addr v3, v4

    .line 108
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 109
    move-result v0

    .line 112
    :goto_3
    move v4, v0

    .line 113
    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    .line 114
    move-object v0, p2

    .line 116
    move v3, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 118
    return-void
    .line 121
.end method

.method public final updateForContentDimensions(III)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_3

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    const v2, 0x7f0700e9    # @dimen/biometric_dialog_border_padding '4.0dp'

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 33
    if-eqz v2, :cond_2

    .line 35
    const/4 v2, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v2

    .line 44
    const v3, 0x7f0700ec    # @dimen/biometric_dialog_corner_size '4.0dp'

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 48
    move-result v2

    .line 51
    :goto_1
    if-lez p3, :cond_3

    .line 52
    iget v3, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 54
    filled-new-array {v3, v0}, [I

    .line 56
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 60
    move-result-object v0

    .line 63
    new-instance v3, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;

    .line 64
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;I)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    const/4 v3, 0x2

    .line 72
    new-array v4, v3, [F

    .line 73
    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    .line 75
    aput v5, v4, v1

    .line 77
    const/4 v1, 0x1

    .line 79
    aput v2, v4, v1

    .line 80
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 82
    move-result-object v2

    .line 85
    new-instance v4, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;I)V

    .line 88
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    iget v1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 94
    filled-new-array {v1, p2}, [I

    .line 96
    move-result-object p2

    .line 99
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 100
    move-result-object p2

    .line 103
    new-instance v1, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;

    .line 104
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;I)V

    .line 106
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    iget v1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 112
    filled-new-array {v1, p1}, [I

    .line 114
    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 118
    move-result-object p1

    .line 121
    new-instance v1, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;

    .line 122
    const/4 v3, 0x3

    .line 124
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/biometrics/AuthPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;I)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 131
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    int-to-long v3, p3

    .line 136
    invoke-virtual {p0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 137
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 140
    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 142
    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    filled-new-array {v2, p2, p1, v0}, [Landroid/animation/Animator;

    .line 148
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 152
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 155
    goto :goto_2

    .line 158
    :cond_3
    iput v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    .line 159
    iput v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    .line 161
    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    .line 163
    iput p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    .line 165
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 169
    :goto_2
    return-void

    .line 172
    :cond_4
    :goto_3
    const-string p0, "BiometricPrompt/AuthPanelController"

    .line 173
    const-string p1, "Not done measuring yet"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
    .line 180
.end method
