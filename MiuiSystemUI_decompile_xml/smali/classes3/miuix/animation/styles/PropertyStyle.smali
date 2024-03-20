.class public Lmiuix/animation/styles/PropertyStyle;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LONGEST_DURATION:J = 0x2710L

.field static checker:Lmiuix/animation/physics/EquilibriumChecker;

.field static final mCheckerLocal:Ljava/lang/ThreadLocal;

.field static final sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

.field static final sFriction:Lmiuix/animation/physics/FrictionOperator;

.field static final sSpring:Lmiuix/animation/physics/SpringOperator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringOperator;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sSpring:Lmiuix/animation/physics/SpringOperator;

    .line 7
    new-instance v0, Lmiuix/animation/physics/AccelerateOperator;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/physics/AccelerateOperator;-><init>()V

    .line 11
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    .line 14
    new-instance v0, Lmiuix/animation/physics/FrictionOperator;

    .line 16
    invoke-direct {v0}, Lmiuix/animation/physics/FrictionOperator;-><init>()V

    .line 18
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 23
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 25
    sput-object v0, Lmiuix/animation/styles/PropertyStyle;->mCheckerLocal:Ljava/lang/ThreadLocal;

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V
    .locals 8

    .line 1
    iget-wide v2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 2
    sub-long v2, p2, v2

    .line 4
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 6
    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 8
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-wide v4, p4

    .line 18
    move-wide v6, p6

    .line 19
    invoke-static/range {v0 .. v7}, Lmiuix/animation/styles/PropertyStyle;->updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1, v2, v3}, Lmiuix/animation/styles/PropertyStyle;->updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;J)V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method private static doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-wide/from16 v11, p1

    .line 4
    iget-wide v13, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 6
    iget-object v1, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 8
    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 10
    invoke-static {v1}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    instance-of v2, v1, Lmiuix/animation/physics/SpringOperator;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-wide v2, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 22
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    goto/16 :goto_0

    .line 30
    :cond_0
    iget-object v2, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 32
    iget-object v2, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 34
    const/4 v3, 0x0

    .line 36
    aget-wide v4, v2, v3

    .line 37
    const/4 v6, 0x1

    .line 39
    aget-wide v7, v2, v6

    .line 40
    const/4 v2, 0x2

    .line 42
    new-array v10, v2, [D

    .line 43
    move-wide v15, v7

    .line 45
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 46
    aput-wide v6, v10, v3

    .line 48
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 50
    const/4 v2, 0x1

    .line 52
    aput-wide v6, v10, v2

    .line 53
    move-wide v2, v13

    .line 55
    move-wide v6, v15

    .line 56
    move-wide/from16 v8, p1

    .line 57
    invoke-interface/range {v1 .. v10}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    .line 59
    move-result-wide v1

    .line 62
    iget-wide v3, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 63
    iget-wide v5, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 65
    add-double/2addr v5, v1

    .line 67
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 68
    mul-double/2addr v5, v7

    .line 70
    mul-double/2addr v5, v11

    .line 71
    add-double/2addr v5, v3

    .line 72
    iput-wide v5, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    .line 75
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "doPhysicsCalculation data.value isInfinite! startVelocity "

    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, " velocity "

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 96
    const-string v4, " data.ease.parameters "

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v4, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 104
    iget-object v4, v4, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, " delta "

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 116
    const-string v4, " data.targetValue "

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v4, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 124
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    const-string v4, " data.velocity "

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-wide v4, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 134
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v3

    .line 142
    const-string v4, "miuix_anim"

    .line 143
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 148
    goto :goto_1

    .line 150
    :cond_2
    :goto_0
    iget-wide v1, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 151
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 153
    const-wide/16 v1, 0x0

    .line 155
    iput-wide v1, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 157
    :goto_1
    return-void
    .line 159
.end method

.method public static getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;
    .locals 1

    .line 1
    const/4 v0, -0x4

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    const/4 v0, -0x3

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, -0x2

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sSpring:Lmiuix/animation/physics/SpringOperator;

    .line 13
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sAccelerate:Lmiuix/animation/physics/AccelerateOperator;

    .line 16
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lmiuix/animation/styles/PropertyStyle;->sFriction:Lmiuix/animation/physics/FrictionOperator;

    .line 19
    return-object p0
    .line 21
.end method

.method public static getVelocityThreshold()F
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/animation/physics/EquilibriumChecker;->getVelocityThreshold()F

    .line 6
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
    .line 12
.end method

.method public static isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move-wide v2, p3

    .line 4
    move-wide v4, p5

    .line 5
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/physics/EquilibriumChecker;->isAtEquilibrium(IDD)Z

    .line 6
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    if-eqz p0, :cond_1

    .line 12
    const-wide/16 p2, 0x2710

    .line 14
    cmp-long p2, p7, p2

    .line 16
    if-lez p2, :cond_1

    .line 18
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 20
    move-result p0

    .line 23
    const/4 p2, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string p3, "animation for "

    .line 29
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " stopped for running time too long, totalTime = "

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    new-array p1, p2, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    move p0, p2

    .line 58
    :cond_1
    return p0
    .line 59
.end method

.method private static isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 2
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 4
    const/4 v0, -0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method private static setFinishValue(Lmiuix/animation/internal/AnimData;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/PropertyStyle;->isUsingSpringPhy(Lmiuix/animation/internal/AnimData;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 9
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 11
    return-void
    .line 13
.end method

.method private static updateInterpolatorAnim(Lmiuix/animation/internal/AnimData;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 2
    check-cast v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 4
    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    .line 6
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 10
    cmp-long v4, p1, v2

    .line 12
    if-gez v4, :cond_0

    .line 14
    long-to-float v4, p1

    .line 16
    long-to-float v2, v2

    .line 17
    div-float/2addr v4, v2

    .line 18
    invoke-interface {v1, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 19
    move-result v2

    .line 22
    float-to-double v2, v2

    .line 23
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 24
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x3

    .line 29
    invoke-virtual {p0, v2}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 30
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 33
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 35
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 37
    :goto_0
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "updateInterpolatorAnim data.value isInfinite!  data.ease "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, " totalTime "

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, " interpolator "

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string p1, " data.progress "

    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-wide p0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 78
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    const-string p1, "miuix_anim"

    .line 87
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    return-void
    .line 92
.end method

.method private static updatePhysicsAnim(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-wide/from16 v1, p4

    .line 4
    move-wide/from16 v3, p6

    .line 6
    cmp-long v5, v1, v3

    .line 8
    if-lez v5, :cond_0

    .line 10
    long-to-float v1, v1

    .line 12
    long-to-float v2, v3

    .line 13
    div-float/2addr v1, v2

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 15
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    :goto_0
    long-to-double v2, v3

    .line 21
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 22
    div-double/2addr v2, v4

    .line 27
    sget-object v4, Lmiuix/animation/styles/PropertyStyle;->mCheckerLocal:Ljava/lang/ThreadLocal;

    .line 28
    const-class v5, Lmiuix/animation/physics/EquilibriumChecker;

    .line 30
    invoke-static {v4, v5}, Lmiuix/animation/utils/CommonUtils;->getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Lmiuix/animation/physics/EquilibriumChecker;

    .line 36
    sput-object v4, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 38
    iget-object v5, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 40
    iget-wide v6, v0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 42
    move-object v8, p0

    .line 44
    invoke-virtual {v4, p0, v5, v6, v7}, Lmiuix/animation/physics/EquilibriumChecker;->init(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    .line 45
    const/4 v4, 0x0

    .line 48
    move v5, v4

    .line 49
    :goto_1
    if-ge v5, v1, :cond_3

    .line 50
    invoke-static {v0, v2, v3}, Lmiuix/animation/styles/PropertyStyle;->doPhysicsCalculation(Lmiuix/animation/internal/AnimData;D)V

    .line 52
    sget-object v6, Lmiuix/animation/styles/PropertyStyle;->checker:Lmiuix/animation/physics/EquilibriumChecker;

    .line 55
    iget-object v7, v0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 57
    iget-object v8, v0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 59
    iget v8, v8, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 61
    iget-wide v9, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 63
    iget-wide v11, v0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 65
    move-wide/from16 v13, p2

    .line 67
    invoke-static/range {v6 .. v14}, Lmiuix/animation/styles/PropertyStyle;->isAnimRunning(Lmiuix/animation/physics/EquilibriumChecker;Lmiuix/animation/property/FloatProperty;IDDJ)Z

    .line 69
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    const/4 v1, 0x3

    .line 75
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 76
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    const-string v1, "----- updatePhysicsAnim data.setOp(AnimTask.OP_END)"

    .line 85
    new-array v2, v4, [Ljava/lang/Object;

    .line 87
    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_1
    invoke-static/range {p1 .. p1}, Lmiuix/animation/styles/PropertyStyle;->setFinishValue(Lmiuix/animation/internal/AnimData;)V

    .line 92
    goto :goto_2

    .line 95
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 96
    goto :goto_1

    .line 98
    :cond_3
    :goto_2
    return-void
    .line 99
.end method
