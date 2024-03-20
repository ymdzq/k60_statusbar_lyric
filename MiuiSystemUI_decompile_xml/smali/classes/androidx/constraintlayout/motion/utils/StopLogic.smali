.class public final Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

.field public mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

.field public final mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final config(FFFFFF)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 4
    iput p1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    .line 6
    cmpl-float p0, p1, p2

    .line 8
    if-lez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    iput-boolean p0, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    .line 15
    if-eqz p0, :cond_1

    .line 17
    neg-float v1, p3

    .line 19
    sub-float v2, p1, p2

    .line 20
    move v3, p5

    .line 22
    move v4, p6

    .line 23
    move v5, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    .line 25
    goto :goto_1

    .line 28
    :cond_1
    sub-float v2, p2, p1

    .line 29
    move v1, p3

    .line 31
    move v3, p5

    .line 32
    move v4, p6

    .line 33
    move v5, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->setup(FFFFF)V

    .line 35
    :goto_1
    return-void
    .line 38
.end method

.method public final getInterpolation(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 2
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getVelocity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 2
    invoke-interface {p0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getVelocity()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
