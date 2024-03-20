.class public abstract Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    const/4 v2, 0x0

    .line 8
    aget v2, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 11
    aget v1, v1, v3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v3

    .line 17
    div-int/2addr v3, v0

    .line 18
    add-int/2addr v3, v2

    .line 19
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p0

    .line 25
    div-int/2addr p0, v0

    .line 26
    add-int/2addr p0, v1

    .line 27
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 28
    return-void
    .line 30
.end method
