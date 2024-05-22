.class public abstract Lmiuix/pickerwidget/date/DateUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CALENDAR_POOL:Lmiuix/core/util/Pools$SoftReferencePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/DateUtils$1;

    .line 2
    invoke-direct {v0}, Lmiuix/pickerwidget/date/DateUtils$1;-><init>()V

    .line 4
    sget-object v1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 7
    new-instance v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 12
    sput-object v1, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 15
    return-void
    .line 17
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 2
    invoke-virtual {v0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move-wide v4, p1

    move v6, p3

    .line 3
    invoke-static/range {v2 .. v7}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)V
    .locals 16

    move-object/from16 v0, p0

    and-int/lit8 v1, p4, 0x10

    const/16 v2, 0x10

    if-nez v1, :cond_1

    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_1

    .line 5
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v1, p4, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p4

    :goto_1
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    const/16 v5, 0x800

    if-ne v3, v4, :cond_9

    and-int/lit16 v3, v1, 0x380

    if-eqz v3, :cond_5

    and-int/lit8 v3, v1, 0xf

    if-eqz v3, :cond_3

    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_2

    const v3, 0x7f130468    # @string/fmt_weekday_date_time_timezone 'W, D T z'

    goto/16 :goto_2

    :cond_2
    const v3, 0x7f130467    # @string/fmt_weekday_date_time 'W, D T'

    goto/16 :goto_2

    :cond_3
    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_4

    const v3, 0x7f130469    # @string/fmt_weekday_date_timezone 'W, D z'

    goto/16 :goto_2

    :cond_4
    const v3, 0x7f130466    # @string/fmt_weekday_date 'W, D'

    goto :goto_2

    :cond_5
    and-int/lit8 v3, v1, 0xf

    if-eqz v3, :cond_7

    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_6

    const v3, 0x7f13046d    # @string/fmt_weekday_time_timezone 'W T z'

    goto :goto_2

    :cond_6
    const v3, 0x7f13046c    # @string/fmt_weekday_time 'W T'

    goto :goto_2

    :cond_7
    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_8

    const v3, 0x7f13046e    # @string/fmt_weekday_timezone 'W z'

    goto :goto_2

    :cond_8
    const v3, 0x7f130465    # @string/fmt_weekday 'W'

    goto :goto_2

    :cond_9
    and-int/lit16 v3, v1, 0x380

    if-eqz v3, :cond_d

    and-int/lit8 v3, v1, 0xf

    if-eqz v3, :cond_b

    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_a

    const v3, 0x7f13044d    # @string/fmt_date_time_timezone 'D T z'

    goto :goto_2

    :cond_a
    const v3, 0x7f13044c    # @string/fmt_date_time 'D T'

    goto :goto_2

    :cond_b
    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_c

    const v3, 0x7f13044e    # @string/fmt_date_timezone 'D z'

    goto :goto_2

    :cond_c
    const v3, 0x7f13043c    # @string/fmt_date 'D'

    goto :goto_2

    :cond_d
    and-int/lit8 v3, v1, 0xf

    if-eqz v3, :cond_f

    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_e

    const v3, 0x7f130463    # @string/fmt_time_timezone 'T z'

    goto :goto_2

    :cond_e
    const v3, 0x7f130450    # @string/fmt_time 'T'

    goto :goto_2

    :cond_f
    and-int/lit16 v3, v1, 0x800

    if-ne v3, v5, :cond_10

    const v3, 0x7f130464    # @string/fmt_timezone 'z'

    goto :goto_2

    :cond_10
    const v3, 0x7f1303d1    # @string/empty ''

    .line 6
    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 8
    invoke-virtual {v4}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    .line 9
    sget-object v5, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$SoftReferencePool;

    invoke-virtual {v5}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/pickerwidget/date/Calendar;

    move-object/from16 v7, p5

    .line 10
    invoke-virtual {v6, v7}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-wide/from16 v7, p2

    .line 11
    invoke-virtual {v6, v7, v8}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3e

    .line 13
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x44

    const-string v11, "no any time date"

    if-eq v9, v10, :cond_2a

    const/16 v10, 0x54

    if-eq v9, v10, :cond_13

    const/16 v10, 0x57

    if-eq v9, v10, :cond_11

    .line 14
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_11
    and-int/lit16 v9, v1, 0x2000

    const/16 v10, 0x2000

    if-ne v9, v10, :cond_12

    const v9, 0x7f13046b    # @string/fmt_weekday_short 'E'

    goto :goto_4

    :cond_12
    const v9, 0x7f13046a    # @string/fmt_weekday_long 'EEEE'

    .line 15
    :goto_4
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_13
    and-int/lit16 v9, v1, 0x4000

    const/16 v10, 0x4000

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v9, v10, :cond_16

    and-int/lit8 v9, v1, 0x1

    if-ne v9, v13, :cond_14

    const/16 v9, 0x16

    .line 16
    invoke-virtual {v6, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v9

    if-nez v9, :cond_16

    :cond_14
    and-int/lit8 v9, v1, 0xe

    if-eqz v9, :cond_16

    and-int/lit8 v9, v1, -0x2

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v12, :cond_15

    const/16 v10, 0x15

    .line 17
    invoke-virtual {v6, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_17

    :cond_15
    and-int/lit8 v10, v9, 0xc

    if-eqz v10, :cond_17

    and-int/lit8 v9, v9, -0x3

    const/16 v10, 0x14

    .line 18
    invoke-virtual {v6, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_17

    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_17

    and-int/lit8 v9, v9, -0x5

    goto :goto_5

    :cond_16
    move v9, v1

    :cond_17
    :goto_5
    and-int/lit8 v10, v9, 0x8

    const/16 v14, 0x8

    const/4 v15, 0x4

    if-ne v10, v14, :cond_23

    and-int/lit8 v10, v9, 0x10

    if-ne v10, v2, :cond_1f

    and-int/lit8 v10, v9, 0x40

    const/16 v11, 0x40

    if-ne v10, v11, :cond_1b

    and-int/lit8 v10, v9, 0x4

    if-ne v10, v15, :cond_1a

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v12, :cond_19

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v13, :cond_18

    const v9, 0x7f130455    # @string/fmt_time_12hour_minute_second_millis 'h:mm:ss.S'

    goto/16 :goto_6

    :cond_18
    const v9, 0x7f130454    # @string/fmt_time_12hour_minute_second 'h:mm:ms'

    goto/16 :goto_6

    :cond_19
    const v9, 0x7f130452    # @string/fmt_time_12hour_minute 'h:mm'

    goto/16 :goto_6

    :cond_1a
    const v9, 0x7f130451    # @string/fmt_time_12hour 'h 'o''clock''

    goto/16 :goto_6

    :cond_1b
    and-int/lit8 v10, v9, 0x4

    if-ne v10, v15, :cond_1e

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v12, :cond_1d

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v13, :cond_1c

    const v9, 0x7f130456    # @string/fmt_time_12hour_minute_second_millis_pm 'h:mm:ss.S a'

    goto :goto_6

    :cond_1c
    const v9, 0x7f130457    # @string/fmt_time_12hour_minute_second_pm 'h:mm:ss a'

    goto :goto_6

    :cond_1d
    const v9, 0x7f130453    # @string/fmt_time_12hour_minute_pm 'h:mm a'

    goto :goto_6

    :cond_1e
    const v9, 0x7f130458    # @string/fmt_time_12hour_pm 'ha'

    goto :goto_6

    :cond_1f
    and-int/lit8 v10, v9, 0x4

    if-ne v10, v15, :cond_22

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v12, :cond_21

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v13, :cond_20

    const v9, 0x7f13045c    # @string/fmt_time_24hour_minute_second_millis 'H:mm:ss.S'

    goto :goto_6

    :cond_20
    const v9, 0x7f13045b    # @string/fmt_time_24hour_minute_second 'H:mm:ss'

    goto :goto_6

    :cond_21
    const v9, 0x7f13045a    # @string/fmt_time_24hour_minute 'H:mm'

    goto :goto_6

    :cond_22
    const v9, 0x7f130459    # @string/fmt_time_24hour 'H 'o''clock''

    goto :goto_6

    :cond_23
    and-int/lit8 v10, v9, 0x4

    if-ne v10, v15, :cond_26

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v12, :cond_25

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v13, :cond_24

    const v9, 0x7f130460    # @string/fmt_time_minute_second_millis 'm'min' s.S's''

    goto :goto_6

    :cond_24
    const v9, 0x7f13045f    # @string/fmt_time_minute_second 'm'min' s's''

    goto :goto_6

    :cond_25
    const v9, 0x7f13045e    # @string/fmt_time_minute 'm'min''

    goto :goto_6

    :cond_26
    and-int/lit8 v10, v9, 0x2

    and-int/lit8 v9, v9, 0x1

    if-ne v10, v12, :cond_28

    if-ne v9, v13, :cond_27

    const v9, 0x7f130462    # @string/fmt_time_second_millis 's.S's''

    goto :goto_6

    :cond_27
    const v9, 0x7f130461    # @string/fmt_time_second 's's''

    goto :goto_6

    :cond_28
    if-ne v9, v13, :cond_29

    const v9, 0x7f13045d    # @string/fmt_time_millis 'S'ms''

    .line 19
    :goto_6
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 20
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const v9, 0x8000

    and-int v10, v1, v9

    const/16 v12, 0x200

    const/16 v13, 0x100

    const/16 v14, 0x80

    if-ne v10, v9, :cond_31

    and-int/lit16 v9, v1, 0x200

    if-ne v9, v12, :cond_2d

    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_2c

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_2b

    const v9, 0x7f130447    # @string/fmt_date_numeric_year_month_day 'M-d-yyyy'

    goto/16 :goto_8

    :cond_2b
    const v9, 0x7f130446    # @string/fmt_date_numeric_year_month 'M-yyyy'

    goto/16 :goto_8

    :cond_2c
    const v9, 0x7f130445    # @string/fmt_date_numeric_year 'yyyy'

    goto/16 :goto_8

    :cond_2d
    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_2f

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_2e

    const v9, 0x7f130444    # @string/fmt_date_numeric_month_day 'M-d'

    goto/16 :goto_8

    :cond_2e
    const v9, 0x7f130443    # @string/fmt_date_numeric_month 'M'

    goto/16 :goto_8

    :cond_2f
    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_30

    const v9, 0x7f130442    # @string/fmt_date_numeric_day 'd'

    goto/16 :goto_8

    .line 21
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    and-int/lit16 v9, v1, 0x1000

    const/16 v10, 0x1000

    if-ne v9, v10, :cond_37

    and-int/lit16 v9, v1, 0x200

    if-ne v9, v12, :cond_33

    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_39

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_32

    const v9, 0x7f13044b    # @string/fmt_date_short_year_month_day 'MMM d, yyyy'

    goto :goto_8

    :cond_32
    const v9, 0x7f13044a    # @string/fmt_date_short_year_month 'MMM yyyy'

    goto :goto_8

    :cond_33
    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_35

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_34

    const v9, 0x7f130449    # @string/fmt_date_short_month_day 'MMM d'

    goto :goto_8

    :cond_34
    const v9, 0x7f130448    # @string/fmt_date_short_month 'MMM'

    goto :goto_8

    :cond_35
    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_36

    goto :goto_7

    .line 22
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    and-int/lit16 v9, v1, 0x200

    if-ne v9, v12, :cond_3a

    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_39

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_38

    const v9, 0x7f130441    # @string/fmt_date_long_year_month_day 'MMMM d, yyyy'

    goto :goto_8

    :cond_38
    const v9, 0x7f130440    # @string/fmt_date_long_year_month 'MMMM yyyy'

    goto :goto_8

    :cond_39
    const v9, 0x7f13044f    # @string/fmt_date_year 'yyyy'

    goto :goto_8

    :cond_3a
    and-int/lit16 v9, v1, 0x100

    if-ne v9, v13, :cond_3c

    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_3b

    const v9, 0x7f13043f    # @string/fmt_date_long_month_day 'MMMM d'

    goto :goto_8

    :cond_3b
    const v9, 0x7f13043e    # @string/fmt_date_long_month 'MMMM'

    goto :goto_8

    :cond_3c
    and-int/lit16 v9, v1, 0x80

    if-ne v9, v14, :cond_3d

    :goto_7
    const v9, 0x7f13043d    # @string/fmt_date_day 'd'

    .line 23
    :goto_8
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 24
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move-object/from16 v1, p1

    .line 25
    invoke-virtual {v6, v0, v1, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 26
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 27
    invoke-virtual {v0, v4}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v5, v6}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-void
.end method
