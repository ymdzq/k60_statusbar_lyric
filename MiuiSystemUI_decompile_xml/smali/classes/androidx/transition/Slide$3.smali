.class public final Landroidx/transition/Slide$3;
.super Landroidx/transition/Slide$CalculateSlideVertical;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/transition/Slide$3;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/transition/Slide$CalculateSlideVertical;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getGoneY(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/transition/Slide$3;->$r8$classId:I

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
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

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
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

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
