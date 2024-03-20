.class public final Landroidx/leanback/transition/FadeAndShortSlide$1;
.super Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/transition/FadeAndShortSlide$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getGoneX(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 2

    .line 1
    iget p0, p0, Landroidx/leanback/transition/FadeAndShortSlide$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    goto/16 :goto_6

    .line 9
    :pswitch_0
    aget p0, p4, v1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    add-int/2addr v0, p0

    .line 19
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 20
    invoke-virtual {p1}, Landroid/transition/Visibility;->getEpicenter()Landroid/graphics/Rect;

    .line 23
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    aget p0, p4, v1

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 31
    move-result p4

    .line 34
    div-int/lit8 p4, p4, 0x2

    .line 35
    add-int/2addr p4, p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 39
    move-result p4

    .line 42
    :goto_0
    if-ge v0, p4, :cond_1

    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 45
    move-result p0

    .line 48
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 49
    move-result p1

    .line 52
    sub-float/2addr p0, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 55
    move-result p0

    .line 58
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 59
    move-result p1

    .line 62
    add-float/2addr p0, p1

    .line 63
    :goto_1
    return p0

    .line 64
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 65
    move-result p0

    .line 68
    if-ne p0, v0, :cond_2

    .line 69
    goto :goto_2

    .line 71
    :cond_2
    move v0, v1

    .line 72
    :goto_2
    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 75
    move-result p0

    .line 78
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 79
    move-result p1

    .line 82
    sub-float/2addr p0, p1

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 85
    move-result p0

    .line 88
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 89
    move-result p1

    .line 92
    add-float/2addr p0, p1

    .line 93
    :goto_3
    return p0

    .line 94
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 95
    move-result p0

    .line 98
    if-ne p0, v0, :cond_4

    .line 99
    goto :goto_4

    .line 101
    :cond_4
    move v0, v1

    .line 102
    :goto_4
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 105
    move-result p0

    .line 108
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 109
    move-result p1

    .line 112
    add-float/2addr p1, p0

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 115
    move-result p0

    .line 118
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 119
    move-result p1

    .line 122
    sub-float p1, p0, p1

    .line 123
    :goto_5
    return p1

    .line 125
    :goto_6
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 126
    move-result p0

    .line 129
    return p0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method

.method public final getGoneY(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/transition/FadeAndShortSlide$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    .line 12
    move-result p1

    .line 15
    sub-float/2addr p0, p1

    .line 16
    return p0

    .line 17
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 18
    move-result p0

    .line 21
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    .line 22
    move-result p1

    .line 25
    add-float/2addr p1, p0

    .line 26
    return p1

    .line 27
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 28
    move-result p0

    .line 31
    return p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 34
.end method
