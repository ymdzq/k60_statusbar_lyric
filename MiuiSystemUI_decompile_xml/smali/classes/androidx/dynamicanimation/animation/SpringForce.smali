.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 3
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 6
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 9
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 11
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v0, p1

    .line 12
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-void
.end method

.method private init()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 7
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 9
    cmpl-double v0, v0, v2

    .line 14
    if-eqz v0, :cond_3

    .line 16
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 20
    cmpl-double v4, v0, v2

    .line 22
    if-lez v4, :cond_1

    .line 24
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 27
    mul-double/2addr v4, v6

    .line 29
    mul-double/2addr v0, v0

    .line 30
    sub-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    move-result-wide v0

    .line 35
    mul-double/2addr v0, v6

    .line 36
    add-double/2addr v0, v4

    .line 37
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 38
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 40
    neg-double v4, v0

    .line 42
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 43
    mul-double/2addr v4, v6

    .line 45
    mul-double/2addr v0, v0

    .line 46
    sub-double/2addr v0, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 48
    move-result-wide v0

    .line 51
    mul-double/2addr v0, v6

    .line 52
    sub-double/2addr v4, v0

    .line 53
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    const-wide/16 v4, 0x0

    .line 57
    cmpl-double v4, v0, v4

    .line 59
    if-ltz v4, :cond_2

    .line 61
    cmpg-double v4, v0, v2

    .line 63
    if-gez v4, :cond_2

    .line 65
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 67
    mul-double/2addr v0, v0

    .line 69
    sub-double/2addr v2, v0

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    move-result-wide v0

    .line 74
    mul-double/2addr v0, v4

    .line 75
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 76
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 79
    return-void

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    .line 84
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0
    .line 89
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 2
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 7
    mul-double v2, v0, v0

    .line 9
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 11
    mul-double/2addr v0, v4

    .line 13
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 14
    mul-double/2addr v0, v4

    .line 16
    neg-double v2, v2

    .line 17
    float-to-double p0, p1

    .line 18
    mul-double/2addr v2, p0

    .line 19
    float-to-double p0, p2

    .line 20
    mul-double/2addr v0, p0

    .line 21
    sub-double/2addr v2, v0

    .line 22
    double-to-float p0, v2

    .line 23
    return p0
    .line 24
.end method

.method public getDampingRatio()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 2
    double-to-float p0, v0

    .line 4
    return p0
    .line 5
.end method

.method public getFinalPosition()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 2
    double-to-float p0, v0

    .line 4
    return p0
    .line 5
.end method

.method public getStiffness()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 2
    mul-double/2addr v0, v0

    .line 4
    double-to-float p0, v0

    .line 5
    return p0
    .line 6
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 7
    cmpg-double p2, v0, v2

    .line 9
    if-gez p2, :cond_0

    .line 11
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 13
    move-result p2

    .line 16
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 23
    cmpg-double p0, p1, v0

    .line 25
    if-gez p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
    .line 32
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-ltz v0, :cond_0

    .line 5
    float-to-double v0, p1

    .line 7
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 11
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p1, "Damping ratio must be non-negative"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 3
    return-object p0
    .line 5
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 15
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string p1, "Spring stiffness constant must be positive."

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
    .line 25
.end method

.method public setValueThreshold(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 2
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 6
    const-wide v0, 0x404f400000000000L    # 62.5

    .line 8
    mul-double/2addr p1, v0

    .line 13
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 14
    return-void
    .line 16
.end method

.method public updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    .line 4
    move-wide/from16 v1, p5

    .line 7
    long-to-double v1, v1

    .line 9
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 10
    div-double/2addr v1, v3

    .line 15
    iget-wide v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 16
    sub-double v3, p1, v3

    .line 18
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 20
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 22
    cmpl-double v9, v5, v7

    .line 24
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 26
    if-lez v9, :cond_0

    .line 31
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 33
    mul-double v7, v5, v3

    .line 35
    sub-double v7, v7, p3

    .line 37
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 39
    sub-double v14, v5, v12

    .line 41
    div-double/2addr v7, v14

    .line 43
    sub-double v7, v3, v7

    .line 44
    mul-double/2addr v3, v5

    .line 46
    sub-double v3, v3, p3

    .line 47
    sub-double v12, v5, v12

    .line 49
    div-double/2addr v3, v12

    .line 51
    mul-double/2addr v5, v1

    .line 52
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 53
    move-result-wide v5

    .line 56
    mul-double/2addr v5, v7

    .line 57
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 58
    mul-double/2addr v12, v1

    .line 60
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 61
    move-result-wide v12

    .line 64
    mul-double/2addr v12, v3

    .line 65
    add-double/2addr v12, v5

    .line 66
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 67
    mul-double/2addr v7, v5

    .line 69
    mul-double/2addr v5, v1

    .line 70
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 71
    move-result-wide v5

    .line 74
    mul-double/2addr v5, v7

    .line 75
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 76
    mul-double/2addr v3, v7

    .line 78
    mul-double/2addr v7, v1

    .line 79
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 80
    move-result-wide v1

    .line 83
    mul-double/2addr v1, v3

    .line 84
    add-double/2addr v1, v5

    .line 85
    goto/16 :goto_0

    .line 86
    :cond_0
    cmpl-double v9, v5, v7

    .line 88
    if-nez v9, :cond_1

    .line 90
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 92
    mul-double v7, v5, v3

    .line 94
    add-double v7, v7, p3

    .line 96
    mul-double v12, v7, v1

    .line 98
    add-double/2addr v12, v3

    .line 100
    neg-double v3, v5

    .line 101
    mul-double/2addr v3, v1

    .line 102
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 103
    move-result-wide v3

    .line 106
    mul-double/2addr v3, v12

    .line 107
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 108
    neg-double v5, v5

    .line 110
    mul-double/2addr v5, v1

    .line 111
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 112
    move-result-wide v5

    .line 115
    mul-double/2addr v5, v12

    .line 116
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 117
    neg-double v14, v12

    .line 119
    mul-double/2addr v5, v14

    .line 120
    neg-double v12, v12

    .line 121
    mul-double/2addr v12, v1

    .line 122
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 123
    move-result-wide v1

    .line 126
    mul-double/2addr v1, v7

    .line 127
    add-double/2addr v1, v5

    .line 128
    move-wide v12, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 131
    div-double/2addr v7, v12

    .line 133
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 134
    mul-double v14, v5, v12

    .line 136
    mul-double/2addr v14, v3

    .line 138
    add-double v14, v14, p3

    .line 139
    mul-double/2addr v14, v7

    .line 141
    neg-double v5, v5

    .line 142
    mul-double/2addr v5, v12

    .line 143
    mul-double/2addr v5, v1

    .line 144
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 145
    move-result-wide v5

    .line 148
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 149
    mul-double/2addr v7, v1

    .line 151
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 152
    move-result-wide v7

    .line 155
    mul-double/2addr v7, v3

    .line 156
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 157
    mul-double/2addr v12, v1

    .line 159
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 160
    move-result-wide v12

    .line 163
    mul-double/2addr v12, v14

    .line 164
    add-double/2addr v12, v7

    .line 165
    mul-double/2addr v12, v5

    .line 166
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 167
    neg-double v7, v5

    .line 169
    mul-double/2addr v7, v12

    .line 170
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 171
    mul-double/2addr v7, v10

    .line 173
    neg-double v9, v10

    .line 174
    mul-double/2addr v9, v5

    .line 175
    mul-double/2addr v9, v1

    .line 176
    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 177
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 182
    move-result-wide v5

    .line 185
    iget-wide v9, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 186
    move-wide/from16 p1, v12

    .line 188
    neg-double v11, v9

    .line 190
    mul-double/2addr v11, v3

    .line 191
    mul-double/2addr v9, v1

    .line 192
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 193
    move-result-wide v3

    .line 196
    mul-double/2addr v3, v11

    .line 197
    iget-wide v9, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 198
    mul-double/2addr v14, v9

    .line 200
    mul-double/2addr v9, v1

    .line 201
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 202
    move-result-wide v1

    .line 205
    mul-double/2addr v1, v14

    .line 206
    add-double/2addr v1, v3

    .line 207
    mul-double/2addr v1, v5

    .line 208
    add-double/2addr v1, v7

    .line 209
    move-wide/from16 v12, p1

    .line 210
    :goto_0
    iget-object v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 212
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 214
    add-double/2addr v12, v4

    .line 216
    double-to-float v0, v12

    .line 217
    iput v0, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 218
    double-to-float v0, v1

    .line 220
    iput v0, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 221
    return-object v3
    .line 223
.end method
