.class public abstract Landroidx/constraintlayout/core/motion/utils/CurveFit;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    move p0, v2

    .line 7
    :cond_0
    if-eqz p0, :cond_2

    .line 8
    if-eq p0, v2, :cond_1

    .line 10
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;-><init>([D[[D)V

    .line 14
    return-object p0

    .line 17
    :cond_1
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;

    .line 18
    const/4 v0, 0x0

    .line 20
    aget-wide v1, p1, v0

    .line 21
    aget-object p1, p2, v0

    .line 23
    invoke-direct {p0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;-><init>(D[D)V

    .line 25
    return-object p0

    .line 28
    :cond_2
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 31
    return-object p0
    .line 34
.end method


# virtual methods
.method public abstract getPos(D)D
.end method

.method public abstract getPos(D[D)V
.end method

.method public abstract getPos(D[F)V
.end method

.method public abstract getSlope(D)D
.end method

.method public abstract getSlope(D[D)V
.end method

.method public abstract getTimePoints()[D
.end method
