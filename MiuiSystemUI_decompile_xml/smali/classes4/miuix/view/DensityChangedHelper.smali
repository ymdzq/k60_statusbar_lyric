.class public abstract Lmiuix/view/DensityChangedHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static updateViewMargin(FLandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    int-to-float v1, v1

    .line 14
    mul-float/2addr v1, p0

    .line 15
    float-to-int v1, v1

    .line 16
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    int-to-float v1, v1

    .line 21
    mul-float/2addr v1, p0

    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    int-to-float v1, v1

    .line 28
    mul-float/2addr v1, p0

    .line 29
    float-to-int v1, v1

    .line 30
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 31
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, p0

    .line 36
    float-to-int p0, v1

    .line 37
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public static updateViewPadding(FLandroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    mul-float/2addr v1, p0

    .line 14
    float-to-int v1, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    mul-float/2addr v2, p0

    .line 21
    float-to-int v2, v2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    mul-float/2addr v3, p0

    .line 28
    float-to-int p0, v3

    .line 29
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    return-void
    .line 33
.end method
