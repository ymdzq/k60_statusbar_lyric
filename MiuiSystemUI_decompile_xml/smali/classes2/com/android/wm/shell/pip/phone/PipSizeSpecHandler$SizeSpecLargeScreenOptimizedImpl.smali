.class public final Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;


# instance fields
.field public final mDefaultSizePercent:F

.field public final mMinimumSizePercent:F

.field public mOptimizedAspectRatio:F

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string p1, "com.android.wm.shell.pip.phone.def_percentage"

    .line 7
    const-string v0, "0.6"

    .line 9
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 15
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    .line 19
    const-string p1, "com.android.wm.shell.pip.phone.min_percentage"

    .line 21
    const-string v0, "0.5"

    .line 23
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final getDefaultSize(F)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMinSize(F)Landroid/util/Size;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 6
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 17
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mDefaultSizePercent:F

    .line 22
    mul-float/2addr v1, p0

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 25
    move-result p0

    .line 28
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 29
    move-result v0

    .line 32
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result p0

    .line 36
    int-to-float v0, p0

    .line 37
    div-float/2addr v0, p1

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 39
    move-result p1

    .line 42
    new-instance v0, Landroid/util/Size;

    .line 43
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 45
    return-object v0
    .line 48
.end method

.method public final getMaxSize(F)Landroid/util/Size;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 8
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v3

    .line 21
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 22
    sub-int/2addr v2, v3

    .line 24
    add-int/2addr v2, v1

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 30
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 36
    move-result v3

    .line 39
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v4

    .line 43
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 44
    sub-int/2addr v3, v4

    .line 46
    add-int/2addr v3, v1

    .line 47
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 52
    move-result v1

    .line 55
    sub-int/2addr v1, v2

    .line 56
    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->-$$Nest$mgetDisplayBounds(Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Landroid/graphics/Rect;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v0

    .line 64
    sub-int/2addr v0, v3

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 66
    move-result v0

    .line 69
    int-to-float v0, v0

    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    mul-float/2addr v0, v1

    .line 73
    float-to-int v0, v0

    .line 74
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 75
    cmpl-float v2, p1, p0

    .line 77
    if-ltz v2, :cond_0

    .line 79
    div-float v2, v1, p0

    .line 81
    cmpg-float v2, p1, v2

    .line 83
    if-gtz v2, :cond_0

    .line 85
    int-to-float v0, v0

    .line 87
    mul-float v2, p0, v0

    .line 88
    sub-float p0, p1, p0

    .line 90
    mul-float/2addr p0, v0

    .line 92
    add-float/2addr v1, p1

    .line 93
    div-float/2addr p0, v1

    .line 94
    add-float/2addr p0, v2

    .line 95
    float-to-int v0, p0

    .line 96
    int-to-float p0, v0

    .line 97
    div-float/2addr p0, p1

    .line 98
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 99
    move-result p0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    cmpl-float p0, p1, v1

    .line 104
    if-lez p0, :cond_1

    .line 106
    int-to-float p0, v0

    .line 108
    div-float/2addr p0, p1

    .line 109
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 110
    move-result p0

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    int-to-float p0, v0

    .line 115
    mul-float/2addr p0, p1

    .line 116
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 117
    move-result p0

    .line 120
    move v5, v0

    .line 121
    move v0, p0

    .line 122
    move p0, v5

    .line 123
    :goto_0
    new-instance p1, Landroid/util/Size;

    .line 124
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 126
    return-object p1
    .line 129
.end method

.method public final getMinSize(F)Landroid/util/Size;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

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
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 17
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mMinimumSizePercent:F

    .line 22
    mul-float/2addr v2, p0

    .line 24
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 25
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 29
    move-result v1

    .line 32
    int-to-float v1, v1

    .line 33
    mul-float/2addr v1, p0

    .line 34
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 35
    move-result p0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    cmpl-float v1, p1, v1

    .line 41
    if-lez v1, :cond_1

    .line 43
    iget v0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 45
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result p0

    .line 50
    int-to-float v0, p0

    .line 51
    mul-float/2addr v0, p1

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 53
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget p0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mDefaultMinSize:I

    .line 58
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result p0

    .line 63
    int-to-float v0, p0

    .line 64
    div-float/2addr v0, p1

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 66
    move-result p1

    .line 69
    move v3, p1

    .line 70
    move p1, p0

    .line 71
    move p0, v3

    .line 72
    :goto_0
    new-instance v0, Landroid/util/Size;

    .line 73
    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    .line 75
    return-object v0
    .line 78
.end method

.method public final getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 17
    move-result p2

    .line 20
    int-to-float p2, p2

    .line 21
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 22
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr p2, v0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->getMaxSize(F)Landroid/util/Size;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 32
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v1, p2

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 38
    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 42
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    mul-float/2addr v0, p2

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 48
    move-result p2

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 54
    move-result v0

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    if-ge v1, v0, :cond_0

    .line 60
    cmpg-float v0, p1, v2

    .line 62
    if-gtz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 66
    move-result v1

    .line 69
    int-to-float p0, v1

    .line 70
    div-float/2addr p0, p1

    .line 71
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 72
    move-result p2

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 77
    move-result v0

    .line 80
    if-ge p2, v0, :cond_1

    .line 81
    cmpl-float v0, p1, v2

    .line 83
    if-lez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getMinEdgeSize()I

    .line 87
    move-result p2

    .line 90
    int-to-float p0, p2

    .line 91
    mul-float/2addr p0, p1

    .line 92
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 93
    move-result v1

    .line 96
    :cond_1
    :goto_0
    new-instance p0, Landroid/util/Size;

    .line 97
    invoke-direct {p0, v1, p2}, Landroid/util/Size;-><init>(II)V

    .line 99
    return-object p0
    .line 102
.end method

.method public final reloadResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0701f9    # @dimen/config_pipLargeScreenOptimizedAspectRatio '0.5625'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    cmpl-float v0, v0, v1

    .line 21
    if-lez v0, :cond_0

    .line 23
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 25
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecLargeScreenOptimizedImpl;->mOptimizedAspectRatio:F

    .line 27
    :cond_0
    return-void
    .line 29
.end method
