.class public Lmiuix/animation/utils/VelocityMonitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final MAX_DELTA:J = 0x64L

.field private static final MAX_RECORD_COUNT:I = 0xa

.field private static final MIN_DELTA:J = 0x1eL

.field private static final TIME_THRESHOLD:J = 0x32L


# instance fields
.field private mHistory:Ljava/util/LinkedList;

.field private mMaxDeltaTime:Ljava/lang/Long;

.field private mMinDeltaTime:Ljava/lang/Long;

.field private mVelocity:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x1e

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    .line 11
    const-wide/16 v0, 0x64

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    .line 21
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 26
    return-void
    .line 28
.end method

.method private addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 9
    move-result p1

    .line 12
    const/16 v0, 0xa

    .line 13
    if-le p1, v0, :cond_0

    .line 15
    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->updateVelocity()V

    .line 23
    return-void
    .line 26
.end method

.method private calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v0, p2

    .line 4
    move-object/from16 v1, p3

    .line 6
    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 8
    aget-wide v8, v2, p1

    .line 10
    iget-wide v10, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 12
    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 14
    aget-wide v3, v0, p1

    .line 16
    iget-wide v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 18
    sub-long v5, v10, v0

    .line 20
    move-object/from16 v0, p0

    .line 22
    move-wide v1, v8

    .line 24
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    .line 25
    move-result v0

    .line 28
    float-to-double v12, v0

    .line 29
    iget-object v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 32
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x2

    .line 36
    const/4 v1, 0x0

    .line 38
    :goto_0
    const/4 v14, 0x0

    .line 39
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 40
    if-ltz v0, :cond_3

    .line 43
    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 52
    iget-wide v1, v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 54
    sub-long v16, v10, v1

    .line 56
    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 60
    move-result-wide v1

    .line 63
    cmp-long v1, v16, v1

    .line 64
    if-lez v1, :cond_2

    .line 66
    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 70
    move-result-wide v1

    .line 73
    cmp-long v1, v16, v1

    .line 74
    if-gez v1, :cond_2

    .line 76
    iget-object v0, v5, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 78
    aget-wide v3, v0, p1

    .line 80
    move-object/from16 v0, p0

    .line 82
    move-wide v1, v8

    .line 84
    move-object/from16 v18, v5

    .line 85
    move-wide/from16 v5, v16

    .line 87
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    .line 89
    move-result v0

    .line 92
    float-to-double v1, v0

    .line 93
    mul-double v3, v12, v1

    .line 94
    const-wide/16 v5, 0x0

    .line 96
    cmpl-double v3, v3, v5

    .line 98
    if-lez v3, :cond_1

    .line 100
    cmpl-float v0, v0, v14

    .line 102
    if-lez v0, :cond_0

    .line 104
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 106
    move-result-wide v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 111
    move-result-wide v0

    .line 114
    :goto_1
    double-to-float v0, v0

    .line 115
    :cond_1
    move-object/from16 v1, v18

    .line 116
    goto :goto_2

    .line 118
    :cond_2
    move-object/from16 v18, v5

    .line 119
    add-int/lit8 v0, v0, -0x1

    .line 121
    move-object/from16 v1, v18

    .line 123
    goto :goto_0

    .line 125
    :cond_3
    move v0, v15

    .line 126
    :goto_2
    cmpl-float v2, v0, v15

    .line 127
    if-nez v2, :cond_4

    .line 129
    if-eqz v1, :cond_4

    .line 131
    iget-wide v2, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 133
    sub-long v5, v10, v2

    .line 135
    iget-object v2, v7, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 139
    move-result-wide v2

    .line 142
    cmp-long v2, v5, v2

    .line 143
    if-lez v2, :cond_4

    .line 145
    iget-object v2, v7, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 149
    move-result-wide v2

    .line 152
    cmp-long v2, v5, v2

    .line 153
    if-gez v2, :cond_4

    .line 155
    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 157
    aget-wide v3, v0, p1

    .line 159
    move-object/from16 v0, p0

    .line 161
    move-wide v1, v8

    .line 163
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    .line 164
    move-result v0

    .line 167
    :cond_4
    cmpl-float v1, v0, v15

    .line 168
    if-nez v1, :cond_5

    .line 170
    goto :goto_3

    .line 172
    :cond_5
    move v14, v0

    .line 173
    :goto_3
    return v14
    .line 174
.end method

.method private clearVelocity()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    .locals 2

    .line 1
    new-instance p0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;-><init>(Lmiuix/animation/utils/VelocityMonitor$1;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    .line 12
    return-object p0
    .line 14
.end method

.method private getVelocity(DDJ)F
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long p0, p5, v0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sub-double/2addr p1, p3

    long-to-float p0, p5

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p0, p3

    float-to-double p3, p0

    div-double p0, p1, p3

    :goto_0
    double-to-float p0, p0

    return p0
.end method

.method private updateVelocity()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-lt v0, v1, :cond_2

    .line 9
    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 11
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 17
    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 19
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    .line 26
    iget-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    .line 28
    if-eqz v1, :cond_0

    .line 30
    array-length v1, v1

    .line 32
    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 33
    array-length v3, v3

    .line 35
    if-ge v1, v3, :cond_1

    .line 36
    :cond_0
    iget-object v1, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 38
    array-length v1, v1

    .line 40
    new-array v1, v1, [F

    .line 41
    iput-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 46
    array-length v3, v3

    .line 48
    if-ge v1, v3, :cond_3

    .line 49
    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    .line 51
    invoke-direct {p0, v1, v2, v0}, Lmiuix/animation/utils/VelocityMonitor;->calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F

    .line 53
    move-result v4

    .line 56
    aput v4, v3, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    .line 62
    :cond_3
    return-void
    .line 65
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    .line 7
    return-void
    .line 10
.end method

.method public getVelocity(I)F
    .locals 6

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-wide v4, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object p0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, p1, :cond_1

    .line 5
    aget p0, p0, p1

    return p0

    :cond_1
    return v3
.end method

.method public setMaxFeedbackTime(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mMaxDeltaTime:Ljava/lang/Long;

    .line 6
    return-void
    .line 8
.end method

.method public setMinFeedbackTime(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mMinDeltaTime:Ljava/lang/Long;

    .line 6
    return-void
    .line 8
.end method

.method public varargs update([D)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    .line 9
    iput-object p1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    .line 10
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs update([F)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    .line 3
    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget v3, p1, v1

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_2
    :goto_1
    return-void
.end method
