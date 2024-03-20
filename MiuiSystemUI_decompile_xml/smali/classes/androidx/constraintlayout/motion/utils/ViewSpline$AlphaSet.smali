.class public final Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setProperty(FLandroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    return-void

    .line 15
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 16
    move-result p0

    .line 19
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    return-void

    .line 23
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 24
    move-result p0

    .line 27
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    .line 28
    return-void

    .line 31
    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 32
    move-result p0

    .line 35
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    .line 36
    return-void

    .line 39
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 40
    move-result p0

    .line 43
    invoke-virtual {p2, p0}, Landroid/view/View;->setRotationY(F)V

    .line 44
    return-void

    .line 47
    :pswitch_5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 48
    move-result p0

    .line 51
    invoke-virtual {p2, p0}, Landroid/view/View;->setRotationX(F)V

    .line 52
    return-void

    .line 55
    :pswitch_6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 56
    move-result p0

    .line 59
    invoke-virtual {p2, p0}, Landroid/view/View;->setRotation(F)V

    .line 60
    return-void

    .line 63
    :pswitch_7
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 64
    move-result p0

    .line 67
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotY(F)V

    .line 68
    return-void

    .line 71
    :pswitch_8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 72
    move-result p0

    .line 75
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotX(F)V

    .line 76
    return-void

    .line 79
    :pswitch_9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 80
    move-result p0

    .line 83
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    .line 84
    return-void

    .line 87
    :pswitch_a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 88
    move-result p0

    .line 91
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 92
    return-void

    .line 95
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 96
    move-result p0

    .line 99
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationZ(F)V

    .line 100
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 104
.end method
