.class public Lmiuix/animation/internal/AnimValueUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .locals 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->signum(D)D

    .line 2
    move-result-wide v0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    .line 6
    move-result-wide p2

    .line 9
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 10
    cmpl-double v2, p2, v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    invoke-static {p0, p1}, Lmiuix/animation/utils/CommonUtils;->getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F

    .line 19
    move-result p0

    .line 22
    float-to-double p0, p0

    .line 23
    mul-double/2addr v0, p0

    .line 24
    return-wide v0

    .line 25
    :cond_0
    instance-of v2, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 26
    if-eqz v2, :cond_1

    .line 28
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    .line 32
    move-result p0

    .line 35
    int-to-double p0, p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 38
    move-result p0

    .line 41
    float-to-double p0, p0

    .line 42
    :goto_0
    const-wide v2, 0x412e854800000000L    # 1000100.0

    .line 43
    cmpl-double p2, p2, v2

    .line 48
    if-nez p2, :cond_2

    .line 50
    mul-double/2addr p0, v0

    .line 52
    :cond_2
    return-wide p0
    .line 53
.end method

.method public static getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ISpecificProperty;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/property/ISpecificProperty;

    .line 6
    double-to-float p0, p2

    .line 8
    invoke-interface {p1, p0}, Lmiuix/animation/property/ISpecificProperty;->getSpecificValue(F)F

    .line 9
    move-result p0

    .line 12
    float-to-double p0, p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 15
    move-result-wide p0

    .line 18
    return-wide p0
    .line 19
.end method

.method public static getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .locals 2

    .line 1
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 2
    cmpl-double v0, p2, v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    .line 13
    move-result p0

    .line 16
    int-to-double p0, p0

    .line 17
    return-wide p0

    .line 18
    :cond_0
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 19
    cmpl-double v0, p2, v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 28
    move-result p0

    .line 31
    float-to-double p0, p0

    .line 32
    return-wide p0

    .line 33
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 34
    move-result-wide p0

    .line 37
    return-wide p0
    .line 38
.end method

.method public static handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 2
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 4
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 12
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 14
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 16
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 18
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 20
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 25
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
    .line 30
.end method

.method public static isInvalid(D)Z
    .locals 2

    .line 1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    cmpl-double v0, p0, v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 11
    cmpl-double v0, p0, v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 20
    cmpl-double p0, p0, v0

    .line 25
    if-nez p0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    :goto_1
    return p0
    .line 33
.end method
