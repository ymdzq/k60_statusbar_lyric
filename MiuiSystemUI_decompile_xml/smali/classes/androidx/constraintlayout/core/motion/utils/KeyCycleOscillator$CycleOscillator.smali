.class public final Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public final mOffsetArr:[F

.field public final mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

.field public final mPeriod:[F

.field public final mPhaseArr:[F

.field public final mPosition:[D

.field public mSplineSlopeCache:[D

.field public mSplineValueCache:[D

.field public final mValues:[F


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 11
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/Oscillator;-><init>()V

    .line 13
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 16
    move/from16 v4, p1

    .line 18
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 20
    if-eqz v1, :cond_3

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 24
    move-result v4

    .line 27
    div-int/lit8 v4, v4, 0x2

    .line 28
    new-array v4, v4, [D

    .line 30
    const/16 v5, 0x28

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 34
    move-result v5

    .line 37
    const/4 v6, 0x1

    .line 38
    add-int/2addr v5, v6

    .line 39
    const/16 v7, 0x2c

    .line 40
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 42
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    move v10, v9

    .line 47
    :goto_0
    const/4 v11, -0x1

    .line 48
    if-eq v8, v11, :cond_0

    .line 49
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 58
    add-int/lit8 v11, v10, 0x1

    .line 59
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 61
    move-result-wide v12

    .line 64
    aput-wide v12, v4, v10

    .line 65
    add-int/lit8 v5, v8, 0x1

    .line 67
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 69
    move-result v8

    .line 72
    move v10, v11

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/16 v7, 0x29

    .line 75
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    .line 77
    move-result v7

    .line 80
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 88
    add-int/lit8 v5, v10, 0x1

    .line 89
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 91
    move-result-wide v7

    .line 94
    aput-wide v7, v4, v10

    .line 95
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 97
    move-result-object v1

    .line 100
    array-length v4, v1

    .line 101
    mul-int/lit8 v4, v4, 0x3

    .line 102
    add-int/lit8 v4, v4, -0x2

    .line 104
    array-length v5, v1

    .line 106
    sub-int/2addr v5, v6

    .line 107
    int-to-double v7, v5

    .line 108
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 109
    div-double v7, v10, v7

    .line 111
    filled-new-array {v4, v6}, [I

    .line 113
    move-result-object v6

    .line 116
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 117
    invoke-static {v12, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 119
    move-result-object v6

    .line 122
    check-cast v6, [[D

    .line 123
    new-array v4, v4, [D

    .line 125
    move v12, v9

    .line 127
    :goto_1
    array-length v13, v1

    .line 128
    if-ge v12, v13, :cond_2

    .line 129
    aget-wide v13, v1, v12

    .line 131
    add-int v15, v12, v5

    .line 133
    aget-object v16, v6, v15

    .line 135
    aput-wide v13, v16, v9

    .line 137
    int-to-double v9, v12

    .line 139
    mul-double/2addr v9, v7

    .line 140
    aput-wide v9, v4, v15

    .line 141
    if-lez v12, :cond_1

    .line 143
    mul-int/lit8 v11, v5, 0x2

    .line 145
    add-int/2addr v11, v12

    .line 147
    aget-object v15, v6, v11

    .line 148
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 150
    add-double v18, v13, v16

    .line 152
    const/16 v20, 0x0

    .line 154
    aput-wide v18, v15, v20

    .line 156
    add-double v18, v9, v16

    .line 158
    aput-wide v18, v4, v11

    .line 160
    add-int/lit8 v11, v12, -0x1

    .line 162
    aget-object v15, v6, v11

    .line 164
    sub-double v13, v13, v16

    .line 166
    sub-double/2addr v13, v7

    .line 168
    aput-wide v13, v15, v20

    .line 169
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 171
    add-double/2addr v9, v13

    .line 173
    sub-double/2addr v9, v7

    .line 174
    aput-wide v9, v4, v11

    .line 175
    goto :goto_2

    .line 177
    :cond_1
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 178
    const/16 v20, 0x0

    .line 180
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 182
    move-wide/from16 v10, v16

    .line 184
    move/from16 v9, v20

    .line 186
    goto :goto_1

    .line 188
    :cond_2
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 189
    invoke-direct {v1, v4, v6}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 191
    iput-object v1, v3, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 194
    :cond_3
    new-array v1, v2, [F

    .line 196
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 198
    new-array v1, v2, [D

    .line 200
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 202
    new-array v1, v2, [F

    .line 204
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 206
    new-array v1, v2, [F

    .line 208
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 210
    new-array v1, v2, [F

    .line 212
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 214
    new-array v0, v2, [F

    .line 216
    return-void
    .line 218
.end method
