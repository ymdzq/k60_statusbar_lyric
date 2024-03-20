.class public Lcom/android/settings/display/CaculateTwilightUtil;
.super Ljava/lang/Object;
.source "CaculateTwilightUtil.java"


# instance fields
.field public mState:I

.field public mSunrise:I

.field public mSunset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatToMinuteOfDay(J)I
    .locals 2

    const/4 p0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    .line 131
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0xc

    .line 132
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move p1, p0

    .line 135
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParseException;->printStackTrace()V

    :goto_1
    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculate twilight time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " latitude:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " longitude:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CaculateTwilightUtil"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v7, 0xdc6d62da00L

    sub-long v9, v1, v7

    long-to-float v9, v9

    const v10, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v9, v10

    const v10, 0x3c8ceb25

    mul-float/2addr v10, v9

    const v11, 0x40c7ae92

    add-float/2addr v10, v11

    float-to-double v11, v10

    const-wide v13, 0x3fa11c5fc0000000L    # 0.03341960161924362

    .line 74
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v15, v11

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v10

    float-to-double v13, v13

    .line 75
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide v17, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double v13, v13, v17

    add-double/2addr v15, v13

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v10, v13

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide v17, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double v13, v13, v17

    add-double/2addr v15, v13

    const-wide v13, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v15, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v15, v13

    neg-double v5, v5

    const-wide v13, 0x4076800000000000L    # 360.0

    div-double/2addr v5, v13

    const v10, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v9, v10

    float-to-double v13, v9

    sub-double/2addr v13, v5

    .line 82
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-float v9, v13

    add-float/2addr v9, v10

    float-to-double v9, v9

    add-double/2addr v9, v5

    const-wide v5, 0x3f75b573eab367a1L    # 0.0053

    .line 83
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v15

    .line 84
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v11, -0x4083bcd35a858794L    # -0.0069

    mul-double/2addr v5, v11

    add-double/2addr v9, v5

    .line 87
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v11, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    const-wide v11, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v3, v11

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    const-wide/16 v13, 0x0

    sub-double/2addr v13, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    div-double/2addr v13, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 96
    iput v4, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mState:I

    return-void

    :cond_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v3, v13, v5

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    .line 101
    iput v5, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mState:I

    return-void

    .line 107
    :cond_1
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v11, v13

    double-to-float v3, v11

    float-to-double v11, v3

    add-double v13, v9, v11

    const-wide v15, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v13, v15

    .line 109
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    add-long/2addr v13, v7

    sub-double/2addr v9, v11

    mul-double/2addr v9, v15

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v9, v7

    cmp-long v3, v9, v1

    if-gez v3, :cond_2

    cmp-long v1, v13, v1

    if-lez v1, :cond_2

    .line 113
    iput v5, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mState:I

    goto :goto_0

    .line 115
    :cond_2
    iput v4, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mState:I

    .line 117
    :goto_0
    invoke-direct {v0, v9, v10}, Lcom/android/settings/display/CaculateTwilightUtil;->formatToMinuteOfDay(J)I

    move-result v1

    iput v1, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mSunrise:I

    .line 118
    invoke-direct {v0, v13, v14}, Lcom/android/settings/display/CaculateTwilightUtil;->formatToMinuteOfDay(J)I

    move-result v1

    iput v1, v0, Lcom/android/settings/display/CaculateTwilightUtil;->mSunset:I

    return-void
.end method
