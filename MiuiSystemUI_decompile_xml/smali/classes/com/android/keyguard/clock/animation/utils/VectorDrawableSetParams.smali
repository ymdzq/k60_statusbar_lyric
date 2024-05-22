.class public Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private fraction:F

.field private mCustomScale:F

.field private mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mDrawableParams:Ljava/util/ArrayList;

.field private mMinDelay:J

.field private mTotalTime:J

.field private rotationFraction:F

.field private scaleXFraction:F

.field private scaleYFraction:F

.field strokeAlphaFraction:F

.field strokeColorFraction:F

.field strokeWidthFraction:F

.field private translateXFraction:F

.field private translateYFraction:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mTotalTime:J

    .line 14
    const-wide/32 v0, 0x7fffffff

    .line 16
    iput-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mMinDelay:J

    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    .line 21
    iput v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public addDrawableParams(Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 7
    move-result-wide v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getDuration()J

    .line 11
    move-result-wide v2

    .line 14
    add-long/2addr v2, v0

    .line 15
    iget-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mTotalTime:J

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 18
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mTotalTime:J

    .line 22
    iget-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mMinDelay:J

    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 26
    move-result-wide v2

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 30
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mMinDelay:J

    .line 34
    iget v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 36
    const/4 v1, 0x0

    .line 38
    cmpl-float v0, v0, v1

    .line 39
    if-lez v0, :cond_3

    .line 41
    const-string/jumbo v0, "scaleX"

    .line 43
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getStartScaleX()F

    .line 58
    move-result v0

    .line 61
    cmpl-float v0, v0, v1

    .line 62
    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/VectorDrawableParams;->setStartScaleX(F)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getEndScaleX()F

    .line 71
    move-result v0

    .line 74
    cmpl-float v0, v0, v1

    .line 75
    if-eqz v0, :cond_3

    .line 77
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 79
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/VectorDrawableParams;->setEndScaleX(F)V

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    const-string/jumbo v0, "scaleY"

    .line 85
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getStartScaleY()F

    .line 98
    move-result v0

    .line 101
    cmpl-float v0, v0, v1

    .line 102
    if-eqz v0, :cond_2

    .line 104
    iget v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/VectorDrawableParams;->setStartScaleY(F)V

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawableParams;->getEndScaleY()F

    .line 111
    move-result v0

    .line 114
    cmpl-float v0, v0, v1

    .line 115
    if-eqz v0, :cond_3

    .line 117
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 119
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/VectorDrawableParams;->setEndScaleY(F)V

    .line 121
    :cond_3
    :goto_0
    return-void
    .line 124
.end method

.method public clearDrawableParams()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public getDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDrawableParams()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->fraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getRotationFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->rotationFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleXFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->scaleXFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getScaleYFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->scaleYFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getStrokeAlphaFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeAlphaFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getStrokeColorFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeColorFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getStrokeWidthFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeWidthFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getTranslateXFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->translateXFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getTranslateYFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->translateYFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public setCustomScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 2
    return-void
    .line 4
.end method

.method public setDrawable(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 2
    return-void
    .line 4
.end method

.method public setFraction(F)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mTotalTime:J

    .line 2
    long-to-float v0, v0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Landroid/graphics/drawable/VectorDrawableParams;

    .line 23
    int-to-long v3, v0

    .line 25
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 26
    move-result-wide v5

    .line 29
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDuration()J

    .line 30
    move-result-wide v7

    .line 33
    add-long/2addr v7, v5

    .line 34
    cmp-long v5, v3, v7

    .line 35
    if-lez v5, :cond_1

    .line 37
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getFraction()F

    .line 39
    move-result v5

    .line 42
    const/high16 v6, 0x3f800000    # 1.0f

    .line 43
    cmpl-float v5, v5, v6

    .line 45
    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/VectorDrawableParams;->setFraction(F)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 53
    move-result-wide v5

    .line 56
    cmp-long v5, v3, v5

    .line 57
    if-gez v5, :cond_2

    .line 59
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getFraction()F

    .line 61
    move-result v5

    .line 64
    const/4 v6, 0x0

    .line 65
    cmpl-float v5, v5, v6

    .line 66
    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/VectorDrawableParams;->setFraction(F)V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 74
    move-result-wide v5

    .line 77
    cmp-long v5, v3, v5

    .line 78
    if-ltz v5, :cond_0

    .line 80
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 82
    move-result-wide v5

    .line 85
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDuration()J

    .line 86
    move-result-wide v7

    .line 89
    add-long/2addr v7, v5

    .line 90
    cmp-long v5, v3, v7

    .line 91
    if-gtz v5, :cond_0

    .line 93
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 95
    move-result-wide v5

    .line 98
    sub-long/2addr v3, v5

    .line 99
    long-to-float v3, v3

    .line 100
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawableParams;->getDuration()J

    .line 101
    move-result-wide v4

    .line 104
    long-to-float v4, v4

    .line 105
    div-float/2addr v3, v4

    .line 106
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawableParams;->setFraction(F)V

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->fraction:F

    .line 111
    return-void
    .line 113
.end method

.method public setRotationFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "rotation"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setRotationFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->rotationFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setScaleXFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "scaleX"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setScaleXFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->scaleXFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setScaleYFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "scaleY"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setScaleYFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->scaleYFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setStrokeAlphaFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "strokeAlpha"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setStrokeAlphaFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeAlphaFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setStrokeColorFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "strokeColor"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setStrokeColorFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeColorFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setStrokeWidthFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "strokeWidth"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setStrokeWidthFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->strokeWidthFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setTranslateXFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "translateX"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setTranslateXFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->translateXFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public setTranslateYFraction(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;

    .line 18
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/KeyguardVectorDrawable;->getPropertyName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string/jumbo v3, "translateY"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawableParams;->setTranslateYFraction(F)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->translateYFraction:F

    .line 37
    return-void
    .line 39
.end method

.method public toFirstFrame()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mDrawableParams:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/graphics/drawable/VectorDrawableParams;

    .line 18
    iget-wide v2, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mMinDelay:J

    .line 20
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawableParams;->getDelay()J

    .line 22
    move-result-wide v4

    .line 25
    cmp-long v2, v2, v4

    .line 26
    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawableParams;->setFraction(F)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    return-void
    .line 35
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "VectorDrawableSetParams{this@"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " fraction="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->fraction:F

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " mCustomScale="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->mCustomScale:F

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const/16 p0, 0x7d

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    return-object p0
    .line 45
.end method
