.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$StatusBarViewsCenterProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;


# virtual methods
.method public final getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p0

    .line 5
    const v0, 0x7f0a093d    # @id/system_icon_area

    .line 6
    if-ne p0, v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 19
    move-result p0

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p0, v1, :cond_0

    .line 25
    move p0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p0, v0

    .line 29
    :goto_0
    xor-int/2addr p0, v0

    .line 30
    const/4 v2, 0x2

    .line 31
    new-array v3, v2, [I

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    aget v0, v3, v0

    .line 37
    aget v1, v3, v1

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 43
    move-result p0

    .line 46
    div-int/2addr p0, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 49
    move-result p0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v3

    .line 56
    div-int/2addr v3, v2

    .line 57
    sub-int/2addr p0, v3

    .line 58
    :goto_1
    add-int/2addr v0, p0

    .line 59
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 62
    move-result p0

    .line 65
    div-int/2addr p0, v2

    .line 66
    add-int/2addr p0, v1

    .line 67
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 68
    goto :goto_2

    .line 70
    :cond_2
    invoke-static {p1, p2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier$DefaultImpls;->getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V

    .line 71
    :goto_2
    return-void
    .line 74
.end method
