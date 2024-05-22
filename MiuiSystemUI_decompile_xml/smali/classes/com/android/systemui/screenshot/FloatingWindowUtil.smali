.class public abstract Lcom/android/systemui/screenshot/FloatingWindowUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static dpToPx(FLandroid/util/DisplayMetrics;)F
    .locals 0

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    int-to-float p1, p1

    .line 4
    mul-float/2addr p0, p1

    .line 5
    const/high16 p1, 0x43200000    # 160.0f

    .line 6
    div-float/2addr p0, p1

    .line 8
    return p0
    .line 9
.end method

.method public static getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 1
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x7f4

    .line 8
    const v6, 0xe0520

    .line 10
    const/4 v7, -0x3

    .line 13
    move-object v0, v8

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 15
    const/4 v0, 0x3

    .line 18
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 22
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 25
    const/high16 v1, 0x20000000

    .line 27
    or-int/2addr v0, v1

    .line 29
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 30
    return-object v8
    .line 32
.end method
