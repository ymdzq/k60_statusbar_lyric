.class public final Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

.field public final mValue:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->mValue:[F

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 2
    return-void
    .line 4
.end method

.method public final setProperty(FLandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->mValue:[F

    .line 6
    const/4 v1, 0x0

    .line 8
    aput p1, v0, v1

    .line 9
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 11
    invoke-static {p0, p2, v0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 13
    return-void
    .line 16
.end method
