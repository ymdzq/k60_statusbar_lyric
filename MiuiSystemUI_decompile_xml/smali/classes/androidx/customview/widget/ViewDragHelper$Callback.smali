.class public abstract Landroidx/customview/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract clampViewPositionHorizontal(Landroid/view/View;I)I
.end method

.method public abstract clampViewPositionVertical(Landroid/view/View;I)I
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getViewVerticalDragRange()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onEdgeTouched(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onViewCaptured(ILandroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onViewDragStateChanged(I)V
.end method

.method public abstract onViewPositionChanged(Landroid/view/View;II)V
.end method

.method public abstract onViewReleased(Landroid/view/View;FF)V
.end method

.method public abstract tryCaptureView(ILandroid/view/View;)Z
.end method
