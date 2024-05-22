.class public Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDefaultAspectRatio:F

.field public mDefaultStackGravity:I

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

.field public final mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

.field public final mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    .line 9
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    .line 16
    iput p0, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 18
    return-void
    .line 20
.end method

.method public static getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 6
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 10
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    .line 12
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p0

    .line 13
    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    .line 11
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v0

    .line 16
    :goto_0
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    return-object p0

    .line 25
    :cond_1
    return-object v0
    .line 26
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p2, "PipBoundsAlgorithm"

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "mDefaultAspectRatio="

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "mMinAspectRatio="

    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "mMaxAspectRatio="

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "mDefaultStackGravity="

    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    .line 116
    const-string v2, "mSnapAlgorithm"

    .line 118
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object p2

    .line 123
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 124
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void
    .line 136
.end method

.method public getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 9
    move-result p1

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-gtz p1, :cond_0

    .line 15
    iget p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 19
    move-result p1

    .line 22
    if-gtz p1, :cond_0

    .line 23
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v2

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 30
    :cond_1
    return-object v0
    .line 33
.end method

.method public final getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    new-instance v7, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    cmpl-float v0, p1, v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 11
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 23
    move-result p2

    .line 26
    invoke-virtual {v7, v3, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v7, p1, p0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 37
    return-object v7

    .line 40
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    .line 41
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 46
    iget v4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 51
    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 53
    invoke-interface {v5, v4}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    .line 55
    move-result-object v4

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 61
    move-result p2

    .line 64
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 65
    move-result v0

    .line 68
    invoke-virtual {v7, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {v7, p1, p0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 79
    goto :goto_1

    .line 82
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    .line 83
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 85
    move-result v1

    .line 88
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 89
    move-result v2

    .line 92
    const/4 v4, 0x0

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 94
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 96
    if-eqz p1, :cond_2

    .line 98
    iget p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    move p1, v3

    .line 103
    :goto_0
    iget-boolean v5, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    .line 104
    if-eqz v5, :cond_3

    .line 106
    iget v3, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    .line 108
    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 110
    move-result v5

    .line 113
    move-object v3, p2

    .line 114
    move-object v6, v7

    .line 115
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 116
    :goto_1
    return-object v7
    .line 119
.end method

.method public getEntryDestinationBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 14
    iget-object v3, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 16
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    .line 22
    invoke-interface {p0, v0, v3, v2, v1}, Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method public final getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget v2, v1, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->mSnapFraction:F

    .line 8
    iget-object v3, v1, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->mSize:Landroid/util/Size;

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    .line 12
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    .line 20
    move-result-object v2

    .line 23
    :goto_0
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->mSize:Landroid/util/Size;

    .line 28
    if-eqz v1, :cond_1

    .line 30
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v4

    .line 34
    :goto_1
    iget v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 35
    new-instance v5, Landroid/graphics/Rect;

    .line 37
    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 39
    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 42
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 44
    move-result v2

    .line 47
    if-gtz v2, :cond_2

    .line 48
    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 50
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 52
    move-result v2

    .line 55
    if-gtz v2, :cond_2

    .line 56
    goto :goto_2

    .line 58
    :cond_2
    move v3, v4

    .line 59
    :goto_2
    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {p0, v5, v0, v4, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 62
    :cond_3
    return-object v5
    .line 65
.end method

.method public final getInsetBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getInsetBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    return-void
    .line 11
.end method

.method public final getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 10
    if-lez v1, :cond_1

    .line 12
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 14
    if-lez v1, :cond_1

    .line 16
    new-instance v0, Landroid/util/Size;

    .line 18
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    .line 24
    move-result v2

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v1

    .line 31
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinEdgeSize()I

    .line 34
    move-result p0

    .line 37
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result p0

    .line 41
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 42
    :cond_1
    :goto_0
    return-object v0
    .line 45
.end method

.method public final getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz p2, :cond_0

    .line 4
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0, p1, v0, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method

.method public final reloadResources(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    const v0, 0x7f0701f7    # @dimen/config_pictureInPictureDefaultAspectRatio '1.777778'

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    .line 13
    const v0, 0x7f0b002f    # @integer/config_defaultPictureInPictureGravity '0x00000055'

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    .line 22
    const v0, 0x7f1302cb    # @string/config_defaultPictureInPictureScreenEdgeInsets '16x16'

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    .line 37
    :cond_0
    const v0, 0x10500d8    # @android:dimen/config_screenBrightnessSettingDefaultFloat

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 43
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 47
    const v0, 0x10500d7    # @android:dimen/config_screenBrightnessMinimumDimAmountFloat

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 52
    move-result p1

    .line 55
    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 56
    return-void
    .line 58
.end method

.method public final transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 3
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 7
    iget v2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 9
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 11
    invoke-virtual {v3, p1, v1, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 13
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 17
    if-nez p3, :cond_1

    .line 19
    if-eqz p4, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object p3, v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 24
    invoke-interface {p3, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    .line 26
    move-result-object p2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    new-instance p3, Landroid/util/Size;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result p4

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v3

    .line 40
    invoke-direct {p3, p4, v3}, Landroid/util/Size;-><init>(II)V

    .line 41
    iget-object p4, v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 44
    invoke-virtual {p3, p4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p4

    .line 49
    if-eqz p4, :cond_2

    .line 50
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    .line 52
    move-result-object p2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p4, v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 57
    invoke-interface {p4, p2, p3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;->getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;

    .line 59
    move-result-object p2

    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 63
    move-result p3

    .line 66
    int-to-float p3, p3

    .line 67
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 68
    move-result p4

    .line 71
    int-to-float p4, p4

    .line 72
    const/high16 v2, 0x40000000    # 2.0f

    .line 73
    div-float/2addr p4, v2

    .line 75
    sub-float/2addr p3, p4

    .line 76
    float-to-int p3, p3

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 78
    move-result p4

    .line 81
    int-to-float p4, p4

    .line 82
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 83
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    div-float/2addr v3, v2

    .line 88
    sub-float/2addr p4, v3

    .line 89
    float-to-int p4, p4

    .line 90
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 91
    move-result v2

    .line 94
    add-int/2addr v2, p3

    .line 95
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 96
    move-result p2

    .line 99
    add-int/2addr p2, p4

    .line 100
    invoke-virtual {p1, p3, p4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {p1, v1, p0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 108
    return-void
    .line 111
.end method
