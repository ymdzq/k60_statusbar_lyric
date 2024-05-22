.class public abstract Landroidx/transition/Slide$CalculateSlideVertical;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/transition/Slide$CalculateSlide;


# virtual methods
.method public getGoneX(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getGoneY(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
