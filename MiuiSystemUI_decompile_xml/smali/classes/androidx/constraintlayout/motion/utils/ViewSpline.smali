.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCount:I

.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mTimePoints:[I

.field public mType:Ljava/lang/String;

.field public mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0xa

    .line 5
    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 9
    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final get(F)F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    float-to-double v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D)D

    .line 5
    move-result-wide p0

    .line 8
    double-to-float p0, p0

    .line 9
    return p0
    .line 10
.end method

.method public setPoint(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 2
    array-length v1, v0

    .line 4
    iget v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 5
    add-int/lit8 v2, v2, 0x1

    .line 7
    if-ge v1, v2, :cond_0

    .line 9
    array-length v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 20
    array-length v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x2

    .line 23
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 31
    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 33
    aput p2, v0, v1

    .line 35
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 37
    aput p1, p2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 43
    return-void
    .line 45
.end method

.method public abstract setProperty(FLandroid/view/View;)V
.end method

.method public setup(I)V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto/16 :goto_5

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 10
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v0, v3

    .line 13
    array-length v4, v1

    .line 14
    add-int/lit8 v4, v4, 0xa

    .line 15
    new-array v4, v4, [I

    .line 17
    const/4 v5, 0x0

    .line 19
    aput v0, v4, v5

    .line 20
    aput v5, v4, v3

    .line 22
    const/4 v0, 0x2

    .line 24
    :cond_1
    :goto_0
    if-lez v0, :cond_4

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    aget v6, v4, v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 31
    aget v7, v4, v0

    .line 33
    if-ge v6, v7, :cond_1

    .line 35
    aget v8, v1, v7

    .line 37
    move v9, v6

    .line 39
    move v10, v9

    .line 40
    :goto_1
    if-ge v9, v7, :cond_3

    .line 41
    aget v11, v1, v9

    .line 43
    if-gt v11, v8, :cond_2

    .line 45
    aget v12, v1, v10

    .line 47
    aput v11, v1, v10

    .line 49
    aput v12, v1, v9

    .line 51
    aget v11, v2, v10

    .line 53
    aget v12, v2, v9

    .line 55
    aput v12, v2, v10

    .line 57
    aput v11, v2, v9

    .line 59
    add-int/lit8 v10, v10, 0x1

    .line 61
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_3
    aget v8, v1, v10

    .line 66
    aget v9, v1, v7

    .line 68
    aput v9, v1, v10

    .line 70
    aput v8, v1, v7

    .line 72
    aget v8, v2, v10

    .line 74
    aget v9, v2, v7

    .line 76
    aput v9, v2, v10

    .line 78
    aput v8, v2, v7

    .line 80
    add-int/lit8 v8, v0, 0x1

    .line 82
    add-int/lit8 v9, v10, -0x1

    .line 84
    aput v9, v4, v0

    .line 86
    add-int/lit8 v0, v8, 0x1

    .line 88
    aput v6, v4, v8

    .line 90
    add-int/lit8 v6, v0, 0x1

    .line 92
    aput v7, v4, v0

    .line 94
    add-int/lit8 v0, v6, 0x1

    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 98
    aput v10, v4, v6

    .line 100
    goto :goto_0

    .line 102
    :cond_4
    move v0, v3

    .line 103
    move v1, v0

    .line 104
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 105
    if-ge v0, v2, :cond_6

    .line 107
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 109
    add-int/lit8 v4, v0, -0x1

    .line 111
    aget v4, v2, v4

    .line 113
    aget v2, v2, v0

    .line 115
    if-eq v4, v2, :cond_5

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 121
    goto :goto_2

    .line 123
    :cond_6
    new-array v0, v1, [D

    .line 124
    filled-new-array {v1, v3}, [I

    .line 126
    move-result-object v1

    .line 129
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 130
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, [[D

    .line 136
    move v2, v5

    .line 138
    move v3, v2

    .line 139
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 140
    if-ge v2, v4, :cond_8

    .line 142
    if-lez v2, :cond_7

    .line 144
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 146
    aget v6, v4, v2

    .line 148
    add-int/lit8 v7, v2, -0x1

    .line 150
    aget v4, v4, v7

    .line 152
    if-ne v6, v4, :cond_7

    .line 154
    goto :goto_4

    .line 156
    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 157
    aget v4, v4, v2

    .line 159
    int-to-double v6, v4

    .line 161
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 162
    mul-double/2addr v6, v8

    .line 167
    aput-wide v6, v0, v3

    .line 168
    aget-object v4, v1, v3

    .line 170
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 172
    aget v6, v6, v2

    .line 174
    float-to-double v6, v6

    .line 176
    aput-wide v6, v4, v5

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 179
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 181
    goto :goto_3

    .line 183
    :cond_8
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 184
    move-result-object p1

    .line 187
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 188
    :goto_5
    return-void
    .line 190
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;->toString$androidx$constraintlayout$core$motion$utils$SplineSet()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final toString$androidx$constraintlayout$core$motion$utils$SplineSet()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mType:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    const-string v2, "##.##"

    .line 6
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCount:I

    .line 12
    if-ge v2, v3, :cond_0

    .line 14
    const-string v3, "["

    .line 16
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mTimePoints:[I

    .line 22
    aget v3, v3, v2

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, " , "

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewSpline;->mValues:[F

    .line 34
    aget v3, v3, v2

    .line 36
    float-to-double v3, v3

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "] "

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
    .line 58
.end method
