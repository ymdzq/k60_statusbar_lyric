.class public final Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mTime:D

.field public final mValue:[D


# direct methods
.method public constructor <init>(D[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    .line 5
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getPos(D)D
    .locals 0

    const/4 p1, 0x0

    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getPos(D[D)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    array-length p2, p0

    invoke-static {p0, p1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final getPos(D[F)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 3
    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getSlope(D)D
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getSlope(D[D)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    array-length p2, p2

    if-ge p1, p2, :cond_0

    const-wide/16 v0, 0x0

    .line 3
    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getTimePoints()[D
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [D

    .line 3
    const/4 v1, 0x0

    .line 5
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    .line 6
    aput-wide v2, v0, v1

    .line 8
    return-object v0
    .line 10
.end method
