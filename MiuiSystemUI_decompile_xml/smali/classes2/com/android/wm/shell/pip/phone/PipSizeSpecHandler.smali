.class public final Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultMinSize:I

.field public mMaxAspectRatioForMinSize:F

.field public mMinAspectRatioForMinSize:F

.field public mOverridableMinSize:I

.field public mOverrideMinSize:Landroid/util/Size;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field public mScreenEdgeInsets:Landroid/graphics/Point;

.field public final mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# direct methods
.method public static -$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->supportsPipSizeLargeScreen()Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;

    .line 15
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->reloadResources()V

    .line 30
    return-void
    .line 33
.end method


# virtual methods
.method public adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 12
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 17
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    div-float/2addr v0, v1

    .line 22
    cmpl-float v0, v0, p1

    .line 23
    if-lez v0, :cond_1

    .line 25
    new-instance v0, Landroid/util/Size;

    .line 27
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 33
    move-result p0

    .line 36
    int-to-float p0, p0

    .line 37
    div-float/2addr p0, p1

    .line 38
    float-to-int p0, p0

    .line 39
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 40
    return-object v0

    .line 43
    :cond_1
    new-instance v0, Landroid/util/Size;

    .line 44
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 46
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    mul-float/2addr v1, p1

    .line 51
    float-to-int p1, v1

    .line 52
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 53
    move-result p0

    .line 56
    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    .line 57
    return-object v0
    .line 60
.end method

.method public final getInsetBounds()Landroid/graphics/Rect;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 7
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 9
    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 13
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 17
    iget v4, p0, Landroid/graphics/Point;->x:I

    .line 19
    add-int/2addr v3, v4

    .line 21
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 22
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 24
    add-int/2addr v5, p0

    .line 26
    iget v6, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 27
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 29
    sub-int/2addr v6, v7

    .line 31
    sub-int/2addr v6, v4

    .line 32
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 33
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 35
    sub-int/2addr v1, v2

    .line 37
    sub-int/2addr v1, p0

    .line 38
    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    return-object v0
    .line 42
.end method

.method public final getMinEdgeSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    .line 9
    move-result p0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final getOverrideMinEdgeSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 20
    move-result p0

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method

.method public final getOverrideMinSize()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 14
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 16
    move-result v0

    .line 19
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    .line 20
    if-ge v0, v1, :cond_1

    .line 22
    :cond_0
    new-instance v0, Landroid/util/Size;

    .line 24
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    .line 26
    invoke-direct {v0, p0, p0}, Landroid/util/Size;-><init>(II)V

    .line 28
    return-object v0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 32
    return-object p0
    .line 34
.end method

.method public final reloadResources()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070282    # @dimen/default_minimal_size_pip_resizable_task '108.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 15
    const v1, 0x7f070e51    # @dimen/overridable_minimal_size_pip_resizable_task '48.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverridableMinSize:I

    .line 24
    const v1, 0x7f1302cb    # @string/config_defaultPictureInPictureScreenEdgeInsets '16x16'

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    .line 39
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-nez v1, :cond_1

    .line 45
    new-instance v0, Landroid/graphics/Point;

    .line 47
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 49
    goto :goto_1

    .line 52
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    .line 53
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 55
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 60
    move-result-object v4

    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 65
    move-result v3

    .line 68
    float-to-int v3, v3

    .line 69
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 70
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    move-result-object v0

    .line 78
    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 79
    move-result v0

    .line 82
    float-to-int v0, v0

    .line 83
    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    move-object v0, v2

    .line 87
    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 90
    invoke-interface {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->reloadResources()V

    .line 92
    return-void
    .line 95
.end method

.method public supportsPipSizeLargeScreen()Z
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.enable_pip_size_large_screen"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object p0

    .line 16
    const-string v0, "android.software.leanback"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
    .line 27
.end method
