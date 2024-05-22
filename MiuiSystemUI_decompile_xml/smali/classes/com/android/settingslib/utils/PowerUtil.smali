.class public abstract Lcom/android/settingslib/utils/PowerUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FIFTEEN_MINUTES_MILLIS:J

.field public static final ONE_DAY_MILLIS:J

.field public static final ONE_HOUR_MILLIS:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x7

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    const-wide/16 v1, 0xf

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 11
    move-result-wide v1

    .line 14
    sput-wide v1, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 17
    const-wide/16 v2, 0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 21
    move-result-wide v4

    .line 24
    sput-wide v4, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    .line 25
    const-wide/16 v4, 0x2

    .line 27
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 29
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 34
    move-result-wide v4

    .line 37
    sput-wide v4, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 40
    return-void
    .line 43
.end method

.method public static getBatteryRemainingShortStringFormatted(JLandroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p0, v0

    .line 4
    if-gtz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    .line 10
    cmp-long v0, p0, v0

    .line 12
    const-wide/16 v1, 0x2

    .line 14
    if-gtz v0, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v3

    .line 21
    add-long/2addr v3, p0

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 23
    move-result-wide p0

    .line 26
    sget-wide v3, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 29
    move-result-wide v3

    .line 32
    rem-long v5, p0, v3

    .line 33
    div-long v0, v3, v1

    .line 35
    cmp-long v0, v5, v0

    .line 37
    sub-long/2addr p0, v5

    .line 39
    if-gez v0, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    add-long/2addr p0, v3

    .line 43
    :goto_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    const p1, 0x7f130905    # @string/power_discharge_by_only_short 'Until %1$s'

    .line 64
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 76
    move-result-wide p0

    .line 79
    sget-wide v3, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 82
    move-result-wide v3

    .line 85
    rem-long v5, p0, v3

    .line 86
    div-long v0, v3, v1

    .line 88
    cmp-long v0, v5, v0

    .line 90
    sub-long/2addr p0, v5

    .line 92
    if-gez v0, :cond_3

    .line 93
    goto :goto_1

    .line 95
    :cond_3
    add-long/2addr p0, v3

    .line 96
    :goto_1
    long-to-double p0, p0

    .line 97
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 98
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 103
    div-double/2addr p0, v1

    .line 108
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 109
    move-result-wide p0

    .line 112
    double-to-int p0, p0

    .line 113
    add-int/lit8 p0, p0, 0x1e

    .line 114
    const p1, 0x15180

    .line 116
    const/4 v1, 0x0

    .line 119
    if-lt p0, p1, :cond_4

    .line 120
    div-int v2, p0, p1

    .line 122
    mul-int/2addr p1, v2

    .line 124
    sub-int/2addr p0, p1

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move v2, v1

    .line 127
    :goto_2
    const/16 p1, 0xe10

    .line 128
    if-lt p0, p1, :cond_5

    .line 130
    div-int/lit16 p1, p0, 0xe10

    .line 132
    mul-int/lit16 v3, p1, 0xe10

    .line 134
    sub-int/2addr p0, v3

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move p1, v1

    .line 138
    :goto_3
    const/16 v3, 0x3c

    .line 139
    if-lt p0, v3, :cond_6

    .line 141
    div-int/2addr p0, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    move p0, v1

    .line 145
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    .line 146
    const/4 v4, 0x4

    .line 148
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    if-lez v2, :cond_7

    .line 152
    new-instance v4, Landroid/icu/util/Measure;

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v2

    .line 159
    sget-object v5, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    .line 160
    invoke-direct {v4, v2, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 162
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_7
    if-lez p1, :cond_8

    .line 168
    new-instance v2, Landroid/icu/util/Measure;

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object p1

    .line 175
    sget-object v4, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    .line 176
    invoke-direct {v2, p1, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 178
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_8
    if-lez p0, :cond_9

    .line 184
    new-instance p1, Landroid/icu/util/Measure;

    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v2

    .line 191
    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    .line 192
    invoke-direct {p1, v2, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 194
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 200
    move-result p1

    .line 203
    if-nez p1, :cond_a

    .line 204
    new-instance p1, Landroid/icu/util/Measure;

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v2

    .line 211
    sget-object v4, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    .line 212
    invoke-direct {p1, v2, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 214
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 220
    move-result p1

    .line 223
    new-array p1, p1, [Landroid/icu/util/Measure;

    .line 224
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 226
    move-result-object p1

    .line 229
    check-cast p1, [Landroid/icu/util/Measure;

    .line 230
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 236
    move-result-object v2

    .line 239
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 240
    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 242
    invoke-static {v2, v3}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    .line 244
    move-result-object v2

    .line 247
    invoke-virtual {v2, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    .line 248
    move-result-object v2

    .line 251
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    array-length v2, p1

    .line 255
    const/4 v3, 0x1

    .line 256
    if-ne v2, v3, :cond_b

    .line 257
    sget-object v2, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    .line 259
    aget-object p1, p1, v1

    .line 261
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    .line 263
    move-result-object p1

    .line 266
    invoke-virtual {v2, p1}, Landroid/icu/util/TimeUnit;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result p1

    .line 270
    if-eqz p1, :cond_b

    .line 271
    new-instance p1, Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 273
    invoke-direct {p1}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    .line 275
    int-to-long v2, p0

    .line 278
    invoke-virtual {p1, v2, v3}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 279
    move-result-object p0

    .line 282
    const-string p1, "minute"

    .line 283
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 285
    move-result-object p0

    .line 288
    invoke-virtual {p0}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    .line 289
    move-result-object p0

    .line 292
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 293
    move-result p1

    .line 296
    const/16 v2, 0x21

    .line 297
    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_b
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 302
    move-result-object p0

    .line 305
    const p1, 0x7f13090c    # @string/power_remaining_duration_only_short '%1$s'

    .line 306
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    move-result-object p0

    .line 312
    return-object p0
    .line 313
.end method
