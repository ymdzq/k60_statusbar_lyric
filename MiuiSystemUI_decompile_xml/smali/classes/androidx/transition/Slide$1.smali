.class public final Landroidx/transition/Slide$1;
.super Landroidx/transition/Slide$CalculateSlideVertical;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/transition/Slide$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/transition/Slide$CalculateSlideVertical;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getGoneX(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 2

    .line 1
    iget p0, p0, Landroidx/transition/Slide$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 10
    move-result p0

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 14
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    add-float/2addr p0, p1

    .line 19
    return p0

    .line 20
    :pswitch_1
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 23
    move-result p0

    .line 26
    if-ne p0, v1, :cond_0

    .line 27
    move v0, v1

    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 32
    move-result p0

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 36
    move-result p1

    .line 39
    int-to-float p1, p1

    .line 40
    add-float/2addr p0, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 43
    move-result p0

    .line 46
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 47
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    sub-float/2addr p0, p1

    .line 52
    :goto_0
    return p0

    .line 53
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 54
    move-result p0

    .line 57
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 58
    move-result p1

    .line 61
    int-to-float p1, p1

    .line 62
    sub-float/2addr p0, p1

    .line 63
    return p0

    .line 64
    :goto_1
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 65
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 67
    move-result p0

    .line 70
    if-ne p0, v1, :cond_2

    .line 71
    move v0, v1

    .line 73
    :cond_2
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 76
    move-result p0

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 80
    move-result p1

    .line 83
    int-to-float p1, p1

    .line 84
    sub-float/2addr p0, p1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 87
    move-result p0

    .line 90
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 91
    move-result p1

    .line 94
    int-to-float p1, p1

    .line 95
    add-float/2addr p0, p1

    .line 96
    :goto_2
    return p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 98
.end method
