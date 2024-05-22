.class public Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;
.super Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DRAG_SIZE_UNIT_PX:I

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeGridPositioner"


# instance fields
.field private final current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

.field private final guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

.field private mDisplayAspectRatio:F

.field private mFreeformWindowAspectRatio:F

.field private mFreeformWindowVisualHeight:F

.field private mFreeformWindowVisualWidth:F

.field private final mLastSizeChangedGuess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

.field private mMaxWindowAspectRatio:F

.field private mMaxWindowRealSize:[F

.field private mMaxWindowVisualSize:[F

.field private mMinWindowAspectRatio:F

.field private mMinWindowRealSize:[F

.field private mMinWindowVisualSize:[F

.field private mMiniWindowAspectRatio:F

.field private mMiniWindowHeight:F

.field private mMiniWindowWidth:F

.field private mMiuiInfinityModeGirdPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;

.field private mMovingAspectRatio:F

.field private mMovingPoint:Landroid/graphics/PointF;

.field private mStartupPoint:Landroid/graphics/PointF;

.field private mTaskNormalmized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result v0

    .line 16
    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    add-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    sput v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->DRAG_SIZE_UNIT_PX:I

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 2
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;)V

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 10
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;)V

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 17
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;)V

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mLastSizeChangedGuess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 24
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mTaskNormalmized:Z

    .line 27
    new-instance p1, Landroid/graphics/PointF;

    .line 29
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mStartupPoint:Landroid/graphics/PointF;

    .line 34
    new-instance p1, Landroid/graphics/PointF;

    .line 36
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 41
    const/4 p1, 0x2

    .line 43
    new-array v0, p1, [F

    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowVisualSize:[F

    .line 46
    new-array v0, p1, [F

    .line 48
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowVisualSize:[F

    .line 50
    new-array v0, p1, [F

    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowRealSize:[F

    .line 54
    new-array p1, p1, [F

    .line 56
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowRealSize:[F

    .line 58
    const/high16 p1, 0x40000000    # 2.0f

    .line 60
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowAspectRatio:F

    .line 62
    const p1, 0x3ecccccd    # 0.4f

    .line 64
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowAspectRatio:F

    .line 67
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->asGridPolicy()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiuiInfinityModeGirdPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdPolicy;

    .line 75
    return-void
    .line 77
.end method

.method private boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V
    .locals 11

    .line 1
    if-eqz p3, :cond_d

    .line 2
    if-eqz p1, :cond_d

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto/16 :goto_8

    .line 8
    :cond_0
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 10
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eq p4, v0, :cond_1

    .line 14
    iget-boolean p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mTaskNormalmized:Z

    .line 16
    if-eqz p4, :cond_2

    .line 18
    :cond_1
    iget p4, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 20
    if-nez p4, :cond_2

    .line 22
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 24
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 26
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 28
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 30
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 32
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 34
    return-void

    .line 36
    :cond_2
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 37
    invoke-virtual {p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->frame(I)Landroid/graphics/Rect;

    .line 39
    move-result-object p4

    .line 42
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 43
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    int-to-float v2, v2

    .line 50
    const/high16 v3, 0x40000000    # 2.0f

    .line 51
    div-float/2addr v2, v3

    .line 53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 54
    move-result v2

    .line 57
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 58
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 60
    move-result v5

    .line 63
    sub-int/2addr v4, v5

    .line 64
    int-to-float v4, v4

    .line 65
    div-float/2addr v4, v3

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 67
    move-result v3

    .line 70
    iget v4, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 71
    if-nez v4, :cond_b

    .line 73
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 75
    if-nez v4, :cond_3

    .line 77
    move v4, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v4, v1

    .line 81
    :goto_0
    if-eqz v4, :cond_4

    .line 82
    iget v5, p4, Landroid/graphics/Rect;->right:I

    .line 84
    sub-int/2addr v5, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget v5, p4, Landroid/graphics/Rect;->left:I

    .line 88
    add-int/2addr v5, v2

    .line 90
    :goto_1
    iget v6, p4, Landroid/graphics/Rect;->top:I

    .line 91
    add-int/2addr v6, v3

    .line 93
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 94
    if-gt v5, v7, :cond_5

    .line 96
    move v8, v0

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move v8, v1

    .line 100
    :goto_2
    if-gt v5, v7, :cond_6

    .line 101
    move v5, v0

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    move v5, v1

    .line 105
    :goto_3
    iget v9, p1, Landroid/graphics/Rect;->top:I

    .line 106
    if-gt v6, v9, :cond_7

    .line 108
    move v6, v0

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move v6, v1

    .line 112
    :goto_4
    if-nez v4, :cond_8

    .line 113
    if-eqz v5, :cond_8

    .line 115
    iget v10, p1, Landroid/graphics/Rect;->left:I

    .line 117
    goto :goto_5

    .line 119
    :cond_8
    move v10, v2

    .line 120
    :goto_5
    iput v10, p2, Landroid/graphics/Rect;->left:I

    .line 121
    if-eqz v4, :cond_9

    .line 123
    if-eqz v8, :cond_9

    .line 125
    goto :goto_6

    .line 127
    :cond_9
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 128
    sub-int v7, v4, v2

    .line 130
    :goto_6
    iput v7, p2, Landroid/graphics/Rect;->right:I

    .line 132
    if-eqz v6, :cond_a

    .line 134
    move v9, v3

    .line 136
    :cond_a
    iput v9, p2, Landroid/graphics/Rect;->top:I

    .line 137
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 139
    sub-int/2addr v2, v3

    .line 141
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 142
    if-nez v8, :cond_c

    .line 144
    if-nez v5, :cond_c

    .line 146
    if-eqz v6, :cond_b

    .line 148
    goto :goto_7

    .line 150
    :cond_b
    move v0, v1

    .line 151
    :cond_c
    :goto_7
    if-nez v0, :cond_d

    .line 152
    iget-boolean p3, p3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 154
    invoke-virtual {p0, p4, p1, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->union(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 156
    move-result-object p0

    .line 159
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    :cond_d
    :goto_8
    return-void
    .line 163
.end method

.method private calculateGuessSize(FFF)F
    .locals 3

    .line 1
    sget p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->DRAG_SIZE_UNIT_PX:I

    .line 2
    int-to-float p0, p0

    .line 4
    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    div-float v0, p0, v0

    .line 7
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    .line 9
    move-result p1

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 13
    move-result p1

    .line 16
    rem-float v1, p1, p0

    .line 17
    const/4 v2, 0x0

    .line 19
    cmpl-float v2, v1, v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    cmpg-float v0, v1, v0

    .line 24
    if-gtz v0, :cond_0

    .line 26
    sub-float/2addr p1, v1

    .line 28
    cmpg-float p2, p1, p3

    .line 29
    if-gez p2, :cond_1

    .line 31
    rem-float p2, p1, p0

    .line 33
    sub-float/2addr p0, p2

    .line 35
    add-float/2addr p1, p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sub-float p3, p0, v1

    .line 38
    add-float/2addr p1, p3

    .line 40
    cmpl-float p2, p1, p2

    .line 41
    if-lez p2, :cond_1

    .line 43
    rem-float p0, p1, p0

    .line 45
    sub-float/2addr p1, p0

    .line 47
    :cond_1
    :goto_0
    return p1
    .line 48
.end method

.method private detectModeAndBoundsChange()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-ne v0, v2, :cond_1

    .line 11
    move v0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 16
    iget v4, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 18
    if-ne v4, v2, :cond_2

    .line 20
    move v4, v2

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v4, v1

    .line 24
    :goto_2
    if-nez v3, :cond_3

    .line 25
    if-nez v0, :cond_3

    .line 27
    if-eqz v4, :cond_4

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 31
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSupportGesture()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 39
    if-nez v0, :cond_4

    .line 41
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 45
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 47
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 49
    if-eq v3, v4, :cond_b

    .line 51
    if-ne v3, v2, :cond_5

    .line 53
    if-nez v4, :cond_5

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    .line 57
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 64
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 72
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 74
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 78
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 80
    new-instance v4, Landroid/graphics/Rect;

    .line 82
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 84
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 90
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 92
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 96
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 101
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 103
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 105
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 109
    invoke-interface {v0, v2, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 111
    goto/16 :goto_4

    .line 114
    :cond_5
    if-nez v3, :cond_6

    .line 116
    if-ne v2, v4, :cond_6

    .line 118
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mTaskNormalmized:Z

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    .line 122
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 127
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 129
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 131
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 134
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 137
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 139
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 143
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 145
    new-instance v4, Landroid/graphics/Rect;

    .line 147
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 149
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 155
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 157
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 159
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 161
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 166
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 168
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 170
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 172
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 174
    invoke-interface {v0, v2, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 176
    goto/16 :goto_4

    .line 179
    :cond_6
    const/4 v0, 0x2

    .line 181
    if-ne v3, v2, :cond_7

    .line 182
    if-eq v0, v4, :cond_8

    .line 184
    :cond_7
    if-ne v3, v0, :cond_a

    .line 186
    if-ne v2, v4, :cond_a

    .line 188
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    .line 190
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 192
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 195
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 197
    invoke-direct {p0, v3, v2, v4, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 199
    invoke-direct {p0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 202
    new-instance v2, Landroid/graphics/Rect;

    .line 205
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 207
    new-instance v3, Landroid/graphics/Rect;

    .line 210
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 212
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 215
    if-ne v0, v4, :cond_9

    .line 217
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 219
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 221
    move-result-object v0

    .line 224
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 225
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 227
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 229
    move-result-object v4

    .line 232
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 233
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 235
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 237
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 241
    move-result v5

    .line 244
    int-to-float v5, v5

    .line 245
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 246
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 248
    move-result v6

    .line 251
    mul-float/2addr v6, v5

    .line 252
    float-to-int v5, v6

    .line 253
    add-int/2addr v5, v0

    .line 254
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 255
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 257
    move-result-object v6

    .line 260
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 261
    move-result v6

    .line 264
    int-to-float v6, v6

    .line 265
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 266
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 268
    move-result v7

    .line 271
    mul-float/2addr v7, v6

    .line 272
    float-to-int v6, v7

    .line 273
    add-int/2addr v6, v4

    .line 274
    goto :goto_3

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 276
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 278
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 280
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 282
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 284
    move v9, v6

    .line 286
    move v6, v0

    .line 287
    move v0, v4

    .line 288
    move v4, v5

    .line 289
    move v5, v9

    .line 290
    :goto_3
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowWidth:F

    .line 291
    float-to-int v7, v7

    .line 293
    iget v8, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 294
    float-to-int v8, v8

    .line 296
    invoke-virtual {v3, v1, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 303
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 305
    move-result-object v1

    .line 308
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 309
    iget v4, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 311
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 313
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 316
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 318
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 320
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 322
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 324
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 327
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 329
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 331
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 333
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 335
    invoke-interface {v0, v2, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 337
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 340
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 342
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 344
    goto :goto_5

    .line 346
    :cond_b
    if-ne v4, v2, :cond_c

    .line 347
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mLastSizeChangedGuess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 349
    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->equalWindowSize(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)Z

    .line 351
    move-result v0

    .line 354
    if-nez v0, :cond_c

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    .line 357
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 359
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 362
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 364
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 366
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 369
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 372
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 374
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 376
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 380
    move-result v5

    .line 383
    int-to-float v5, v5

    .line 384
    const/high16 v6, 0x3f000000    # 0.5f

    .line 385
    add-float/2addr v5, v6

    .line 387
    float-to-int v5, v5

    .line 388
    add-int/2addr v5, v3

    .line 389
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 390
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 392
    move-result v0

    .line 395
    int-to-float v0, v0

    .line 396
    add-float/2addr v0, v6

    .line 397
    float-to-int v0, v0

    .line 398
    add-int/2addr v7, v0

    .line 399
    new-instance v0, Landroid/graphics/Rect;

    .line 400
    invoke-direct {v0, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    new-instance v3, Landroid/graphics/Rect;

    .line 405
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowWidth:F

    .line 407
    float-to-int v4, v4

    .line 409
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 410
    float-to-int v5, v5

    .line 412
    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 416
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 418
    move-result-object v4

    .line 421
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 422
    iget v5, v5, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 424
    invoke-virtual {v1, v4, v5, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 426
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 429
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 431
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 433
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 435
    invoke-interface {v0, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 437
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mLastSizeChangedGuess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 440
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 442
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->set(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)V

    .line 444
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "executeWindowTransaction freeformRawRatio:"

    .line 451
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    move-result-object v0

    .line 462
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_c
    :goto_5
    return-void
    .line 466
.end method

.method private equalWindowSize(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->equals(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private exceedsThresholdRadio(FFF)Z
    .locals 1

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    add-float v0, p3, p0

    .line 4
    mul-float/2addr v0, p2

    .line 6
    cmpl-float v0, p1, v0

    .line 7
    if-gtz v0, :cond_1

    .line 9
    sub-float/2addr p0, p3

    .line 11
    mul-float/2addr p0, p2

    .line 12
    cmpg-float p0, p1, p0

    .line 13
    if-gez p0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method private fixPosition(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_6

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 12
    aget-object v0, v0, v1

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 17
    const/4 v3, 0x2

    .line 19
    aget-object v0, v0, v3

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowVisualSize:[F

    .line 22
    aget v1, v3, v1

    .line 24
    aget v2, v3, v2

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    cmpl-float v5, v1, v3

    .line 38
    if-lez v5, :cond_1

    .line 40
    move v1, v3

    .line 42
    :cond_1
    cmpl-float v3, v2, v4

    .line 43
    if-lez v3, :cond_2

    .line 45
    move v2, v4

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    mul-float/2addr v3, v4

    .line 55
    div-float/2addr v3, v2

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 57
    move-result v5

    .line 60
    int-to-float v5, v5

    .line 61
    mul-float/2addr v5, v4

    .line 62
    div-float/2addr v5, v1

    .line 63
    cmpl-float v5, v5, v4

    .line 64
    if-lez v5, :cond_4

    .line 66
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 68
    const/high16 v5, 0x3f000000    # 0.5f

    .line 70
    if-nez p0, :cond_3

    .line 72
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 74
    add-float/2addr v1, v5

    .line 76
    float-to-int v1, v1

    .line 77
    sub-int/2addr p0, v1

    .line 78
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 79
    goto :goto_1

    .line 81
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 82
    add-float/2addr v1, v5

    .line 84
    float-to-int v1, v1

    .line 85
    add-int/2addr p0, v1

    .line 86
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 87
    :cond_4
    :goto_1
    cmpl-float p0, v3, v4

    .line 89
    if-lez p0, :cond_5

    .line 91
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 93
    float-to-int v1, v2

    .line 95
    add-int/2addr p0, v1

    .line 96
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 97
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 99
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 101
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 103
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    .line 105
    move-result p0

    .line 108
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 111
    move-result v3

    .line 114
    sub-int/2addr v2, v3

    .line 115
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result p0

    .line 119
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 120
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 122
    move-result v1

    .line 125
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 128
    move-result v2

    .line 131
    sub-int/2addr v0, v2

    .line 132
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 133
    move-result v0

    .line 136
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 137
    goto :goto_2

    .line 140
    :cond_6
    if-nez v0, :cond_7

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 143
    aget-object p0, p0, v1

    .line 145
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    :cond_7
    :goto_2
    return-void
    .line 150
.end method


# virtual methods
.method public calculateWindowPosition(Landroid/graphics/Rect;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mStartupPoint:Landroid/graphics/PointF;

    .line 4
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 6
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 10
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 12
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 14
    sub-float/2addr v4, v2

    .line 16
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 17
    move-result v4

    .line 20
    sub-float/2addr v3, v1

    .line 21
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 22
    move-result v3

    .line 25
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowVisualSize:[F

    .line 26
    const/4 v6, 0x1

    .line 28
    aget v7, v5, v6

    .line 29
    const/4 v8, 0x0

    .line 31
    aget v5, v5, v8

    .line 32
    iget v9, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 34
    sub-float v10, v7, v9

    .line 36
    const v11, 0x408b851f    # 4.36f

    .line 38
    div-float/2addr v10, v11

    .line 41
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowVisualSize:[F

    .line 42
    aget v12, v11, v6

    .line 44
    aget v11, v11, v8

    .line 46
    div-float v11, v4, v3

    .line 48
    add-float/2addr v10, v9

    .line 50
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowAspectRatio:F

    .line 51
    mul-float/2addr v13, v9

    .line 53
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowAspectRatio:F

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v15

    .line 59
    int-to-float v15, v15

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v8

    .line 64
    int-to-float v8, v8

    .line 65
    div-float v14, v15, v14

    .line 66
    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    .line 68
    move-result v12

    .line 71
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    .line 72
    move-result v8

    .line 75
    invoke-static {v15, v15}, Ljava/lang/Math;->max(FF)F

    .line 76
    move-result v12

    .line 79
    iget-object v14, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 80
    iget-object v14, v14, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 82
    invoke-virtual {v14, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 84
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 87
    iput v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 89
    iput v3, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 91
    iput v11, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 93
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 95
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->set(Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;)V

    .line 97
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 100
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 102
    invoke-direct {v0, v2, v12, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateGuessSize(FFF)F

    .line 104
    move-result v2

    .line 107
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 108
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 110
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 112
    invoke-direct {v0, v2, v8, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateGuessSize(FFF)F

    .line 114
    move-result v2

    .line 117
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 118
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 120
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 122
    iget v11, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 124
    div-float/2addr v2, v11

    .line 126
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 127
    iput v6, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 129
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 131
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 133
    cmpg-float v11, v2, v10

    .line 135
    const/4 v14, 0x2

    .line 137
    const/high16 v15, 0x40000000    # 2.0f

    .line 138
    if-gtz v11, :cond_3

    .line 140
    iget v11, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 142
    if-ne v11, v14, :cond_2

    .line 144
    iget v11, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 146
    if-ne v11, v14, :cond_0

    .line 148
    iget v11, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 150
    if-ne v11, v6, :cond_0

    .line 152
    goto :goto_0

    .line 154
    :cond_0
    iget v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 155
    cmpg-float v11, v2, v10

    .line 157
    if-gez v11, :cond_1

    .line 159
    move v2, v10

    .line 161
    :cond_1
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 162
    goto :goto_1

    .line 164
    :cond_2
    :goto_0
    sub-float/2addr v2, v10

    .line 165
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 166
    move-result v1

    .line 169
    invoke-static {v1, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFriction(FF)F

    .line 170
    move-result v1

    .line 173
    div-float/2addr v1, v15

    .line 174
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 175
    sub-float/2addr v10, v1

    .line 177
    iput v10, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 178
    :goto_1
    move v1, v6

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    const/4 v1, 0x0

    .line 182
    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 183
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 185
    cmpg-float v2, v2, v7

    .line 187
    if-gtz v2, :cond_4

    .line 189
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 191
    invoke-direct {v0, v7, v8, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateGuessSize(FFF)F

    .line 193
    move-result v10

    .line 196
    iput v10, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 197
    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 199
    iget v10, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 201
    cmpl-float v11, v10, v8

    .line 203
    if-ltz v11, :cond_5

    .line 205
    sub-float v10, v8, v10

    .line 207
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 209
    move-result v10

    .line 212
    invoke-static {v10, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFriction(FF)F

    .line 213
    move-result v10

    .line 216
    div-float/2addr v10, v15

    .line 217
    add-float/2addr v10, v8

    .line 218
    iput v10, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 219
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 221
    invoke-direct {v0, v8, v8, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateGuessSize(FFF)F

    .line 223
    move-result v7

    .line 226
    iput v7, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 227
    :cond_5
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 229
    iget v7, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 231
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 233
    div-float/2addr v7, v2

    .line 235
    iget v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowAspectRatio:F

    .line 236
    div-float v2, v5, v2

    .line 238
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    .line 240
    move-result v2

    .line 243
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 244
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 246
    const/4 v11, 0x0

    .line 248
    iput-boolean v11, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 249
    iput-boolean v11, v8, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 251
    iget v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowAspectRatio:F

    .line 253
    cmpl-float v10, v7, v8

    .line 255
    if-lez v10, :cond_6

    .line 257
    sub-float v2, v8, v7

    .line 259
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 261
    move-result v2

    .line 264
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowAspectRatio:F

    .line 265
    invoke-virtual {v0, v2, v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 267
    move-result v2

    .line 270
    div-float/2addr v2, v15

    .line 271
    add-float v7, v2, v8

    .line 272
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 274
    iget v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowAspectRatio:F

    .line 276
    iput v8, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 278
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 280
    iput-boolean v6, v8, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 282
    iput-boolean v6, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 284
    goto :goto_3

    .line 286
    :cond_6
    cmpg-float v8, v7, v2

    .line 287
    if-gez v8, :cond_7

    .line 289
    sub-float v7, v2, v7

    .line 291
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 293
    move-result v7

    .line 296
    invoke-virtual {v0, v7, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->afterFriction(FF)F

    .line 297
    move-result v7

    .line 300
    div-float/2addr v7, v15

    .line 301
    sub-float v7, v2, v7

    .line 302
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 304
    iput v2, v8, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 306
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 308
    iput-boolean v6, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 310
    iput-boolean v6, v8, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->extremeRatio:Z

    .line 312
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 314
    iput v7, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 316
    if-eqz v1, :cond_9

    .line 318
    cmpg-float v1, v4, v13

    .line 320
    if-gtz v1, :cond_9

    .line 322
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowAspectRatio:F

    .line 324
    iput v1, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 326
    iget v4, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 328
    mul-float/2addr v4, v1

    .line 330
    iput v4, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 331
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 333
    iput v9, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 335
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mPreGuessWinMode:I

    .line 337
    if-eqz v2, :cond_8

    .line 339
    iput v14, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 341
    goto :goto_4

    .line 343
    :cond_8
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 344
    const-string v2, "Moving from fullscreen"

    .line 346
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_9
    :goto_4
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 351
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 353
    mul-int/2addr v1, v2

    .line 355
    int-to-float v1, v1

    .line 356
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 357
    iget v4, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 359
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 361
    mul-float/2addr v4, v2

    .line 363
    div-float/2addr v4, v1

    .line 364
    const v1, 0x3f59999a    # 0.85f

    .line 365
    cmpl-float v1, v4, v1

    .line 368
    if-gtz v1, :cond_a

    .line 370
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 372
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 374
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 376
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->isBackFullScreenHotAreas(FF)Z

    .line 378
    move-result v1

    .line 381
    if-eqz v1, :cond_b

    .line 382
    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 384
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mDisplayAspectRatio:F

    .line 386
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 388
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 390
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 392
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->dragPoint:Landroid/graphics/PointF;

    .line 394
    const/4 v2, 0x0

    .line 396
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 397
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 400
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 402
    int-to-float v2, v2

    .line 404
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 405
    const/4 v2, 0x0

    .line 407
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 408
    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 410
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 412
    iput v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingAspectRatio:F

    .line 414
    iget v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 416
    mul-float/2addr v4, v2

    .line 418
    iput v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 419
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 421
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 423
    iget v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->aspectRatio:F

    .line 425
    mul-float/2addr v2, v4

    .line 427
    invoke-direct {v0, v2, v12, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateGuessSize(FFF)F

    .line 428
    move-result v2

    .line 431
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 432
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 434
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 436
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 438
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 440
    iget v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 442
    if-eq v4, v2, :cond_c

    .line 444
    iput v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->preMode:I

    .line 446
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->lastMode:I

    .line 448
    :cond_c
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 450
    if-nez v4, :cond_d

    .line 452
    if-nez v2, :cond_d

    .line 454
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 456
    int-to-float v4, v2

    .line 458
    int-to-float v2, v2

    .line 459
    sub-float/2addr v3, v2

    .line 460
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 461
    move-result v2

    .line 464
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 465
    int-to-float v3, v3

    .line 467
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFriction(FF)F

    .line 468
    move-result v2

    .line 471
    sub-float/2addr v4, v2

    .line 472
    iput v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 473
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 475
    iget v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->height:F

    .line 477
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowAspectRatio:F

    .line 479
    mul-float/2addr v2, v3

    .line 481
    iput v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->width:F

    .line 482
    :cond_d
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    const-string/jumbo v3, "updateRatioRecord mRatioRecord:"

    .line 488
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object v0

    .line 500
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
    .line 504
.end method

.method public dragMerged(IFF)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->dragMerged(IFF)Z

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 4

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 2
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 5
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 7
    if-nez p1, :cond_0

    .line 9
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 14
    :goto_0
    int-to-float p2, p2

    .line 16
    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 19
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 24
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 26
    :goto_1
    int-to-float p1, p1

    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 29
    iget p4, p3, Landroid/graphics/Rect;->top:I

    .line 31
    int-to-float p4, p4

    .line 33
    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    .line 34
    int-to-float p5, p5

    .line 36
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 37
    move-result p3

    .line 40
    int-to-double v0, p3

    .line 41
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 42
    mul-double/2addr v0, v2

    .line 44
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 47
    move-result p3

    .line 50
    int-to-double v2, p3

    .line 51
    div-double/2addr v0, v2

    .line 52
    double-to-float p3, v0

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mTaskNormalmized:Z

    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 57
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 59
    move-result-object v1

    .line 62
    instance-of v2, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 63
    if-nez v2, :cond_2

    .line 65
    sget-object p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 67
    const-string/jumbo p1, "taskWrapperInfo current level is ratio level, need not init params."

    .line 69
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 75
    :cond_2
    check-cast v1, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;

    .line 76
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMiniHeight()F

    .line 78
    move-result v2

    .line 81
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 82
    mul-float/2addr v2, p3

    .line 84
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowWidth:F

    .line 85
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 89
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualWidth:F

    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 98
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualHeight:F

    .line 103
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowAspectRatio:F

    .line 105
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowAspectRatio:F

    .line 107
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowVisualSize:[F

    .line 109
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMinWidth()F

    .line 111
    move-result v2

    .line 114
    aput v2, p3, v0

    .line 115
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowVisualSize:[F

    .line 117
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMinHeight()F

    .line 119
    move-result v2

    .line 122
    const/4 v3, 0x1

    .line 123
    aput v2, p3, v3

    .line 124
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowVisualSize:[F

    .line 126
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxWidth()F

    .line 128
    move-result v2

    .line 131
    aput v2, p3, v0

    .line 132
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowVisualSize:[F

    .line 134
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getMaxHeight()F

    .line 136
    move-result v2

    .line 139
    aput v2, p3, v3

    .line 140
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowRealSize:[F

    .line 142
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinRealWidth()F

    .line 144
    move-result v2

    .line 147
    aput v2, p3, v0

    .line 148
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowRealSize:[F

    .line 150
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinRealHeight()F

    .line 152
    move-result v2

    .line 155
    aput v2, p3, v3

    .line 156
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowRealSize:[F

    .line 158
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxRealWidth()F

    .line 160
    move-result v2

    .line 163
    aput v2, p3, v0

    .line 164
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowRealSize:[F

    .line 166
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxRealHeight()F

    .line 168
    move-result v0

    .line 171
    aput v0, p3, v3

    .line 172
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMaxAspectRatio()F

    .line 174
    move-result p3

    .line 177
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMaxWindowAspectRatio:F

    .line 178
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/policy/MiuiInfinityModeGirdLevel;->getMinAspectRatio()F

    .line 180
    move-result p3

    .line 183
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMinWindowAspectRatio:F

    .line 184
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 186
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayWidth()I

    .line 188
    move-result p3

    .line 191
    int-to-float p3, p3

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    .line 193
    mul-float/2addr p3, v0

    .line 195
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 196
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayHeight()I

    .line 198
    move-result v0

    .line 201
    int-to-float v0, v0

    .line 202
    div-float/2addr p3, v0

    .line 203
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mDisplayAspectRatio:F

    .line 204
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mStartupPoint:Landroid/graphics/PointF;

    .line 206
    invoke-virtual {p3, p2, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 208
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 211
    invoke-virtual {p2, p1, p5}, Landroid/graphics/PointF;->set(FF)V

    .line 213
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 216
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 218
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->initMode(I)V

    .line 220
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 223
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 225
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->initMode(I)V

    .line 227
    return-void
    .line 230
.end method

.method public onGestureDragEnd(FF)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->isValid()Z

    .line 6
    move-result v1

    .line 9
    const-string v2, "animator_back_to_fullscreen"

    .line 10
    const-string v3, "default"

    .line 12
    if-nez v1, :cond_1

    .line 14
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 16
    const-string v4, "guess is invalid!"

    .line 18
    invoke-static {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 23
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFullscreenMode()Z

    .line 27
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v3

    .line 34
    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winDragEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 35
    return-void

    .line 38
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 39
    iget v4, v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 41
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x2

    .line 44
    if-nez v4, :cond_2

    .line 45
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 47
    aget-object v4, v4, v5

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 52
    aget-object v4, v4, v6

    .line 54
    :goto_1
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 56
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 58
    invoke-direct {v0, v7, v8, v1, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 60
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 63
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->fixPosition(Landroid/graphics/Rect;)V

    .line 65
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 70
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 75
    int-to-float v7, v7

    .line 77
    const/high16 v8, 0x3f800000    # 1.0f

    .line 78
    mul-float/2addr v7, v8

    .line 80
    const/high16 v9, 0x40000000    # 2.0f

    .line 81
    div-float/2addr v7, v9

    .line 83
    cmpg-float v1, v1, v7

    .line 84
    if-gtz v1, :cond_3

    .line 86
    const/4 v5, 0x1

    .line 88
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 89
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 91
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 95
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    const/high16 v12, 0x3f000000    # 0.5f

    .line 100
    add-float/2addr v1, v12

    .line 102
    float-to-int v1, v1

    .line 103
    add-int/2addr v1, v10

    .line 104
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 105
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 107
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 109
    move-result v13

    .line 112
    int-to-float v13, v13

    .line 113
    add-float/2addr v13, v12

    .line 114
    float-to-int v13, v13

    .line 115
    add-int/2addr v14, v13

    .line 116
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowWidth:F

    .line 117
    float-to-int v13, v13

    .line 119
    iget v15, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 120
    float-to-int v15, v15

    .line 122
    if-eqz v5, :cond_4

    .line 123
    iget v12, v4, Landroid/graphics/Rect;->left:I

    .line 125
    add-int/lit8 v12, v12, 0x14

    .line 127
    goto :goto_2

    .line 129
    :cond_4
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 130
    sub-int/2addr v12, v13

    .line 132
    add-int/lit8 v12, v12, -0x14

    .line 133
    :goto_2
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 135
    add-int/lit8 v9, v9, 0x14

    .line 137
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 139
    move-result v9

    .line 142
    add-int v8, v12, v13

    .line 143
    add-int v6, v9, v15

    .line 145
    new-instance v7, Landroid/graphics/Rect;

    .line 147
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 149
    move/from16 v16, v1

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    .line 154
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 156
    move-object/from16 v17, v2

    .line 159
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 161
    move-object/from16 v18, v3

    .line 163
    const/4 v3, 0x1

    .line 165
    if-ne v2, v3, :cond_5

    .line 166
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 168
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 170
    if-nez v3, :cond_5

    .line 172
    const-string v2, "animator_freeform_to_fullscreen"

    .line 174
    :goto_3
    move/from16 v4, v16

    .line 176
    goto/16 :goto_f

    .line 178
    :cond_5
    const/4 v3, 0x2

    .line 180
    if-ne v2, v3, :cond_6

    .line 181
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 183
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 185
    if-nez v3, :cond_6

    .line 187
    const-string v2, "animator_mini_to_fullscreen"

    .line 189
    goto :goto_3

    .line 191
    :cond_6
    if-nez v2, :cond_9

    .line 192
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 194
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 196
    move/from16 v19, v10

    .line 198
    const/4 v10, 0x1

    .line 200
    if-ne v10, v3, :cond_a

    .line 201
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 203
    if-nez v2, :cond_7

    .line 205
    const-string v2, "animator_fullscreen_to_freeform_left"

    .line 207
    goto :goto_4

    .line 209
    :cond_7
    const-string v2, "animator_fullscreen_to_freeform_right"

    .line 210
    :goto_4
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 212
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 214
    move-result v3

    .line 217
    int-to-float v3, v3

    .line 218
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 219
    int-to-float v5, v5

    .line 221
    const/high16 v10, 0x3f800000    # 1.0f

    .line 222
    mul-float/2addr v5, v10

    .line 224
    const/high16 v8, 0x40000000    # 2.0f

    .line 225
    div-float/2addr v5, v8

    .line 227
    cmpg-float v3, v3, v5

    .line 228
    if-gtz v3, :cond_8

    .line 230
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 232
    goto :goto_5

    .line 234
    :cond_8
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 235
    sub-int/2addr v3, v13

    .line 237
    :goto_5
    move v12, v3

    .line 238
    add-int v8, v12, v13

    .line 239
    :goto_6
    move/from16 v4, v16

    .line 241
    goto/16 :goto_e

    .line 243
    :cond_9
    move/from16 v19, v10

    .line 245
    :cond_a
    const/high16 v10, 0x3f800000    # 1.0f

    .line 247
    if-nez v2, :cond_f

    .line 249
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 251
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 253
    const/4 v10, 0x2

    .line 255
    if-ne v10, v3, :cond_f

    .line 256
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 258
    if-nez v2, :cond_b

    .line 260
    const-string v2, "animator_fullscreen_to_mini_left"

    .line 262
    goto :goto_7

    .line 264
    :cond_b
    const-string v2, "animator_fullscreen_to_mini_right"

    .line 265
    :goto_7
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualHeight:F

    .line 267
    iget v8, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualWidth:F

    .line 269
    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    .line 271
    move-result v3

    .line 274
    iget v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 275
    iget v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 277
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    .line 279
    move-result v8

    .line 282
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 283
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getNavBarHeight()I

    .line 285
    move-result v10

    .line 288
    sub-int/2addr v8, v10

    .line 289
    add-int/lit8 v8, v8, -0x4b

    .line 290
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 292
    sub-int/2addr v8, v10

    .line 294
    int-to-float v8, v8

    .line 295
    cmpl-float v10, v3, v8

    .line 296
    if-lez v10, :cond_c

    .line 298
    div-float/2addr v8, v3

    .line 300
    goto :goto_8

    .line 301
    :cond_c
    const/high16 v8, 0x3f800000    # 1.0f

    .line 302
    :goto_8
    if-eqz v5, :cond_d

    .line 304
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 306
    add-int/lit8 v3, v3, 0x14

    .line 308
    goto :goto_9

    .line 310
    :cond_d
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 311
    sub-int/2addr v3, v13

    .line 313
    add-int/lit8 v3, v3, -0x14

    .line 314
    :goto_9
    move v12, v3

    .line 316
    add-int v3, v12, v13

    .line 317
    if-eqz v5, :cond_e

    .line 319
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 321
    move v10, v4

    .line 323
    const/high16 v5, 0x3f000000    # 0.5f

    .line 324
    goto :goto_a

    .line 326
    :cond_e
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 327
    int-to-float v4, v4

    .line 329
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualWidth:F

    .line 330
    mul-float/2addr v5, v8

    .line 332
    sub-float/2addr v4, v5

    .line 333
    const/high16 v5, 0x3f000000    # 0.5f

    .line 334
    add-float/2addr v4, v5

    .line 336
    float-to-int v4, v4

    .line 337
    move v10, v4

    .line 338
    :goto_a
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualWidth:F

    .line 339
    mul-float/2addr v4, v8

    .line 341
    add-float/2addr v4, v5

    .line 342
    float-to-int v4, v4

    .line 343
    add-int/2addr v4, v10

    .line 344
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mFreeformWindowVisualHeight:F

    .line 345
    mul-float/2addr v13, v8

    .line 347
    add-float/2addr v13, v5

    .line 348
    float-to-int v5, v13

    .line 349
    add-int v14, v11, v5

    .line 350
    move v8, v3

    .line 352
    goto/16 :goto_f

    .line 353
    :cond_f
    const/4 v3, 0x1

    .line 355
    if-ne v2, v3, :cond_13

    .line 356
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 358
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 360
    const/4 v10, 0x2

    .line 362
    if-ne v10, v3, :cond_12

    .line 363
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 365
    if-nez v2, :cond_10

    .line 367
    const-string v2, "animator_freeform_to_mini_left"

    .line 369
    goto :goto_b

    .line 371
    :cond_10
    const-string v2, "animator_freeform_to_mini_right"

    .line 372
    :goto_b
    new-instance v3, Landroid/graphics/Rect;

    .line 374
    invoke-direct {v3, v12, v9, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 379
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 381
    move-result v4

    .line 384
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->miniFreeformAvoidIfNeed(ILandroid/graphics/Rect;)Z

    .line 385
    move-result v4

    .line 388
    if-eqz v4, :cond_11

    .line 389
    iget v12, v3, Landroid/graphics/Rect;->left:I

    .line 391
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 393
    add-int v8, v12, v13

    .line 395
    add-int v6, v9, v15

    .line 397
    :cond_11
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 399
    iget v10, v3, Landroid/graphics/Rect;->left:I

    .line 401
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 403
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 405
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 407
    goto/16 :goto_f

    .line 409
    :cond_12
    move v3, v10

    .line 411
    goto :goto_c

    .line 412
    :cond_13
    const/4 v3, 0x2

    .line 413
    :goto_c
    if-ne v2, v3, :cond_16

    .line 414
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 416
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 418
    const/4 v10, 0x1

    .line 420
    if-ne v10, v3, :cond_15

    .line 421
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 423
    if-nez v2, :cond_14

    .line 425
    const-string v2, "animator_mini_to_freeform_left"

    .line 427
    goto/16 :goto_6

    .line 429
    :cond_14
    const-string v2, "animator_mini_to_freeform_right"

    .line 431
    goto/16 :goto_6

    .line 433
    :cond_15
    const/4 v3, 0x2

    .line 435
    :cond_16
    if-ne v2, v3, :cond_17

    .line 436
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 438
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 440
    if-ne v3, v10, :cond_17

    .line 442
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 444
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 446
    move-result-object v2

    .line 449
    iget v10, v2, Landroid/graphics/Rect;->left:I

    .line 450
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 452
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 454
    move-result-object v2

    .line 457
    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 458
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 460
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 462
    move-result-object v2

    .line 465
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 466
    move-result v2

    .line 469
    int-to-float v2, v2

    .line 470
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 471
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 473
    move-result v3

    .line 476
    mul-float/2addr v3, v2

    .line 477
    const/high16 v2, 0x3f000000    # 0.5f

    .line 478
    add-float/2addr v3, v2

    .line 480
    float-to-int v3, v3

    .line 481
    add-int/2addr v3, v10

    .line 482
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 483
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseBounds()Landroid/graphics/Rect;

    .line 485
    move-result-object v4

    .line 488
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 489
    move-result v4

    .line 492
    int-to-float v4, v4

    .line 493
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 494
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseScale()F

    .line 496
    move-result v5

    .line 499
    mul-float/2addr v5, v4

    .line 500
    add-float/2addr v5, v2

    .line 501
    float-to-int v2, v5

    .line 502
    add-int v14, v11, v2

    .line 503
    const-string v2, "animator_back_to_mini"

    .line 505
    move v4, v3

    .line 507
    goto :goto_f

    .line 508
    :cond_17
    const/4 v3, 0x1

    .line 509
    if-ne v2, v3, :cond_1a

    .line 510
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 512
    iget v10, v10, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 514
    if-ne v3, v10, :cond_1a

    .line 516
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 518
    if-nez v2, :cond_18

    .line 520
    const-string v2, "animator_resize_left"

    .line 522
    goto :goto_d

    .line 524
    :cond_18
    const-string v2, "animator_resize_right"

    .line 525
    :goto_d
    if-eqz v5, :cond_19

    .line 527
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 529
    goto/16 :goto_5

    .line 531
    :cond_19
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 533
    sub-int/2addr v3, v13

    .line 535
    goto/16 :goto_5

    .line 536
    :cond_1a
    if-nez v2, :cond_1b

    .line 538
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 540
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 542
    if-nez v2, :cond_1b

    .line 544
    move/from16 v4, v16

    .line 546
    move-object/from16 v2, v17

    .line 548
    goto :goto_e

    .line 550
    :cond_1b
    move/from16 v4, v16

    .line 551
    move-object/from16 v2, v18

    .line 553
    :goto_e
    move/from16 v10, v19

    .line 555
    :goto_f
    invoke-virtual {v7, v10, v11, v4, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 557
    invoke-virtual {v1, v12, v9, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 560
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 563
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getBaseLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 565
    move-result-object v4

    .line 568
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 569
    iget v5, v5, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 571
    invoke-virtual {v3, v4, v5, v7, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateDestinationAttributes(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 573
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 576
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 578
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->mode:I

    .line 580
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationWindowMode(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 582
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 585
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 587
    invoke-interface {v1, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winDragEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 589
    sget-object v1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    .line 594
    const-string v3, "onGestureDragEnd mLastMovingBounds:"

    .line 596
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 601
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    move-result-object v0

    .line 609
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void
    .line 613
.end method

.method public onGestureDragMove(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 4
    add-float/2addr p1, v1

    .line 6
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 7
    add-float/2addr p2, v1

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->calculateWindowPosition(Landroid/graphics/Rect;)V

    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 18
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 22
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->boundsByRange(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;Z)V

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 28
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 30
    invoke-interface {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winResizeToRatio(Landroid/graphics/Rect;)V

    .line 32
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->detectModeAndBoundsChange()V

    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->detectOutOfRange(Landroid/graphics/Rect;)V

    .line 40
    sget-object p1, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->TAG:Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "onGestureDragMove:"

    .line 47
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, ",current \uff1a"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
    .line 74
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->reset()V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mStartupPoint:Landroid/graphics/PointF;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMovingPoint:Landroid/graphics/PointF;

    .line 18
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 20
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowWidth:F

    .line 23
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->mMiniWindowHeight:F

    .line 25
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRatioChanged:Z

    .line 28
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 31
    return-void
    .line 33
.end method

.method public setOriginalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "RatioRecord current:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->current:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " \n  guess:"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner;->guess:Lcom/android/wm/shell/miuifreeform/infinitymode/positiner/MiuiInfinityModeGridPositioner$DragWindow;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public union(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 8
    if-nez v2, :cond_1

    .line 10
    if-eqz p3, :cond_1

    .line 12
    :cond_0
    move v0, v1

    .line 14
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 15
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 17
    if-ge v1, v2, :cond_2

    .line 19
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 21
    const/4 v3, 0x1

    .line 23
    if-ne p0, v3, :cond_3

    .line 24
    if-eqz p3, :cond_3

    .line 26
    :cond_2
    move v1, v2

    .line 28
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 29
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 31
    if-le p0, p2, :cond_4

    .line 33
    goto :goto_0

    .line 35
    :cond_4
    move p0, p2

    .line 36
    :goto_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    new-instance p2, Landroid/graphics/Rect;

    .line 39
    invoke-direct {p2, v0, p0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    return-object p2
    .line 44
.end method
