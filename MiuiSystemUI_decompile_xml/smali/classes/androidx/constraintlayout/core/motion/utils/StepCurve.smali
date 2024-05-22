.class public final Landroidx/constraintlayout/core/motion/utils/StepCurve;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 6
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 11
    move-result v2

    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    new-array v2, v2, [D

    .line 17
    const/16 v3, 0x28

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 21
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    add-int/2addr v3, v4

    .line 26
    const/16 v5, 0x2c

    .line 27
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    .line 29
    move-result v6

    .line 32
    const/4 v7, 0x0

    .line 33
    move v8, v7

    .line 34
    :goto_0
    const/4 v9, -0x1

    .line 35
    if-eq v6, v9, :cond_0

    .line 36
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 45
    add-int/lit8 v9, v8, 0x1

    .line 46
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 48
    move-result-wide v10

    .line 51
    aput-wide v10, v2, v8

    .line 52
    add-int/lit8 v3, v6, 0x1

    .line 54
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    .line 56
    move-result v6

    .line 59
    move v8, v9

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/16 v5, 0x29

    .line 62
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    .line 64
    move-result v5

    .line 67
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 75
    add-int/lit8 v3, v8, 0x1

    .line 76
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 78
    move-result-wide v5

    .line 81
    aput-wide v5, v2, v8

    .line 82
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 84
    move-result-object v1

    .line 87
    array-length v2, v1

    .line 88
    mul-int/lit8 v2, v2, 0x3

    .line 89
    add-int/lit8 v2, v2, -0x2

    .line 91
    array-length v3, v1

    .line 93
    sub-int/2addr v3, v4

    .line 94
    int-to-double v5, v3

    .line 95
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 96
    div-double v5, v8, v5

    .line 98
    filled-new-array {v2, v4}, [I

    .line 100
    move-result-object v4

    .line 103
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 104
    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 109
    check-cast v4, [[D

    .line 110
    new-array v2, v2, [D

    .line 112
    move v10, v7

    .line 114
    :goto_1
    array-length v11, v1

    .line 115
    if-ge v10, v11, :cond_2

    .line 116
    aget-wide v11, v1, v10

    .line 118
    add-int v13, v10, v3

    .line 120
    aget-object v14, v4, v13

    .line 122
    aput-wide v11, v14, v7

    .line 124
    int-to-double v14, v10

    .line 126
    mul-double/2addr v14, v5

    .line 127
    aput-wide v14, v2, v13

    .line 128
    if-lez v10, :cond_1

    .line 130
    mul-int/lit8 v13, v3, 0x2

    .line 132
    add-int/2addr v13, v10

    .line 134
    aget-object v16, v4, v13

    .line 135
    add-double v17, v11, v8

    .line 137
    aput-wide v17, v16, v7

    .line 139
    add-double v16, v14, v8

    .line 141
    aput-wide v16, v2, v13

    .line 143
    add-int/lit8 v13, v10, -0x1

    .line 145
    aget-object v16, v4, v13

    .line 147
    sub-double/2addr v11, v8

    .line 149
    sub-double/2addr v11, v5

    .line 150
    aput-wide v11, v16, v7

    .line 151
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 153
    add-double/2addr v14, v11

    .line 155
    sub-double/2addr v14, v5

    .line 156
    aput-wide v14, v2, v13

    .line 157
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 159
    goto :goto_1

    .line 161
    :cond_2
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 162
    invoke-direct {v1, v2, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 164
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    const-string v4, " 0 "

    .line 171
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-wide/16 v4, 0x0

    .line 176
    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    .line 178
    move-result-wide v4

    .line 181
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    const-string v4, " 1 "

    .line 196
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    .line 201
    move-result-wide v4

    .line 204
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 215
    return-void
    .line 217
.end method


# virtual methods
.method public final get(D)D
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    .line 4
    move-result-wide p0

    .line 7
    return-wide p0
    .line 8
.end method

.method public final getDiff(D)D
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    .line 4
    move-result-wide p0

    .line 7
    return-wide p0
    .line 8
.end method
