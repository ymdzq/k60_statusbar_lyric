.class public Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeRatioLevel"


# instance fields
.field private borderRatio:F

.field private miniRatio:F

.field private ratio:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->ratio:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->miniRatio:F

    .line 7
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->borderRatio:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public calBoundsForAutoResize(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->getRatio()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->adjustPosition(Landroid/graphics/Rect;FFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public getComparableAttr()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->ratio:F

    .line 2
    return p0
    .line 4
.end method

.method public getRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->ratio:F

    .line 2
    return p0
    .line 4
.end method

.method public getRawRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->ratio:F

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->borderRatio:F

    .line 4
    div-float/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiInfinityModeRatioLevel{ratio="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->ratio:F

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", borderRatio="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->borderRatio:F

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", miniRatio="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->miniRatio:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-super {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/16 p0, 0x7d

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    return-object p0
    .line 55
.end method

.method public updateDestAttrForMinimize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getWidth()F

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    add-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getHeight()F

    .line 10
    move-result p0

    .line 13
    add-float/2addr p0, v1

    .line 14
    float-to-int p0, p0

    .line 15
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 16
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 18
    add-int/2addr v0, v1

    .line 20
    add-int v3, v2, p0

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 23
    move-result v4

    .line 26
    int-to-float v4, v4

    .line 27
    const/high16 v5, 0x3f800000    # 1.0f

    .line 28
    mul-float/2addr v4, v5

    .line 30
    int-to-float p0, p0

    .line 31
    div-float/2addr v4, p0

    .line 32
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 33
    move-result v6

    .line 36
    int-to-float v6, v6

    .line 37
    mul-float/2addr v6, v5

    .line 38
    div-float/2addr v6, p0

    .line 39
    new-instance p0, Landroid/graphics/Rect;

    .line 40
    invoke-direct {p0, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 45
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 48
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMiniBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo p3, "updateDestAttrForMinimize normalFreeformScale="

    .line 56
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    const-string p3, ", freeformBounds="

    .line 65
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    const-string p2, "MiuiInfinityModeRatioLevel"

    .line 77
    invoke-static {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 82
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationMiniScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 85
    const/4 p0, 0x2

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 89
    return-void
    .line 92
.end method

.method public updateDestAttrForNormalmize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getWidth()F

    .line 6
    move-result v1

    .line 9
    const/high16 v2, 0x3f000000    # 0.5f

    .line 10
    add-float/2addr v1, v2

    .line 12
    float-to-int v1, v1

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getHeight()F

    .line 14
    move-result p0

    .line 17
    add-float/2addr p0, v2

    .line 18
    float-to-int p0, p0

    .line 19
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 20
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 22
    add-int/2addr v1, v2

    .line 24
    add-int v4, v3, p0

    .line 25
    new-instance v5, Landroid/graphics/Rect;

    .line 27
    invoke-direct {v5, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationVisualBounds(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 35
    int-to-float v0, v0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    mul-float/2addr v0, v1

    .line 41
    int-to-float p0, p0

    .line 42
    div-float/2addr v0, p0

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "updateDestAttrForNormalmize normalScale="

    .line 46
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", freeformBounds="

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string p2, "MiuiInfinityModeRatioLevel"

    .line 67
    invoke-static {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationNormalScale(F)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 72
    const/4 p0, 0x1

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 76
    return-void
    .line 79
.end method

.method public updateRangeRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeRatioLevel;->borderRatio:F

    .line 2
    return-void
    .line 4
.end method
