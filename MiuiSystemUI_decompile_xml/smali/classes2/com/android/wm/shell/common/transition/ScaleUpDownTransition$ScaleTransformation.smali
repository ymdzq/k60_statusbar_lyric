.class public final Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;
.super Landroid/view/animation/Transformation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mRadius:F


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 6
    return-void
    .line 8
.end method

.method public final compose(Landroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 2
    instance-of v0, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 9
    check-cast p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 11
    iget p1, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 13
    mul-float/2addr v0, p1

    .line 15
    iput v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 16
    :cond_0
    return-void
    .line 18
.end method

.method public final set(Landroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 2
    instance-of v0, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;

    .line 9
    iget p1, p1, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 11
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleTransformation;->mRadius:F

    .line 13
    :cond_0
    return-void
    .line 15
.end method
