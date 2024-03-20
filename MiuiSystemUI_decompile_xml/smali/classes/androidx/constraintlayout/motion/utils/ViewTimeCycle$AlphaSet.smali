.class public final Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 8
    move-result p1

    .line 11
    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 15
    return p0

    .line 17
    :pswitch_1
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 25
    return p0

    .line 27
    :pswitch_2
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 28
    move-result p1

    .line 31
    invoke-virtual {p4, p1}, Landroid/view/View;->setScaleY(F)V

    .line 32
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 35
    return p0

    .line 37
    :pswitch_3
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 38
    move-result p1

    .line 41
    invoke-virtual {p4, p1}, Landroid/view/View;->setScaleX(F)V

    .line 42
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 45
    return p0

    .line 47
    :pswitch_4
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 48
    move-result p1

    .line 51
    invoke-virtual {p4, p1}, Landroid/view/View;->setRotationY(F)V

    .line 52
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 55
    return p0

    .line 57
    :pswitch_5
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 58
    move-result p1

    .line 61
    invoke-virtual {p4, p1}, Landroid/view/View;->setRotationX(F)V

    .line 62
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 65
    return p0

    .line 67
    :pswitch_6
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 68
    move-result p1

    .line 71
    invoke-virtual {p4, p1}, Landroid/view/View;->setRotation(F)V

    .line 72
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 75
    return p0

    .line 77
    :pswitch_7
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 78
    move-result p1

    .line 81
    invoke-virtual {p4, p1}, Landroid/view/View;->setElevation(F)V

    .line 82
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 85
    return p0

    .line 87
    :pswitch_8
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 88
    move-result p1

    .line 91
    invoke-virtual {p4, p1}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 95
    return p0

    .line 97
    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    .line 98
    move-result p1

    .line 101
    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 102
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    .line 105
    return p0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 108
.end method
