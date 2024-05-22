.class public abstract Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# static fields
.field public static final GROW_FRACTION:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;


# instance fields
.field public animationCallbacks:Ljava/util/List;

.field public animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field public final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field public final context:Landroid/content/Context;

.field public growFraction:F

.field public hideAnimator:Landroid/animation/ValueAnimator;

.field public ignoreCallbacks:Z

.field public mockGrowFraction:F

.field public mockHideAnimationRunning:Z

.field public mockShowAnimationRunning:Z

.field public final paint:Landroid/graphics/Paint;

.field public showAnimator:Landroid/animation/ValueAnimator;

.field public totalAlpha:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    .line 2
    invoke-direct {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    .line 10
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 14
    new-instance p1, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 16
    invoke-direct {p1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 21
    const/16 p1, 0xff

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    .line 25
    return-void
    .line 28
.end method

.method public static synthetic access$101(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final clearAnimationCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 8
    return-void
    .line 10
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGrowFraction()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 2
    iget v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    if-nez v1, :cond_2

    .line 13
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 15
    if-eqz v0, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move v2, v3

    .line 20
    :goto_1
    if-nez v2, :cond_2

    .line 21
    const/high16 p0, 0x3f800000    # 1.0f

    .line 23
    return p0

    .line 25
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    .line 26
    if-nez v0, :cond_4

    .line 28
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    .line 30
    if-eqz v0, :cond_3

    .line 32
    goto :goto_2

    .line 34
    :cond_3
    iget p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    .line 35
    return p0

    .line 37
    :cond_4
    :goto_2
    iget p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    .line 38
    return p0
    .line 40
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final isHiding()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    .line 12
    if-eqz p0, :cond_2

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    .line 12
    if-eqz p0, :cond_2

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
    .line 10
.end method

.method public setMockHideAnimationRunning(ZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    .line 2
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    .line 4
    return-void
    .line 6
.end method

.method public setMockShowAnimationRunning(ZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    .line 2
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    .line 4
    return-void
    .line 6
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p0

    return p0
.end method

.method public final setVisible(ZZZ)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result p0

    return p0
.end method

.method public setVisibleInternal(ZZZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1f4

    .line 5
    const/4 v4, 0x2

    .line 7
    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    .line 10
    new-array v5, v4, [F

    .line 12
    fill-array-data v5, :array_0

    .line 14
    invoke-static {p0, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 26
    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 28
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 37
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "Cannot set showAnimator while the current showAnimator is running."

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 52
    new-instance v5, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;

    .line 54
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;I)V

    .line 56
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 62
    const/4 v5, 0x1

    .line 64
    if-nez v0, :cond_5

    .line 65
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    .line 67
    new-array v4, v4, [F

    .line 69
    fill-array-data v4, :array_1

    .line 71
    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 74
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 83
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 85
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 90
    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 94
    move-result v2

    .line 97
    if-nez v2, :cond_3

    .line 98
    goto :goto_1

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    const-string p1, "Cannot set hideAnimator while the current hideAnimator is running."

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 108
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 109
    new-instance v2, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;

    .line 111
    invoke-direct {v2, p0, v5}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;I)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 119
    move-result v0

    .line 122
    if-nez v0, :cond_6

    .line 123
    if-nez p1, :cond_6

    .line 125
    return v1

    .line 127
    :cond_6
    if-eqz p1, :cond_7

    .line 128
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 130
    goto :goto_2

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 133
    :goto_2
    if-nez p3, :cond_a

    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 137
    move-result p2

    .line 140
    if-eqz p2, :cond_8

    .line 141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 143
    goto :goto_4

    .line 146
    :cond_8
    filled-new-array {v0}, [Landroid/animation/ValueAnimator;

    .line 147
    move-result-object p2

    .line 150
    iget-boolean p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 151
    iput-boolean v5, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 153
    array-length v0, p2

    .line 155
    move v2, v1

    .line 156
    :goto_3
    if-ge v2, v0, :cond_9

    .line 157
    aget-object v3, p2, v2

    .line 159
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 164
    goto :goto_3

    .line 166
    :cond_9
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 167
    :goto_4
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 169
    move-result p0

    .line 172
    return p0

    .line 173
    :cond_a
    if-eqz p3, :cond_b

    .line 174
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 176
    move-result p3

    .line 179
    if-eqz p3, :cond_b

    .line 180
    return v1

    .line 182
    :cond_b
    if-eqz p1, :cond_d

    .line 183
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 185
    move-result p3

    .line 188
    if-eqz p3, :cond_c

    .line 189
    goto :goto_5

    .line 191
    :cond_c
    move p3, v1

    .line 192
    goto :goto_6

    .line 193
    :cond_d
    :goto_5
    move p3, v5

    .line 194
    :goto_6
    if-eqz p1, :cond_f

    .line 195
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 197
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 199
    if-eqz p1, :cond_e

    .line 201
    :goto_7
    move p1, v5

    .line 203
    goto :goto_8

    .line 204
    :cond_e
    move p1, v1

    .line 205
    goto :goto_8

    .line 206
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 207
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 209
    if-eqz p1, :cond_e

    .line 211
    goto :goto_7

    .line 213
    :goto_8
    if-nez p1, :cond_11

    .line 214
    filled-new-array {v0}, [Landroid/animation/ValueAnimator;

    .line 216
    move-result-object p1

    .line 219
    iget-boolean p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 220
    iput-boolean v5, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 222
    array-length v0, p1

    .line 224
    :goto_9
    if-ge v1, v0, :cond_10

    .line 225
    aget-object v2, p1, v1

    .line 227
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 232
    goto :goto_9

    .line 234
    :cond_10
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 235
    return p3

    .line 237
    :cond_11
    if-nez p2, :cond_13

    .line 238
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    .line 240
    move-result p0

    .line 243
    if-nez p0, :cond_12

    .line 244
    goto :goto_a

    .line 246
    :cond_12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 247
    goto :goto_b

    .line 250
    :cond_13
    :goto_a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    :goto_b
    return p3

    .line 254
    nop

    .line 255
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 256
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 264
.end method

.method public final start()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 4
    return-void
    .line 7
.end method

.method public final stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 4
    return-void
    .line 7
.end method

.method public final unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
    .line 31
.end method
