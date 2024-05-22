.class public abstract Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BACK_FULLSCREEN_HOT_AREA_RADIUS_RADIO:D = 0.06

.field protected static final MOVING_RECT_INSET:I = -0xa

.field protected static final RANGE_FREEFORM:I = 0x2

.field protected static final RANGE_FULLSCREEN:I = 0x0

.field protected static final RANGE_HOVER:I = 0x1

.field public static final TOUCH_RESIZE_LEFT:I = 0x0

.field public static final TOUCH_RESIZE_RIGHT:I = 0x1

.field public static final WIN_BALL:I = 0x3

.field public static final WIN_FREEFORM:I = 0x1

.field public static final WIN_FULLSCREEN:I = 0x0

.field public static final WIN_MINI:I = 0x2

.field public static final WIN_UNDEFINED:I = -0x1


# instance fields
.field protected mDownTouchedMode:I

.field protected mDragRangeArea:Landroid/graphics/Rect;

.field protected mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

.field protected final mLastMovingBounds:Landroid/graphics/Rect;

.field protected mLaunchWinMode:I

.field protected mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected final mOriginalBounds:Landroid/graphics/Rect;

.field protected mPreGuessWinMode:I

.field protected mRangeAreas:[Landroid/graphics/Rect;

.field protected mRatioChanged:Z

.field public mScreenHeight:I

.field public mScreenWidth:I

.field protected mSupportCvw:Z

.field protected mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v1, v2, v3}, [Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 7
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mPreGuessWinMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLastMovingBounds:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v1, v2, v3}, [Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 14
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mPreGuessWinMode:I

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    return-void
.end method


# virtual methods
.method public afterFriction(FF)F
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    cmpl-float p0, p1, p0

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    if-ltz p0, :cond_0

    .line 7
    move p0, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 13
    move-result p1

    .line 16
    div-float/2addr p1, p2

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p1

    .line 21
    mul-float v0, p1, p1

    .line 22
    mul-float v1, v0, p1

    .line 24
    const/high16 v2, 0x40400000    # 3.0f

    .line 26
    div-float/2addr v1, v2

    .line 28
    sub-float/2addr v1, v0

    .line 29
    add-float/2addr v1, p1

    .line 30
    mul-float/2addr v1, p0

    .line 31
    mul-float/2addr v1, p2

    .line 32
    return v1
    .line 33
.end method

.method public detectOutOfRange(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 10
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 12
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v4

    .line 20
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 21
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 23
    if-gt v2, v5, :cond_1

    .line 25
    move v2, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v4

    .line 29
    :goto_1
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    if-lt p1, v1, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    move v3, v4

    .line 37
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 38
    invoke-interface {p0, v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;->winDragOutOfBounds(ZZZ)V

    .line 40
    :cond_3
    return-void
    .line 43
.end method

.method public dragMerged(IFF)Z
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 13
    :goto_0
    int-to-float p1, p1

    .line 15
    sub-float/2addr p1, p2

    .line 16
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    int-to-float p1, p1

    .line 23
    sub-float/2addr p1, p3

    .line 24
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 25
    const/4 p0, 0x1

    .line 27
    return p0
    .line 28
.end method

.method public inFreeFormModeGesture(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x4

    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
    .line 12
.end method

.method public inFullScreenModeGesture(I)Z
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :cond_1
    :goto_0
    return p0
    .line 10
.end method

.method public inMiniModeGesture(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x6

    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
    .line 12
.end method

.method public initLaunchMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inFreeFormModeGesture(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inMiniModeGesture(I)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 23
    :goto_0
    return-void
    .line 25
.end method

.method public initTouchMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    const/4 v1, 0x3

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    const/4 v1, 0x5

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 12
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 16
    :goto_1
    return-void
    .line 18
.end method

.method public initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->reset()V

    .line 2
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayWidth()I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayHeight()I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 25
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationVisualBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initTouchMode(I)V

    .line 34
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 37
    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 41
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 46
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 48
    :goto_0
    int-to-float v0, v0

    .line 50
    sub-float/2addr v0, p2

    .line 51
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetX:F

    .line 52
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOriginalBounds:Landroid/graphics/Rect;

    .line 54
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 56
    int-to-float p2, p2

    .line 58
    sub-float/2addr p2, p3

    .line 59
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mOffsetY:F

    .line 60
    invoke-virtual {p5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isSupportGesture()Z

    .line 62
    move-result p2

    .line 65
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 66
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->initLaunchMode(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->updateRangeParams()V

    .line 73
    return-void
    .line 76
.end method

.method public isBackFullScreenHotAreas(FF)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    move-result v0

    .line 9
    int-to-double v0, v0

    .line 10
    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    .line 11
    mul-double/2addr v0, v2

    .line 16
    float-to-double v2, p1

    .line 17
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 18
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 20
    move-result-wide v2

    .line 23
    iget v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 24
    int-to-float v6, v6

    .line 26
    sub-float/2addr v6, p2

    .line 27
    float-to-double v6, v6

    .line 28
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 29
    move-result-wide v6

    .line 32
    add-double/2addr v6, v2

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    move-result-wide v2

    .line 37
    cmpg-double v2, v2, v0

    .line 38
    const/4 v3, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    if-gtz v2, :cond_0

    .line 42
    move v2, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v2, v3

    .line 46
    :goto_0
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenWidth:I

    .line 47
    int-to-float v7, v7

    .line 49
    sub-float/2addr v7, p1

    .line 50
    float-to-double v7, v7

    .line 51
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide v7

    .line 55
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mScreenHeight:I

    .line 56
    int-to-float p1, p1

    .line 58
    sub-float/2addr p1, p2

    .line 59
    float-to-double p1, p1

    .line 60
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 61
    move-result-wide p1

    .line 64
    add-double/2addr p1, v7

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 66
    move-result-wide p1

    .line 69
    cmpg-double p1, p1, v0

    .line 70
    if-gtz p1, :cond_1

    .line 72
    move p1, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move p1, v3

    .line 76
    :goto_1
    if-eqz v2, :cond_2

    .line 77
    iget p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 79
    if-eqz p2, :cond_3

    .line 81
    :cond_2
    if-eqz p1, :cond_4

    .line 83
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDownTouchedMode:I

    .line 85
    if-ne p0, v6, :cond_4

    .line 87
    :cond_3
    move v3, v6

    .line 89
    :cond_4
    return v3
    .line 90
.end method

.method public miniFreeformAvoidIfNeed(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 8
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeAvoidAlgorithm()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 14
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 32
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
    .line 38
.end method

.method public abstract onGestureDragEnd(FF)V
.end method

.method public abstract onGestureDragMove(FF)V
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setGestureObserver(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mGestureObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;

    .line 2
    return-void
    .line 4
.end method

.method public updateRangeParams()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mSupportCvw:Z

    .line 2
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 11
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 17
    aget-object v0, v0, v1

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 21
    goto :goto_2

    .line 23
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mLaunchWinMode:I

    .line 24
    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 28
    const/4 v1, 0x1

    .line 30
    aget-object v0, v0, v1

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mRangeAreas:[Landroid/graphics/Rect;

    .line 34
    aget-object v0, v0, v1

    .line 36
    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->mDragRangeArea:Landroid/graphics/Rect;

    .line 38
    :goto_2
    return-void
    .line 40
.end method
