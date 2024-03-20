.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final POSITIONER:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

.field private mUseNewVersionGesture:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;-><init>()V

    .line 2
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->POSITIONER:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 8
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->mUseNewVersionGesture:Z

    .line 11
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeRatioPositioner;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V

    .line 15
    aput-object p0, v0, v1

    .line 18
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V

    .line 22
    const/4 p1, 0x1

    .line 25
    aput-object p0, v0, p1

    .line 26
    return-void
    .line 28
.end method

.method private boundsEquals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 8
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 10
    sub-int/2addr v0, v1

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 20
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 22
    sub-int/2addr v0, v2

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 25
    move-result v0

    .line 28
    if-gt v0, v1, :cond_1

    .line 29
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 33
    sub-int/2addr v0, v2

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v0

    .line 39
    if-gt v0, v1, :cond_1

    .line 40
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 44
    sub-int/2addr p1, p2

    .line 46
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 47
    move-result p1

    .line 50
    if-gt p1, v1, :cond_1

    .line 51
    move p0, v1

    .line 53
    :cond_1
    :goto_0
    return p0
    .line 54
.end method


# virtual methods
.method public asPositioner()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->mUseNewVersionGesture:Z

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->POSITIONER:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    aget-object p0, p0, v0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    aget-object p0, p0, v0

    .line 13
    :goto_0
    return-object p0
    .line 15
.end method

.method public calDestAttrForAutoResize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationSizeLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseVisualBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    mul-float/2addr v3, v4

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    div-float/2addr v3, v4

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskScale()F

    .line 38
    move-result v4

    .line 41
    new-instance v5, Landroid/graphics/Rect;

    .line 42
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 44
    new-instance v6, Landroid/graphics/Rect;

    .line 47
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 49
    new-instance v7, Landroid/graphics/Rect;

    .line 52
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 54
    invoke-virtual {v0, v1, v3, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->calBoundsForAutoResize(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 64
    move-result p2

    .line 67
    invoke-virtual {p1, v0, p2, v5, v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationNormalScale()F

    .line 78
    move-result p2

    .line 81
    invoke-direct {p0, v2, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->boundsEquals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 82
    move-result p0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    sub-float/2addr v4, p2

    .line 88
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 89
    move-result p0

    .line 92
    const p2, 0x3c23d70a    # 0.01f

    .line 93
    cmpg-float p0, p0, p2

    .line 96
    if-gez p0, :cond_0

    .line 98
    const/4 p0, 0x0

    .line 100
    return p0

    .line 101
    :cond_0
    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayoutByChangedLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 104
    :cond_1
    const/4 p0, 0x1

    .line 107
    return p0
    .line 108
.end method

.method public dragMerged(IFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->asPositioner()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->dragMerged(IFF)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->setGestureVersion(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->asPositioner()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 9
    move-result-object v1

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object v6, p5

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 18
    return-void
    .line 21
.end method

.method public onGestureDragEnd(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->asPositioner()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->onGestureDragEnd(FF)V

    .line 6
    return-void
    .line 9
.end method

.method public onGestureDragMove(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->asPositioner()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->onGestureDragMove(FF)V

    .line 6
    return-void
    .line 9
.end method

.method public setGestureObserver(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->POSITIONER:[Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget-object v2, p0, v1

    .line 8
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->setGestureObserver(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;)V

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
.end method

.method public setGestureVersion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->mUseNewVersionGesture:Z

    .line 2
    return-void
    .line 4
.end method
