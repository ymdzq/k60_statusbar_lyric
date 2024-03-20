.class public final Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# instance fields
.field public mDefaultSizePercent:F

.field public mMinimumSizePercent:F

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getDefaultSize(F)Landroid/util/Size;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getMinSize(F)Landroid/util/Size;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v1

    .line 20
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v2

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 33
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    int-to-float v1, v1

    .line 38
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mDefaultSizePercent:F

    .line 39
    mul-float/2addr v1, p0

    .line 41
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 42
    move-result p0

    .line 45
    float-to-int p0, p0

    .line 46
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMinAspectRatioForMinSize:F

    .line 47
    cmpg-float v1, p1, v1

    .line 49
    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    if-lez v1, :cond_2

    .line 53
    iget v0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMaxAspectRatioForMinSize:F

    .line 55
    cmpl-float v1, p1, v0

    .line 57
    if-lez v1, :cond_1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    int-to-float p0, p0

    .line 62
    mul-float/2addr v0, p0

    .line 63
    invoke-static {v0, p0}, Landroid/graphics/PointF;->length(FF)F

    .line 64
    move-result p0

    .line 67
    mul-float/2addr p0, p0

    .line 68
    mul-float v0, p1, p1

    .line 69
    add-float/2addr v0, v2

    .line 71
    div-float/2addr p0, v0

    .line 72
    float-to-double v0, p0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 78
    move-result-wide v0

    .line 81
    long-to-int p0, v0

    .line 82
    int-to-float v0, p0

    .line 83
    mul-float/2addr v0, p1

    .line 84
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 85
    move-result p1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    cmpg-float v0, p1, v2

    .line 90
    if-gtz v0, :cond_3

    .line 92
    int-to-float v0, p0

    .line 94
    div-float/2addr v0, p1

    .line 95
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 96
    move-result p1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    int-to-float v0, p0

    .line 101
    mul-float/2addr v0, p1

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 103
    move-result p1

    .line 106
    :goto_1
    move v3, p1

    .line 107
    move p1, p0

    .line 108
    move p0, v3

    .line 109
    :goto_2
    new-instance v0, Landroid/util/Size;

    .line 110
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 112
    return-object v0
    .line 115
.end method

.method public final getMaxSize(F)Landroid/util/Size;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 18
    move-result v3

    .line 21
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v3

    .line 29
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 30
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 32
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 36
    move-result v4

    .line 39
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v5

    .line 43
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 44
    sub-int/2addr v4, v5

    .line 46
    add-int/2addr v4, v3

    .line 47
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 48
    move-result-object v3

    .line 51
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 58
    move-result v2

    .line 61
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object v0

    .line 65
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    sub-int/2addr v2, v0

    .line 68
    add-int/2addr v2, v3

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    cmpl-float v0, p1, v0

    .line 72
    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 80
    move-result p0

    .line 83
    sub-int/2addr v1, v4

    .line 84
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result p0

    .line 88
    int-to-float v0, p0

    .line 89
    div-float/2addr v0, p1

    .line 90
    float-to-int p1, v0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 97
    move-result p0

    .line 100
    sub-int/2addr v1, v2

    .line 101
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result p0

    .line 105
    int-to-float v0, p0

    .line 106
    mul-float/2addr v0, p1

    .line 107
    float-to-int p1, v0

    .line 108
    move v6, p1

    .line 109
    move p1, p0

    .line 110
    move p0, v6

    .line 111
    :goto_0
    new-instance v0, Landroid/util/Size;

    .line 112
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 114
    return-object v0
    .line 117
.end method

.method public final getMinSize(F)Landroid/util/Size;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v1

    .line 20
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    move-result v0

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v0

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    cmpl-float v1, p1, v1

    .line 35
    if-lez v1, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 43
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    int-to-float v0, v0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    .line 49
    mul-float/2addr v0, p0

    .line 51
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 52
    move-result p0

    .line 55
    float-to-int p0, p0

    .line 56
    int-to-float v0, p0

    .line 57
    div-float/2addr v0, p1

    .line 58
    float-to-int p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->getDefaultSize(F)Landroid/util/Size;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 65
    move-result v1

    .line 68
    int-to-float v1, v1

    .line 69
    int-to-float v0, v0

    .line 70
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    .line 71
    mul-float/2addr v0, p0

    .line 73
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 74
    move-result p0

    .line 77
    float-to-int p0, p0

    .line 78
    int-to-float v0, p0

    .line 79
    mul-float/2addr v0, p1

    .line 80
    float-to-int p1, v0

    .line 81
    move v2, p1

    .line 82
    move p1, p0

    .line 83
    move p0, v2

    .line 84
    :goto_0
    new-instance v0, Landroid/util/Size;

    .line 85
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 87
    return-object v0
    .line 90
.end method

.method public final getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 6
    move-result p2

    .line 9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p2

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 16
    move-result p0

    .line 19
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p0

    .line 23
    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    cmpg-float p2, p1, p2

    .line 26
    if-gtz p2, :cond_0

    .line 28
    int-to-float p2, p0

    .line 30
    div-float/2addr p2, p1

    .line 31
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 32
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    int-to-float p2, p0

    .line 37
    mul-float/2addr p2, p1

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result p1

    .line 42
    move v1, p1

    .line 43
    move p1, p0

    .line 44
    move p0, v1

    .line 45
    :goto_0
    new-instance p2, Landroid/util/Size;

    .line 46
    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 48
    return-object p2
    .line 51
.end method

.method public final reloadResources()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f0701f6    # @dimen/config_pictureInPictureAspectRatioLimitForMinSize '1.777778'

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    move-result v2

    .line 16
    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMaxAspectRatioForMinSize:F

    .line 17
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMaxAspectRatioForMinSize:F

    .line 19
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    div-float/2addr v3, v2

    .line 23
    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mMinAspectRatioForMinSize:F

    .line 24
    const v0, 0x7f0701f8    # @dimen/config_pictureInPictureDefaultSizePercent '0.23'

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mDefaultSizePercent:F

    .line 33
    const v0, 0x7f090007    # @fraction/config_pipShortestEdgePercent '40.0%'

    .line 35
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    .line 39
    move-result v0

    .line 42
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecDefaultImpl;->mMinimumSizePercent:F

    .line 43
    return-void
    .line 45
.end method
