.class public abstract Landroidx/customview/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
