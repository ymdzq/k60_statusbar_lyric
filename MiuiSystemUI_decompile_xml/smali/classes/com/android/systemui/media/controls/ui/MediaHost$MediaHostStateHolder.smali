.class public final Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/MediaHostState;


# instance fields
.field public changedListener:Lkotlin/jvm/functions/Function0;

.field public disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

.field public expansion:F

.field public falsingProtectionNeeded:Z

.field public lastDisappearHash:I

.field public measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

.field public showsOnlyActiveMedia:Z

.field public squishFraction:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 10
    new-instance v0, Lcom/android/systemui/util/animation/DisappearParameters;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/util/animation/DisappearParameters;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    .line 19
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final copy()Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    .line 9
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v2

    .line 17
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 18
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 30
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 32
    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v2

    .line 44
    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 57
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 59
    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 66
    if-eqz v1, :cond_2

    .line 68
    iget v2, v1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 70
    new-instance v3, Lcom/android/systemui/util/animation/MeasurementInput;

    .line 72
    iget v1, v1, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    .line 74
    invoke-direct {v3, v2, v1}, Lcom/android/systemui/util/animation/MeasurementInput;-><init>(II)V

    .line 76
    goto :goto_0

    .line 79
    :cond_2
    const/4 v3, 0x0

    .line 80
    :goto_0
    if-eqz v3, :cond_3

    .line 81
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 83
    invoke-virtual {v3, v1}, Lcom/android/systemui/util/animation/MeasurementInput;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v1

    .line 88
    const/4 v2, 0x1

    .line 89
    if-ne v1, v2, :cond_3

    .line 90
    goto :goto_1

    .line 92
    :cond_3
    const/4 v2, 0x0

    .line 93
    :goto_1
    if-nez v2, :cond_4

    .line 94
    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 96
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 98
    if-eqz v1, :cond_4

    .line 100
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 105
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 107
    if-ne v2, v1, :cond_5

    .line 109
    goto :goto_2

    .line 111
    :cond_5
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 112
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 114
    if-eqz v1, :cond_6

    .line 116
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 118
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    new-instance v2, Lcom/android/systemui/util/animation/DisappearParameters;

    .line 126
    invoke-direct {v2}, Lcom/android/systemui/util/animation/DisappearParameters;-><init>()V

    .line 128
    iget-object v3, v2, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 131
    iget-object v4, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 133
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 135
    iget-object v3, v2, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 138
    iget-object v4, v1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 140
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 142
    iget-object v3, v2, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 145
    iget-object v4, v1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 147
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 149
    iget v3, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    .line 152
    iput v3, v2, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    .line 154
    iget v3, v1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 156
    iput v3, v2, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 158
    iget v1, v1, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    .line 160
    iput v1, v2, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    .line 162
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 167
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 169
    if-ne v1, p0, :cond_7

    .line 171
    goto :goto_3

    .line 173
    :cond_7
    iput-boolean p0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 174
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 176
    if-eqz p0, :cond_8

    .line 178
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 180
    :cond_8
    :goto_3
    return-object v0
    .line 183
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 8
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaHostState;

    .line 10
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getExpansion()F

    .line 25
    move-result v2

    .line 28
    cmpg-float v0, v0, v2

    .line 29
    const/4 v2, 0x1

    .line 31
    if-nez v0, :cond_2

    .line 32
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_0
    if-nez v0, :cond_3

    .line 37
    return v1

    .line 39
    :cond_3
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 40
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getSquishFraction()F

    .line 42
    move-result v3

    .line 45
    cmpg-float v0, v0, v3

    .line 46
    if-nez v0, :cond_4

    .line 48
    move v0, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v0, v1

    .line 52
    :goto_1
    if-nez v0, :cond_5

    .line 53
    return v1

    .line 55
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 56
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getShowsOnlyActiveMedia()Z

    .line 58
    move-result v3

    .line 61
    if-eq v0, v3, :cond_6

    .line 62
    return v1

    .line 64
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 65
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getVisible()Z

    .line 67
    move-result v3

    .line 70
    if-eq v0, v3, :cond_7

    .line 71
    return v1

    .line 73
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 74
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getFalsingProtectionNeeded()Z

    .line 76
    move-result v3

    .line 79
    if-eq v0, v3, :cond_8

    .line 80
    return v1

    .line 82
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 83
    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    .line 85
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/DisappearParameters;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 92
    if-nez p0, :cond_9

    .line 93
    return v1

    .line 95
    :cond_9
    return v2
    .line 96
.end method

.method public final getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExpansion()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 2
    return p0
    .line 4
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getShowsOnlyActiveMedia()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getSquishFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public final getVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->hashCode()I

    .line 6
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 14
    const/16 v2, 0x1f

    .line 16
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 18
    move-result v0

    .line 21
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 22
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 24
    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 30
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 39
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 46
    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v1, 0x2

    .line 52
    :goto_1
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    .line 58
    move-result p0

    .line 61
    add-int/2addr p0, v0

    .line 62
    return p0
    .line 63
.end method

.method public final setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    return-void

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 23
    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    .line 25
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 27
    if-eqz p0, :cond_1

    .line 29
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final setExpansion(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 18
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
    .line 27
.end method
