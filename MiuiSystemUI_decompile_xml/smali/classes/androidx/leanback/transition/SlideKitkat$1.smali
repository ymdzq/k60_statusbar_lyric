.class public final Landroidx/leanback/transition/SlideKitkat$1;
.super Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/transition/SlideKitkat$1;->$r8$classId:I

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final getGone(Landroid/view/View;)F
    .locals 1

    .line 1
    iget p0, p0, Landroidx/leanback/transition/SlideKitkat$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 9
    move-result p0

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 15
    move-result p0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    add-float/2addr p0, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 26
    move-result p0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    sub-float/2addr p0, p1

    .line 35
    :goto_0
    return p0

    .line 36
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 37
    move-result p0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 41
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    add-float/2addr p0, p1

    .line 46
    return p0

    .line 47
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 48
    move-result p0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 52
    move-result p1

    .line 55
    int-to-float p1, p1

    .line 56
    sub-float/2addr p0, p1

    .line 57
    return p0

    .line 58
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 59
    move-result p0

    .line 62
    if-ne p0, v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 65
    move-result p0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 69
    move-result p1

    .line 72
    int-to-float p1, p1

    .line 73
    sub-float/2addr p0, p1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 76
    move-result p0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 80
    move-result p1

    .line 83
    int-to-float p1, p1

    .line 84
    add-float/2addr p0, p1

    .line 85
    :goto_2
    return p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method
