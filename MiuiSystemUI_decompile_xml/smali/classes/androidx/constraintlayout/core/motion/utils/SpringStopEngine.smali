.class public final Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# instance fields
.field public mBoundaryMode:I

.field public mDamping:D

.field public mLastTime:F

.field public mMass:F

.field public mPos:F

.field public mStiffness:D

.field public mStopThreshold:F

.field public mTargetPos:D

.field public mV:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 5
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 6
    sub-float v2, v1, v2

    .line 8
    float-to-double v2, v2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    cmpg-double v4, v2, v4

    .line 13
    if-gtz v4, :cond_1

    .line 15
    :cond_0
    move-object v4, v0

    .line 17
    goto/16 :goto_1

    .line 18
    :cond_1
    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 20
    iget-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 22
    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 24
    float-to-double v8, v8

    .line 26
    div-double v8, v4, v8

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    move-result-wide v8

    .line 32
    mul-double/2addr v8, v2

    .line 33
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 34
    mul-double/2addr v8, v10

    .line 36
    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    .line 37
    div-double/2addr v10, v8

    .line 39
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 40
    add-double/2addr v10, v8

    .line 42
    double-to-int v8, v10

    .line 43
    int-to-double v9, v8

    .line 44
    div-double/2addr v2, v9

    .line 45
    const/4 v9, 0x0

    .line 46
    :goto_0
    if-ge v9, v8, :cond_0

    .line 47
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 49
    float-to-double v11, v10

    .line 51
    iget-wide v13, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 52
    sub-double v15, v11, v13

    .line 54
    move/from16 v17, v8

    .line 56
    move/from16 v18, v9

    .line 58
    neg-double v8, v4

    .line 60
    mul-double/2addr v8, v15

    .line 61
    iget v15, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 62
    move-wide/from16 v19, v4

    .line 64
    float-to-double v4, v15

    .line 66
    mul-double v21, v4, v6

    .line 67
    sub-double v8, v8, v21

    .line 69
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 71
    float-to-double v0, v1

    .line 73
    div-double/2addr v8, v0

    .line 74
    mul-double/2addr v8, v2

    .line 75
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    .line 76
    div-double v8, v8, v21

    .line 78
    add-double/2addr v8, v4

    .line 80
    mul-double v23, v2, v8

    .line 81
    div-double v23, v23, v21

    .line 83
    add-double v23, v23, v11

    .line 85
    sub-double v11, v23, v13

    .line 87
    neg-double v11, v11

    .line 89
    mul-double v11, v11, v19

    .line 90
    mul-double/2addr v8, v6

    .line 92
    sub-double/2addr v11, v8

    .line 93
    div-double/2addr v11, v0

    .line 94
    mul-double/2addr v11, v2

    .line 95
    div-double v0, v11, v21

    .line 96
    add-double/2addr v0, v4

    .line 98
    double-to-float v4, v11

    .line 99
    add-float/2addr v15, v4

    .line 100
    move-object/from16 v4, p0

    .line 101
    iput v15, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 103
    mul-double/2addr v0, v2

    .line 105
    double-to-float v0, v0

    .line 106
    add-float/2addr v10, v0

    .line 107
    iput v10, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 108
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 110
    if-lez v0, :cond_3

    .line 112
    const/4 v1, 0x0

    .line 114
    cmpg-float v1, v10, v1

    .line 115
    if-gez v1, :cond_2

    .line 117
    and-int/lit8 v1, v0, 0x1

    .line 119
    const/4 v5, 0x1

    .line 121
    if-ne v1, v5, :cond_2

    .line 122
    neg-float v1, v10

    .line 124
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 125
    neg-float v1, v15

    .line 127
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 128
    :cond_2
    iget v1, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 130
    const/high16 v5, 0x3f800000    # 1.0f

    .line 132
    cmpl-float v5, v1, v5

    .line 134
    if-lez v5, :cond_3

    .line 136
    and-int/lit8 v0, v0, 0x2

    .line 138
    const/4 v5, 0x2

    .line 140
    if-ne v0, v5, :cond_3

    .line 141
    const/high16 v0, 0x40000000    # 2.0f

    .line 143
    sub-float/2addr v0, v1

    .line 145
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 146
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 148
    neg-float v0, v0

    .line 150
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 151
    :cond_3
    add-int/lit8 v9, v18, 0x1

    .line 153
    move/from16 v1, p1

    .line 155
    move-object v0, v4

    .line 157
    move/from16 v8, v17

    .line 158
    move-wide/from16 v4, v19

    .line 160
    goto :goto_0

    .line 162
    :goto_1
    move/from16 v0, p1

    .line 163
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->isStopped()Z

    .line 167
    move-result v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    iget-wide v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 173
    double-to-float v0, v0

    .line 175
    iput v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 176
    :cond_4
    iget v0, v4, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 178
    return v0
    .line 180
.end method

.method public final getVelocity()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isStopped()Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 2
    float-to-double v0, v0

    .line 4
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 5
    sub-double/2addr v0, v2

    .line 7
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 8
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    .line 10
    float-to-double v4, v4

    .line 12
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 13
    float-to-double v6, v6

    .line 15
    mul-double/2addr v4, v4

    .line 16
    mul-double/2addr v4, v6

    .line 17
    mul-double v6, v2, v0

    .line 18
    mul-double/2addr v6, v0

    .line 20
    add-double/2addr v6, v4

    .line 21
    div-double/2addr v6, v2

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    move-result-wide v0

    .line 26
    iget p0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    .line 27
    float-to-double v2, p0

    .line 29
    cmpg-double p0, v0, v2

    .line 30
    if-gtz p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method
