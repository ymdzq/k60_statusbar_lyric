.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public mVariesBy:I

.field public final mWavePoints:Ljava/util/ArrayList;

.field public mWaveShape:I

.field public mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveShape:I

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveString:Ljava/lang/String;

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mVariesBy:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final get(F)F
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 4
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    float-to-double v4, p1

    .line 11
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 12
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 18
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 20
    aget v4, v4, v3

    .line 22
    float-to-double v4, v4

    .line 24
    aput-wide v4, v0, v3

    .line 25
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 27
    aget v4, v4, v3

    .line 29
    float-to-double v4, v4

    .line 31
    aput-wide v4, v0, v2

    .line 32
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 34
    aget v4, v4, v3

    .line 36
    float-to-double v4, v4

    .line 38
    aput-wide v4, v0, v1

    .line 39
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 41
    aget-wide v3, v0, v3

    .line 43
    aget-wide v5, v0, v2

    .line 45
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 47
    float-to-double v7, p1

    .line 49
    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 50
    move-result-wide v5

    .line 53
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 54
    aget-wide p0, p0, v1

    .line 56
    mul-double/2addr v5, p0

    .line 58
    add-double/2addr v5, v3

    .line 59
    double-to-float p0, v5

    .line 60
    return p0
    .line 61
.end method

.method public final getSlope(F)F
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 6
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    float-to-double v8, v1

    .line 17
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 18
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 23
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 25
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 31
    aput-wide v3, v2, v6

    .line 33
    aput-wide v3, v2, v7

    .line 35
    aput-wide v3, v2, v5

    .line 37
    :goto_0
    float-to-double v1, v1

    .line 39
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 40
    aget-wide v8, v8, v7

    .line 42
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 44
    invoke-virtual {v10, v1, v2, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 46
    move-result-wide v8

    .line 49
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 50
    aget-wide v11, v11, v7

    .line 52
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 54
    aget-wide v13, v13, v7

    .line 56
    invoke-virtual {v10, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    .line 58
    move-result-wide v15

    .line 61
    add-double/2addr v15, v11

    .line 62
    cmpg-double v7, v1, v3

    .line 63
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 65
    if-gtz v7, :cond_1

    .line 67
    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 69
    goto :goto_1

    .line 74
    :cond_1
    cmpl-double v7, v1, v11

    .line 75
    if-ltz v7, :cond_2

    .line 77
    const-wide v1, 0x3feffffde7210be9L    # 0.999999

    .line 79
    :cond_2
    :goto_1
    iget-object v7, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 84
    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 86
    move-result v7

    .line 89
    if-lez v7, :cond_3

    .line 90
    goto :goto_2

    .line 92
    :cond_3
    if-eqz v7, :cond_4

    .line 93
    neg-int v7, v7

    .line 95
    add-int/lit8 v7, v7, -0x1

    .line 96
    iget-object v3, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 98
    aget v4, v3, v7

    .line 100
    add-int/lit8 v17, v7, -0x1

    .line 102
    aget v3, v3, v17

    .line 104
    sub-float/2addr v4, v3

    .line 106
    float-to-double v5, v4

    .line 107
    iget-object v4, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 108
    aget-wide v18, v4, v7

    .line 110
    aget-wide v20, v4, v17

    .line 112
    sub-double v18, v18, v20

    .line 114
    div-double v5, v5, v18

    .line 116
    mul-double/2addr v1, v5

    .line 118
    float-to-double v3, v3

    .line 119
    mul-double v5, v5, v20

    .line 120
    sub-double/2addr v3, v5

    .line 122
    add-double/2addr v3, v1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const-wide/16 v3, 0x0

    .line 125
    :goto_2
    add-double/2addr v3, v13

    .line 127
    iget v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 128
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    .line 130
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 135
    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    .line 137
    packed-switch v1, :pswitch_data_0

    .line 139
    mul-double/2addr v3, v5

    .line 142
    mul-double/2addr v15, v5

    .line 143
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 144
    move-result-wide v1

    .line 147
    goto :goto_3

    .line 148
    :pswitch_0
    iget-object v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 149
    rem-double v2, v15, v11

    .line 151
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    .line 153
    move-result-wide v3

    .line 156
    goto :goto_4

    .line 157
    :pswitch_1
    mul-double v3, v3, v18

    .line 158
    mul-double v15, v15, v18

    .line 160
    add-double/2addr v15, v13

    .line 162
    rem-double v15, v15, v18

    .line 163
    sub-double/2addr v15, v13

    .line 165
    mul-double/2addr v3, v15

    .line 166
    goto :goto_4

    .line 167
    :pswitch_2
    const-wide v1, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    .line 168
    mul-double/2addr v3, v1

    .line 173
    mul-double/2addr v15, v5

    .line 174
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 175
    move-result-wide v1

    .line 178
    goto :goto_3

    .line 179
    :pswitch_3
    neg-double v1, v3

    .line 180
    mul-double v3, v1, v13

    .line 181
    goto :goto_4

    .line 183
    :pswitch_4
    mul-double/2addr v3, v13

    .line 184
    goto :goto_4

    .line 185
    :pswitch_5
    mul-double v3, v3, v18

    .line 186
    mul-double v15, v15, v18

    .line 188
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 190
    add-double/2addr v15, v1

    .line 192
    rem-double v15, v15, v18

    .line 193
    sub-double/2addr v15, v13

    .line 195
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->signum(D)D

    .line 196
    move-result-wide v1

    .line 199
    goto :goto_3

    .line 200
    :pswitch_6
    const-wide/16 v3, 0x0

    .line 201
    goto :goto_4

    .line 203
    :goto_3
    mul-double/2addr v3, v1

    .line 204
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 205
    const/4 v2, 0x0

    .line 207
    aget-wide v5, v1, v2

    .line 208
    const/4 v2, 0x2

    .line 210
    aget-wide v10, v1, v2

    .line 211
    mul-double/2addr v8, v10

    .line 213
    add-double/2addr v8, v5

    .line 214
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 215
    aget-wide v0, v0, v2

    .line 217
    mul-double/2addr v3, v0

    .line 219
    add-double/2addr v3, v8

    .line 220
    double-to-float v0, v3

    .line 221
    return v0

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 224
.end method

.method public bridge synthetic setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract setProperty(FLandroid/view/View;)V
.end method

.method public final setup()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    goto/16 :goto_7

    .line 12
    :cond_0
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    .line 14
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>()V

    .line 16
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    new-array v3, v2, [D

    .line 22
    const/4 v4, 0x3

    .line 24
    filled-new-array {v2, v4}, [I

    .line 25
    move-result-object v5

    .line 28
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 29
    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 34
    check-cast v5, [[D

    .line 35
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 37
    iget v7, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveShape:I

    .line 39
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveString:Ljava/lang/String;

    .line 41
    invoke-direct {v6, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;I)V

    .line 43
    iput-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    move v6, v2

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v7

    .line 57
    const/4 v8, 0x1

    .line 58
    const/4 v9, 0x2

    .line 59
    if-eqz v7, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 66
    iget v10, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 68
    float-to-double v11, v10

    .line 70
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    .line 71
    mul-double/2addr v11, v13

    .line 76
    aput-wide v11, v3, v6

    .line 77
    aget-object v11, v5, v6

    .line 79
    iget v12, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 81
    float-to-double v13, v12

    .line 83
    aput-wide v13, v11, v2

    .line 84
    iget v13, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 86
    float-to-double v14, v13

    .line 88
    aput-wide v14, v11, v8

    .line 89
    iget v14, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    .line 91
    move-object v15, v3

    .line 93
    float-to-double v2, v14

    .line 94
    aput-wide v2, v11, v9

    .line 95
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 97
    iget v3, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 99
    move-object v11, v5

    .line 101
    int-to-double v4, v3

    .line 102
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 103
    div-double v4, v4, v16

    .line 105
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 107
    aput-wide v4, v3, v6

    .line 109
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 111
    aput v10, v3, v6

    .line 113
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 115
    aput v13, v3, v6

    .line 117
    iget-object v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 119
    aput v14, v3, v6

    .line 121
    iget-object v2, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 123
    aput v12, v2, v6

    .line 125
    add-int/2addr v6, v8

    .line 127
    move-object v5, v11

    .line 128
    move-object v3, v15

    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v4, 0x3

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    move-object v15, v3

    .line 133
    move-object v11, v5

    .line 134
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 135
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 137
    array-length v2, v1

    .line 139
    const/4 v3, 0x3

    .line 140
    filled-new-array {v2, v3}, [I

    .line 141
    move-result-object v2

    .line 144
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 145
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 150
    check-cast v2, [[D

    .line 151
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 153
    array-length v4, v3

    .line 155
    add-int/2addr v4, v9

    .line 156
    new-array v4, v4, [D

    .line 157
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 159
    array-length v4, v3

    .line 161
    add-int/2addr v4, v9

    .line 162
    new-array v4, v4, [D

    .line 163
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 165
    const/4 v4, 0x0

    .line 167
    aget-wide v5, v1, v4

    .line 168
    const-wide/16 v12, 0x0

    .line 170
    cmpl-double v5, v5, v12

    .line 172
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 174
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 176
    if-lez v5, :cond_2

    .line 178
    aget v5, v6, v4

    .line 180
    invoke-virtual {v7, v12, v13, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 182
    :cond_2
    array-length v4, v1

    .line 185
    sub-int/2addr v4, v8

    .line 186
    aget-wide v16, v1, v4

    .line 187
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 189
    cmpg-double v5, v16, v12

    .line 191
    if-gez v5, :cond_3

    .line 193
    aget v4, v6, v4

    .line 195
    invoke-virtual {v7, v12, v13, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 197
    :cond_3
    const/4 v4, 0x0

    .line 200
    :goto_1
    array-length v5, v2

    .line 201
    if-ge v4, v5, :cond_4

    .line 202
    aget-object v5, v2, v4

    .line 204
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 206
    aget v10, v10, v4

    .line 208
    float-to-double v12, v10

    .line 210
    const/4 v10, 0x0

    .line 211
    aput-wide v12, v5, v10

    .line 212
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 214
    aget v10, v10, v4

    .line 216
    float-to-double v12, v10

    .line 218
    aput-wide v12, v5, v8

    .line 219
    aget v10, v3, v4

    .line 221
    float-to-double v12, v10

    .line 223
    aput-wide v12, v5, v9

    .line 224
    aget-wide v12, v1, v4

    .line 226
    aget v5, v6, v4

    .line 228
    invoke-virtual {v7, v12, v13, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 230
    add-int/lit8 v4, v4, 0x1

    .line 233
    goto :goto_1

    .line 235
    :cond_4
    const/4 v3, 0x0

    .line 236
    const-wide/16 v4, 0x0

    .line 237
    :goto_2
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 239
    array-length v9, v6

    .line 241
    if-ge v3, v9, :cond_5

    .line 242
    aget v6, v6, v3

    .line 244
    float-to-double v9, v6

    .line 246
    add-double/2addr v4, v9

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    goto :goto_2

    .line 250
    :cond_5
    move v3, v8

    .line 251
    const-wide/16 v9, 0x0

    .line 252
    :goto_3
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 254
    array-length v12, v6

    .line 256
    const/high16 v13, 0x40000000    # 2.0f

    .line 257
    if-ge v3, v12, :cond_6

    .line 259
    add-int/lit8 v12, v3, -0x1

    .line 261
    aget v14, v6, v12

    .line 263
    aget v6, v6, v3

    .line 265
    add-float/2addr v14, v6

    .line 267
    div-float/2addr v14, v13

    .line 268
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 269
    aget-wide v16, v6, v3

    .line 271
    aget-wide v12, v6, v12

    .line 273
    sub-double v16, v16, v12

    .line 275
    float-to-double v12, v14

    .line 277
    mul-double v16, v16, v12

    .line 278
    add-double v9, v16, v9

    .line 280
    add-int/lit8 v3, v3, 0x1

    .line 282
    goto :goto_3

    .line 284
    :cond_6
    const/4 v3, 0x0

    .line 285
    :goto_4
    iget-object v6, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 286
    array-length v12, v6

    .line 288
    if-ge v3, v12, :cond_7

    .line 289
    aget v12, v6, v3

    .line 291
    div-double v13, v4, v9

    .line 293
    double-to-float v13, v13

    .line 295
    mul-float/2addr v12, v13

    .line 296
    aput v12, v6, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    .line 299
    const/high16 v13, 0x40000000    # 2.0f

    .line 301
    goto :goto_4

    .line 303
    :cond_7
    iget-object v3, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 304
    const-wide/16 v4, 0x0

    .line 306
    const/4 v6, 0x0

    .line 308
    aput-wide v4, v3, v6

    .line 309
    move v3, v8

    .line 311
    :goto_5
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 312
    array-length v5, v4

    .line 314
    if-ge v3, v5, :cond_8

    .line 315
    add-int/lit8 v5, v3, -0x1

    .line 317
    aget v6, v4, v5

    .line 319
    aget v4, v4, v3

    .line 321
    add-float/2addr v6, v4

    .line 323
    const/high16 v4, 0x40000000    # 2.0f

    .line 324
    div-float/2addr v6, v4

    .line 326
    iget-object v9, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 327
    aget-wide v12, v9, v3

    .line 329
    aget-wide v9, v9, v5

    .line 331
    sub-double/2addr v12, v9

    .line 333
    iget-object v9, v7, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 334
    aget-wide v16, v9, v5

    .line 336
    float-to-double v5, v6

    .line 338
    mul-double/2addr v12, v5

    .line 339
    add-double v12, v12, v16

    .line 340
    aput-wide v12, v9, v3

    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 344
    goto :goto_5

    .line 346
    :cond_8
    array-length v3, v1

    .line 347
    if-le v3, v8, :cond_9

    .line 348
    const/4 v3, 0x0

    .line 350
    invoke-static {v3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 351
    move-result-object v1

    .line 354
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 355
    goto :goto_6

    .line 357
    :cond_9
    const/4 v3, 0x0

    .line 358
    const/4 v1, 0x0

    .line 359
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 360
    :goto_6
    move-object v0, v15

    .line 362
    invoke-static {v3, v0, v11}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 363
    :goto_7
    return-void
    .line 366
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->toString$androidx$constraintlayout$core$motion$utils$KeyCycleOscillator()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final toString$androidx$constraintlayout$core$motion$utils$KeyCycleOscillator()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mType:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    const-string v2, "##.##"

    .line 6
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 27
    const-string v3, "["

    .line 29
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 34
    iget v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, " , "

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 45
    float-to-double v2, v2

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "] "

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v0
    .line 65
.end method
