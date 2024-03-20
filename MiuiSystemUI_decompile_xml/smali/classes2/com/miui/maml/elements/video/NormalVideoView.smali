.class Lcom/miui/maml/elements/video/NormalVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public addSurfaceHolderCallback()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    return-void
    .line 11
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 2
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 7
    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 13
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    .line 15
    move-result v1

    .line 18
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 19
    if-lez v2, :cond_8

    .line 21
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 23
    if-lez v2, :cond_8

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 27
    move-result v0

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    move-result p1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    move-result v1

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    move-result p2

    .line 42
    const/high16 v2, 0x40000000    # 2.0f

    .line 43
    if-ne v0, v2, :cond_1

    .line 45
    if-ne v1, v2, :cond_1

    .line 47
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 49
    mul-int v1, v0, p2

    .line 51
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 53
    mul-int v3, p1, v2

    .line 55
    if-ge v1, v3, :cond_0

    .line 57
    mul-int/2addr v0, p2

    .line 59
    div-int/2addr v0, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    mul-int v1, v0, p2

    .line 62
    mul-int v3, p1, v2

    .line 64
    if-le v1, v3, :cond_4

    .line 66
    mul-int/2addr v2, p1

    .line 68
    div-int v1, v2, v0

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    const/high16 v3, -0x80000000

    .line 72
    if-ne v0, v2, :cond_3

    .line 74
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 76
    mul-int/2addr v0, p1

    .line 78
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 79
    div-int/2addr v0, v2

    .line 81
    if-ne v1, v3, :cond_2

    .line 82
    if-le v0, p2, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    move v1, v0

    .line 87
    :goto_0
    move v0, p1

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    if-ne v1, v2, :cond_6

    .line 90
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 92
    mul-int/2addr v1, p2

    .line 94
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 95
    div-int/2addr v1, v2

    .line 97
    if-ne v0, v3, :cond_5

    .line 98
    if-le v1, p1, :cond_5

    .line 100
    :cond_4
    :goto_1
    move v0, p1

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    move v0, v1

    .line 104
    :goto_2
    move v1, p2

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 107
    iget v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 109
    if-ne v1, v3, :cond_7

    .line 111
    if-le v4, p2, :cond_7

    .line 113
    mul-int v1, p2, v2

    .line 115
    div-int/2addr v1, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move v1, v2

    .line 119
    move p2, v4

    .line 120
    :goto_3
    if-ne v0, v3, :cond_5

    .line 121
    if-le v1, p1, :cond_5

    .line 123
    mul-int/2addr v4, p1

    .line 125
    div-int v1, v4, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 129
    goto :goto_5

    .line 132
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 133
    :goto_5
    return-void
    .line 136
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 6
    return-void
    .line 8
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 3
    return-void
    .line 5
.end method

.method public setFormat(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 6
    return-void
    .line 9
.end method

.method public updateVideoSize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 2
    return-void
    .line 5
.end method
