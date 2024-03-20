.class public final Landroidx/leanback/transition/SlideKitkat$2;
.super Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/transition/SlideKitkat$2;->$r8$classId:I

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final getGone(Landroid/view/View;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/transition/SlideKitkat$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    sub-float/2addr p0, p1

    .line 17
    return p0

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 19
    move-result p0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    add-float/2addr p0, p1

    .line 28
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
