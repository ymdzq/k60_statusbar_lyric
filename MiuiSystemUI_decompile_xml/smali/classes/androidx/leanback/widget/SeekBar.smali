.class public final Landroidx/leanback/widget/SeekBar;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActiveBarHeight:I

.field public mActiveRadius:I

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public final mBackgroundRect:Landroid/graphics/RectF;

.field public mBarHeight:I

.field public final mKnobPaint:Landroid/graphics/Paint;

.field public mKnobx:I

.field public mMax:I

.field public mProgress:I

.field public final mProgressPaint:Landroid/graphics/Paint;

.field public final mProgressRect:Landroid/graphics/RectF;

.field public mSecondProgress:I

.field public final mSecondProgressPaint:Landroid/graphics/Paint;

.field public final mSecondProgressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/RectF;

    .line 5
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 7
    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 10
    new-instance p2, Landroid/graphics/RectF;

    .line 12
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 14
    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 21
    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    .line 26
    const/4 v0, 0x1

    .line 28
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    .line 34
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    iput-object v1, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    .line 41
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    iput-object v2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    .line 48
    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 50
    iput-object v3, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 56
    const v0, -0x777778

    .line 59
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const v0, -0x333334

    .line 65
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    const/high16 p2, -0x10000

    .line 71
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    const/4 p2, -0x1

    .line 76
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object p2

    .line 83
    const v0, 0x7f07059c    # @dimen/lb_playback_transport_progressbar_bar_height '4.0dp'

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    move-result p2

    .line 90
    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object p2

    .line 96
    const v0, 0x7f07059a    # @dimen/lb_playback_transport_progressbar_active_bar_height '6.0dp'

    .line 97
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    move-result p2

    .line 103
    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    const p2, 0x7f07059b    # @dimen/lb_playback_transport_progressbar_active_radius '6.0dp'

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 113
    move-result p1

    .line 116
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    .line 117
    return-void
    .line 119
.end method


# virtual methods
.method public final calculate()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v2

    .line 20
    sub-int v0, v2, v0

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 23
    iget-object v3, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 25
    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 27
    div-int/lit8 v5, v4, 0x2

    .line 29
    int-to-float v5, v5

    .line 31
    int-to-float v6, v0

    .line 32
    div-int/lit8 v4, v4, 0x2

    .line 33
    sub-int v4, v1, v4

    .line 35
    int-to-float v4, v4

    .line 37
    sub-int/2addr v2, v0

    .line 38
    int-to-float v0, v2

    .line 39
    invoke-virtual {v3, v5, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 52
    div-int/lit8 v2, v2, 0x2

    .line 54
    :goto_1
    mul-int/lit8 v3, v2, 0x2

    .line 56
    sub-int/2addr v1, v3

    .line 58
    iget v3, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    .line 59
    int-to-float v3, v3

    .line 61
    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 62
    int-to-float v4, v4

    .line 64
    div-float/2addr v3, v4

    .line 65
    int-to-float v1, v1

    .line 66
    mul-float/2addr v3, v1

    .line 67
    iget-object v4, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 68
    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 70
    div-int/lit8 v7, v5, 0x2

    .line 72
    int-to-float v7, v7

    .line 74
    div-int/lit8 v5, v5, 0x2

    .line 75
    int-to-float v5, v5

    .line 77
    add-float/2addr v5, v3

    .line 78
    invoke-virtual {v4, v7, v6, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    .line 82
    int-to-float v4, v4

    .line 84
    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 85
    int-to-float v5, v5

    .line 87
    div-float/2addr v4, v5

    .line 88
    mul-float/2addr v4, v1

    .line 89
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    .line 90
    iget-object v5, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 92
    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 94
    iget v7, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 96
    div-int/lit8 v7, v7, 0x2

    .line 98
    int-to-float v7, v7

    .line 100
    add-float/2addr v7, v4

    .line 101
    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    float-to-int v0, v3

    .line 105
    add-int/2addr v2, v0

    .line 106
    iput v2, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
    .line 112
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getMax()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 2
    return p0
    .line 4
.end method

.method public getProgress()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    .line 2
    return p0
    .line 4
.end method

.method public getSecondProgress()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    .line 2
    return p0
    .line 4
.end method

.method public getSecondaryProgressColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 18
    int-to-float v0, v0

    .line 20
    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 23
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    .line 26
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 28
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 30
    cmpl-float v2, v2, v3

    .line 32
    if-lez v2, :cond_1

    .line 34
    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 38
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 41
    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 45
    iget v1, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    .line 48
    int-to-float v1, v1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v2

    .line 54
    div-int/lit8 v2, v2, 0x2

    .line 55
    int-to-float v2, v2

    .line 57
    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 5
    return-void
    .line 8
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 5
    return-void
    .line 8
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public setAccessibilitySeekListener(Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setActiveBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 4
    return-void
    .line 7
.end method

.method public setActiveRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 4
    return-void
    .line 7
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 4
    return-void
    .line 7
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 4
    return-void
    .line 7
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    move p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-gez p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 10
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 13
    return-void
    .line 16
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    move p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-gez p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 10
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    .line 13
    return-void
    .line 16
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    return-void
    .line 7
.end method
