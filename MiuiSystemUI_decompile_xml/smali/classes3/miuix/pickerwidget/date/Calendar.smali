.class public Lmiuix/pickerwidget/date/Calendar;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CHINESE_YEAR_INFO:[I

.field public static final DAYS_IN_MONTH:[B

.field public static final DAYS_IN_YEAR:[I

.field public static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field public static final FIELD_NAMES:[Ljava/lang/String;

.field public static final FORMAT_CHARACTERS:[I

.field public static final SOLAR_TERM_BASE:[I

.field public static final SOLAR_TERM_INDEX:[B

.field public static final SOLAR_TERM_OS:[B

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final transient changeYear:I

.field public final transient currentYearSkew:I

.field public final transient gregorianCutover:J

.field public final transient julianSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    const/16 v0, 0xc

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    .line 9
    const/16 v0, 0xd

    .line 11
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_1

    .line 15
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    .line 18
    const-string v1, "ERA"

    .line 20
    const-string v2, "YEAR"

    .line 22
    const-string v3, "CHINESE_YEAR"

    .line 24
    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    .line 26
    const-string v5, "CHINESE_ERA_YEAR"

    .line 28
    const-string v6, "MONTH"

    .line 30
    const-string v7, "CHINESE_MONTH"

    .line 32
    const-string v8, "CHINESE_ERA_MONTH"

    .line 34
    const-string v9, "CHINESE_MONTH_IS_LEAP"

    .line 36
    const-string v10, "DAY_OF_MONTH"

    .line 38
    const-string v11, "DAY_OF_CHINESE_MONTH"

    .line 40
    const-string v12, "CHINESE_ERA_DAY"

    .line 42
    const-string v13, "DAY_OF_YEAR"

    .line 44
    const-string v14, "DAY_OF_CHINESE_YEAR"

    .line 46
    const-string v15, "DAY_OF_WEEK"

    .line 48
    const-string v16, "SOLAR_TERM"

    .line 50
    const-string v17, "DETAIL_AM_PM"

    .line 52
    const-string v18, "AM_PM"

    .line 54
    const-string v19, "HOUR"

    .line 56
    const-string v20, "CHINESE_ERA_HOUR"

    .line 58
    const-string v21, "MINUTE"

    .line 60
    const-string v22, "SECOND"

    .line 62
    const-string v23, "MILLISECOND"

    .line 64
    const-string v24, "ZONE_OFFSET"

    .line 66
    const-string v25, "DST_OFFSET"

    .line 68
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x3a

    .line 76
    new-array v0, v0, [I

    .line 78
    fill-array-data v0, :array_2

    .line 80
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    .line 83
    const/16 v0, 0xca

    .line 85
    new-array v0, v0, [I

    .line 87
    fill-array-data v0, :array_3

    .line 89
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 92
    const/16 v0, 0xc9

    .line 94
    new-array v0, v0, [I

    .line 96
    fill-array-data v0, :array_4

    .line 98
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 101
    const/16 v0, 0x18

    .line 103
    new-array v0, v0, [I

    .line 105
    fill-array-data v0, :array_5

    .line 107
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 110
    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 114
    move-result-object v0

    .line 117
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 118
    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 122
    move-result-object v0

    .line 125
    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    .line 126
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 140
    :array_2
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    .line 170
    :array_3
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    :array_4
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide v0, -0xb1d069b5400L

    .line 4
    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    const/16 v0, 0x62e

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/16 v0, 0xd

    .line 6
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    return-void
    .line 9
.end method

.method public static daysInChineseMonth(II)I
    .locals 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 2
    add-int/lit16 p0, p0, -0x76c

    .line 4
    aget p0, v0, p0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    const/high16 v0, 0x10000

    .line 10
    shr-int p1, v0, p1

    .line 12
    and-int/2addr p0, p1

    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/16 p0, 0x1e

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/16 p0, 0x1d

    .line 20
    :goto_0
    return p0
    .line 22
.end method

.method public static daysInMonth(IZ)I
    .locals 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    aget-byte p0, v0, p0

    .line 9
    add-int/2addr p0, p1

    .line 11
    return p0

    .line 12
    :cond_0
    aget-byte p0, v0, p0

    .line 13
    return p0
    .line 15
.end method

.method public static leapChineseMonth(I)I
    .locals 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 2
    add-int/lit16 p0, p0, -0x76c

    .line 4
    aget p0, v0, p0

    .line 6
    const/16 v0, 0xf

    .line 8
    and-int/2addr p0, v0

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 15
    :goto_0
    return p0
    .line 17
.end method

.method public static leapDaysInChineseYear(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 2
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 8
    add-int/lit16 p0, p0, -0x76c

    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 12
    aget p0, v0, p0

    .line 14
    const/16 v0, 0xf

    .line 16
    and-int/2addr p0, v0

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    const/16 p0, 0x1e

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/16 p0, 0x1d

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
    .line 28
.end method

.method public static mod(IJ)I
    .locals 3

    .line 1
    int-to-long v0, p0

    .line 2
    rem-long v0, p1, v0

    .line 3
    long-to-int v0, v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    cmp-long p1, p1, v1

    .line 8
    if-gez p1, :cond_0

    .line 10
    if-gez v0, :cond_0

    .line 12
    add-int/2addr v0, p0

    .line 14
    :cond_0
    return v0
    .line 15
.end method

.method public static solarTermDaysOfMonth(II)I
    .locals 4

    .line 1
    const/16 v0, 0x834

    .line 2
    if-le p0, v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 8
    add-int/lit16 p0, p0, -0x76c

    .line 10
    aget-byte p0, v0, p0

    .line 12
    add-int/lit8 p0, p0, -0x30

    .line 14
    mul-int/lit8 p1, p1, 0x2

    .line 16
    mul-int/lit8 p0, p0, 0x18

    .line 18
    add-int/2addr p0, p1

    .line 20
    add-int/lit8 v0, p0, 0x1

    .line 21
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    .line 23
    aget-byte p0, v1, p0

    .line 25
    add-int/lit8 p0, p0, -0x30

    .line 27
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 29
    aget v3, v2, p1

    .line 31
    add-int/2addr p0, v3

    .line 33
    aget-byte v0, v1, v0

    .line 34
    add-int/lit8 v0, v0, -0x30

    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 38
    aget p1, v2, p1

    .line 40
    add-int/2addr v0, p1

    .line 42
    shl-int/lit8 p0, p0, 0x8

    .line 43
    add-int/2addr p0, v0

    .line 45
    return p0
    .line 46
.end method


# virtual methods
.method public final add(II)V
    .locals 13

    if-ltz p1, :cond_2d

    const/16 v0, 0x19

    if-ge p1, v0, :cond_2d

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    const/16 v3, 0x9

    const/4 v4, 0x5

    if-eq p1, v0, :cond_28

    const/16 v5, 0xa

    const/16 v6, 0x834

    const/16 v7, 0x76c

    const-string v8, "out of range of Chinese Lunar Year"

    const/16 v9, 0x8

    const/4 v10, 0x6

    if-eq p1, v1, :cond_23

    const/16 v11, 0xc

    if-eq p1, v4, :cond_1e

    if-eq p1, v10, :cond_11

    const-string v1, "out of range"

    if-eq p1, v3, :cond_d

    if-eq p1, v5, :cond_d

    if-eq p1, v11, :cond_d

    const/16 v3, 0xd

    if-eq p1, v3, :cond_d

    const/16 v3, 0x12

    if-eq p1, v3, :cond_9

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unsupported set field:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p2, :cond_2c

    .line 2
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    add-long/2addr v5, v3

    if-lez p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    cmp-long p2, v5, v3

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-ne p1, v0, :cond_2

    .line 3
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 4
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_11

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eqz p2, :cond_2c

    .line 6
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    cmp-long p2, v5, v3

    if-lez p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    if-ne p1, v0, :cond_5

    .line 7
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 8
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_11

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz p2, :cond_2c

    .line 10
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_6

    move p1, v0

    goto :goto_4

    :cond_6
    move p1, v2

    :goto_4
    cmp-long p2, v5, v3

    if-lez p2, :cond_7

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    if-ne p1, v0, :cond_8

    .line 11
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 12
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_11

    .line 13
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eqz p2, :cond_2c

    .line 14
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_a

    move p1, v0

    goto :goto_6

    :cond_a
    move p1, v2

    :goto_6
    cmp-long p2, v5, v3

    if-lez p2, :cond_b

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    if-ne p1, v0, :cond_c

    .line 15
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 16
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_11

    .line 17
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-eqz p2, :cond_2c

    .line 18
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_e

    move p1, v0

    goto :goto_8

    :cond_e
    move p1, v2

    :goto_8
    cmp-long p2, v5, v3

    if-lez p2, :cond_f

    goto :goto_9

    :cond_f
    move v0, v2

    :goto_9
    if-ne p1, v0, :cond_10

    .line 19
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 20
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_11

    .line 21
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-eqz p2, :cond_2c

    .line 22
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 23
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v1

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    :goto_a
    const/16 v3, 0xb

    if-lez p2, :cond_15

    .line 24
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v11, v4, v10

    if-ne v11, p1, :cond_12

    aget v12, v4, v9

    if-nez v12, :cond_12

    .line 25
    aput v0, v4, v9

    goto :goto_b

    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 26
    aput v11, v4, v10

    .line 27
    aput v2, v4, v9

    if-le v11, v3, :cond_14

    .line 28
    aput v2, v4, v10

    .line 29
    aget p1, v4, v1

    add-int/2addr p1, v0

    aput p1, v4, v1

    if-gt p1, v6, :cond_13

    .line 30
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_b

    .line 31
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_b
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_15
    :goto_c
    if-gez p2, :cond_1a

    .line 32
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v6, v4, v10

    if-ne v6, p1, :cond_16

    aget v11, v4, v9

    if-ne v11, v0, :cond_16

    .line 33
    aput v2, v4, v9

    goto :goto_e

    :cond_16
    add-int/lit8 v6, v6, -0x1

    .line 34
    aput v6, v4, v10

    if-gez v6, :cond_18

    .line 35
    aput v3, v4, v10

    .line 36
    aput v5, v4, v10

    .line 37
    aget p1, v4, v1

    if-lt p1, v7, :cond_17

    .line 38
    aget p1, v4, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_d

    .line 39
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_18
    :goto_d
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v6, v4, v10

    if-ne v6, p1, :cond_19

    .line 41
    aput v0, v4, v9

    :cond_19
    :goto_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 42
    :cond_1a
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v0, :cond_1b

    .line 43
    aget p1, p1, v1

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_f

    .line 44
    :cond_1b
    aget p2, p1, v1

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 45
    :goto_f
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v5

    if-le v0, p1, :cond_1c

    .line 46
    aput p1, p2, v5

    .line 47
    :cond_1c
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_11

    .line 48
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-eqz p2, :cond_2c

    .line 49
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, p1, v4

    add-int/2addr p2, v1

    .line 50
    div-int/lit8 v1, p2, 0xc

    .line 51
    rem-int/2addr p2, v11

    if-gez p2, :cond_1f

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 v1, v1, -0x1

    .line 52
    :cond_1f
    aput p2, p1, v4

    if-nez v1, :cond_22

    .line 53
    aget p2, p1, v2

    if-nez p2, :cond_20

    .line 54
    aget p2, p1, v0

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    .line 55
    :cond_20
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    move-result p1

    .line 56
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_21

    .line 57
    aput p1, p2, v3

    .line 58
    :cond_21
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto/16 :goto_11

    .line 59
    :cond_22
    invoke-virtual {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->add(II)V

    goto/16 :goto_11

    :cond_23
    if-eqz p2, :cond_2c

    .line 60
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v1

    add-int/2addr p2, p1

    .line 61
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_27

    if-lt p2, v7, :cond_27

    if-gt p2, v6, :cond_27

    .line 62
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v1

    .line 63
    aget v3, p1, v9

    if-ne v3, v0, :cond_24

    .line 64
    aget p1, p1, v10

    invoke-static {p2}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p2

    if-ne p1, p2, :cond_24

    .line 65
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v2, p1, v9

    .line 66
    :cond_24
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v0, :cond_25

    .line 67
    aget p1, p1, v1

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_10

    .line 68
    :cond_25
    aget p2, p1, v1

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 69
    :goto_10
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v5

    if-le v0, p1, :cond_26

    .line 70
    aput p1, p2, v5

    .line 71
    :cond_26
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto :goto_11

    .line 72
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    if-eqz p2, :cond_2c

    .line 73
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, p1, v2

    if-nez v1, :cond_29

    .line 74
    aget v1, p1, v0

    rsub-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 75
    :cond_29
    aget v1, p1, v0

    add-int/2addr v1, p2

    aput v1, p1, v0

    .line 76
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    move-result p1

    .line 77
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_2a

    .line 78
    aput p1, p2, v3

    .line 79
    :cond_2a
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto :goto_11

    :cond_2b
    if-eqz p2, :cond_2c

    .line 80
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v2, p1, v2

    add-int/2addr p2, v2

    rem-int/2addr p2, v1

    if-eq v2, p2, :cond_2c

    if-nez v2, :cond_2c

    .line 81
    aget p2, p1, v0

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    .line 82
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    :cond_2c
    :goto_11
    return-void

    .line 83
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field out of range [0-25]: "

    .line 84
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final after(Lmiuix/pickerwidget/date/Calendar;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 4
    cmp-long p0, v0, p0

    .line 6
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x18

    .line 8
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 10
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    if-gez p0, :cond_0

    .line 15
    neg-int p0, p0

    .line 17
    const/16 v0, 0x2d

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x2b

    .line 21
    :goto_0
    if-eqz p2, :cond_1

    .line 23
    const-string p2, "GMT"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const p2, 0x36ee80

    .line 33
    div-int v0, p0, p2

    .line 36
    const/4 v1, 0x2

    .line 38
    invoke-static {p1, v1, v0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 39
    if-eqz p3, :cond_2

    .line 42
    const/16 p3, 0x3a

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_2
    rem-int/2addr p0, p2

    .line 49
    const p2, 0xea60

    .line 50
    div-int/2addr p0, p2

    .line 53
    invoke-static {p1, v1, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 54
    return-void
    .line 57
.end method

.method public final before(Lmiuix/pickerwidget/date/Calendar;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 4
    cmp-long p0, v0, p0

    .line 6
    if-gez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 8
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, [I

    .line 14
    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 16
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 18
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/TimeZone;

    .line 24
    iput-object p0, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object v0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    throw v0
    .line 35
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    .line 2
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 4
    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 6
    cmp-long p0, v0, p0

    .line 8
    if-gez p0, :cond_0

    .line 10
    const/4 p0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p0, :cond_1

    .line 14
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final compute()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 4
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 6
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    .line 8
    move-result v2

    .line 11
    const/16 v3, 0x17

    .line 12
    aput v2, v1, v3

    .line 14
    iget-wide v1, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 16
    const-wide/32 v4, 0x5265c00

    .line 18
    div-long v6, v1, v4

    .line 21
    rem-long/2addr v1, v4

    .line 23
    long-to-int v1, v1

    .line 24
    const-wide/16 v4, 0x1

    .line 25
    const v2, 0x5265c00

    .line 27
    if-gez v1, :cond_0

    .line 30
    add-int/2addr v1, v2

    .line 32
    sub-long/2addr v6, v4

    .line 33
    :cond_0
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 34
    aget v8, v8, v3

    .line 36
    add-int/2addr v1, v8

    .line 38
    :goto_0
    if-gez v1, :cond_1

    .line 39
    add-int/2addr v1, v2

    .line 41
    sub-long/2addr v6, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    .line 44
    sub-int/2addr v1, v2

    .line 46
    add-long/2addr v6, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 49
    aget v8, v8, v3

    .line 51
    iget-wide v9, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 53
    int-to-long v11, v8

    .line 55
    add-long/2addr v11, v9

    .line 56
    const-wide/16 v15, 0x0

    .line 57
    cmp-long v9, v9, v15

    .line 59
    const-wide/high16 v17, -0x8000000000000000L

    .line 61
    const-wide v19, 0x7fffffffffffffffL

    .line 63
    if-lez v9, :cond_3

    .line 68
    cmp-long v10, v11, v15

    .line 70
    if-gez v10, :cond_3

    .line 72
    if-lez v8, :cond_3

    .line 74
    move-wide/from16 v11, v19

    .line 76
    goto :goto_2

    .line 78
    :cond_3
    if-gez v9, :cond_4

    .line 79
    cmp-long v9, v11, v15

    .line 81
    if-lez v9, :cond_4

    .line 83
    if-gez v8, :cond_4

    .line 85
    move-wide/from16 v11, v17

    .line 87
    :cond_4
    :goto_2
    invoke-virtual {v0, v6, v7, v11, v12}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 89
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 92
    const/16 v21, 0x1

    .line 94
    aget v10, v8, v21

    .line 96
    const/16 v22, 0x9

    .line 98
    const/16 v23, 0x0

    .line 100
    const/16 v24, 0x5

    .line 102
    if-gtz v10, :cond_5

    .line 104
    move/from16 v8, v23

    .line 106
    goto :goto_3

    .line 108
    :cond_5
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 109
    const/4 v11, 0x1

    .line 111
    aget v12, v8, v24

    .line 112
    aget v13, v8, v22

    .line 114
    const/16 v14, 0xe

    .line 116
    aget v14, v8, v14

    .line 118
    move-object v8, v9

    .line 120
    move v9, v11

    .line 121
    move v11, v12

    .line 122
    move v12, v13

    .line 123
    move v13, v14

    .line 124
    move v14, v1

    .line 125
    invoke-virtual/range {v8 .. v14}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    .line 126
    move-result v8

    .line 129
    :goto_3
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 130
    aget v10, v9, v21

    .line 132
    if-lez v10, :cond_6

    .line 134
    aget v10, v9, v3

    .line 136
    sub-int/2addr v8, v10

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    move/from16 v8, v23

    .line 140
    :goto_4
    const/16 v10, 0x18

    .line 142
    aput v8, v9, v10

    .line 144
    if-eqz v8, :cond_c

    .line 146
    add-int/2addr v1, v8

    .line 148
    if-gez v1, :cond_7

    .line 149
    add-int/2addr v1, v2

    .line 151
    sub-long v4, v6, v4

    .line 152
    goto :goto_5

    .line 154
    :cond_7
    if-lt v1, v2, :cond_8

    .line 155
    sub-int/2addr v1, v2

    .line 157
    add-long/2addr v4, v6

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    move-wide v4, v6

    .line 160
    :goto_5
    cmp-long v2, v6, v4

    .line 161
    if-eqz v2, :cond_b

    .line 163
    aget v2, v9, v3

    .line 165
    sub-int/2addr v8, v2

    .line 167
    iget-wide v2, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 168
    int-to-long v6, v8

    .line 170
    add-long/2addr v6, v2

    .line 171
    cmp-long v2, v2, v15

    .line 172
    if-lez v2, :cond_9

    .line 174
    cmp-long v3, v6, v15

    .line 176
    if-gez v3, :cond_9

    .line 178
    if-lez v8, :cond_9

    .line 180
    move-wide/from16 v6, v19

    .line 182
    goto :goto_6

    .line 184
    :cond_9
    if-gez v2, :cond_a

    .line 185
    cmp-long v2, v6, v15

    .line 187
    if-lez v2, :cond_a

    .line 189
    if-gez v8, :cond_a

    .line 191
    move-wide/from16 v6, v17

    .line 193
    :cond_a
    :goto_6
    invoke-virtual {v0, v4, v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 195
    :cond_b
    move-wide v6, v4

    .line 198
    :cond_c
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 199
    aget v3, v2, v21

    .line 201
    if-gtz v3, :cond_d

    .line 203
    aput v23, v2, v23

    .line 205
    rsub-int/lit8 v3, v3, 0x1

    .line 207
    aput v3, v2, v21

    .line 209
    goto :goto_7

    .line 211
    :cond_d
    aput v21, v2, v23

    .line 212
    :goto_7
    rem-int/lit16 v3, v1, 0x3e8

    .line 214
    const/16 v4, 0x16

    .line 216
    aput v3, v2, v4

    .line 218
    div-int/lit16 v1, v1, 0x3e8

    .line 220
    rem-int/lit8 v3, v1, 0x3c

    .line 222
    const/16 v4, 0x15

    .line 224
    aput v3, v2, v4

    .line 226
    const/16 v3, 0x3c

    .line 228
    div-int/2addr v1, v3

    .line 230
    rem-int/lit8 v4, v1, 0x3c

    .line 231
    const/16 v5, 0x14

    .line 233
    aput v4, v2, v5

    .line 235
    div-int/2addr v1, v3

    .line 237
    rem-int/2addr v1, v10

    .line 238
    const/16 v4, 0x12

    .line 239
    aput v1, v2, v4

    .line 241
    const/16 v5, 0xb

    .line 243
    if-le v1, v5, :cond_e

    .line 245
    move/from16 v8, v21

    .line 247
    goto :goto_8

    .line 249
    :cond_e
    move/from16 v8, v23

    .line 250
    :goto_8
    const/16 v9, 0x11

    .line 252
    aput v8, v2, v9

    .line 254
    const/4 v8, 0x6

    .line 256
    const/4 v9, 0x4

    .line 257
    const/4 v11, 0x3

    .line 258
    const/4 v12, 0x2

    .line 259
    const/16 v13, 0x10

    .line 260
    packed-switch v1, :pswitch_data_0

    .line 262
    goto :goto_9

    .line 265
    :pswitch_0
    aput v8, v2, v13

    .line 266
    goto :goto_9

    .line 268
    :pswitch_1
    aput v24, v2, v13

    .line 269
    goto :goto_9

    .line 271
    :pswitch_2
    aput v9, v2, v13

    .line 272
    goto :goto_9

    .line 274
    :pswitch_3
    aput v11, v2, v13

    .line 275
    goto :goto_9

    .line 277
    :pswitch_4
    aput v12, v2, v13

    .line 278
    goto :goto_9

    .line 280
    :pswitch_5
    aput v21, v2, v13

    .line 281
    goto :goto_9

    .line 283
    :pswitch_6
    aput v23, v2, v13

    .line 284
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 286
    move-result v1

    .line 289
    if-nez v1, :cond_1b

    .line 290
    const-wide/16 v1, -0x63c1

    .line 292
    sub-long/2addr v6, v1

    .line 294
    long-to-int v1, v6

    .line 295
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 296
    aget v6, v2, v21

    .line 298
    const/16 v7, 0x834

    .line 300
    if-lt v6, v7, :cond_f

    .line 302
    goto :goto_a

    .line 304
    :cond_f
    add-int/lit8 v7, v6, 0x1

    .line 305
    :goto_a
    sget-object v6, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 307
    add-int/lit16 v13, v7, -0x76c

    .line 309
    aget v13, v6, v13

    .line 311
    sub-int v13, v1, v13

    .line 313
    if-gez v13, :cond_10

    .line 315
    add-int/lit8 v7, v7, -0x1

    .line 317
    add-int/lit16 v14, v7, -0x76c

    .line 319
    add-int/lit8 v15, v14, 0x1

    .line 321
    aget v15, v6, v15

    .line 323
    aget v14, v6, v14

    .line 325
    sub-int/2addr v15, v14

    .line 327
    add-int/2addr v13, v15

    .line 328
    :cond_10
    if-gez v13, :cond_11

    .line 329
    add-int/lit8 v7, v7, -0x1

    .line 331
    add-int/lit16 v14, v7, -0x76c

    .line 333
    add-int/lit8 v15, v14, 0x1

    .line 335
    aget v15, v6, v15

    .line 337
    aget v6, v6, v14

    .line 339
    sub-int/2addr v15, v6

    .line 341
    add-int/2addr v13, v15

    .line 342
    :cond_11
    aput v7, v2, v12

    .line 343
    add-int/lit8 v6, v13, 0x1

    .line 345
    const/16 v14, 0xd

    .line 347
    aput v6, v2, v14

    .line 349
    invoke-static {v7}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 351
    move-result v2

    .line 354
    move/from16 v6, v23

    .line 355
    move v14, v6

    .line 357
    move v15, v14

    .line 358
    :goto_b
    const/16 v10, 0xc

    .line 359
    if-ge v6, v10, :cond_14

    .line 361
    if-lez v13, :cond_14

    .line 363
    if-ltz v2, :cond_12

    .line 365
    add-int/lit8 v10, v2, 0x1

    .line 367
    if-ne v6, v10, :cond_12

    .line 369
    if-nez v14, :cond_12

    .line 371
    add-int/lit8 v6, v6, -0x1

    .line 373
    invoke-static {v7}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 375
    move-result v10

    .line 378
    move v15, v10

    .line 379
    move/from16 v14, v21

    .line 380
    goto :goto_c

    .line 382
    :cond_12
    invoke-static {v7, v6}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 383
    move-result v10

    .line 386
    move v15, v10

    .line 387
    :goto_c
    if-eqz v14, :cond_13

    .line 388
    add-int/lit8 v10, v2, 0x1

    .line 390
    if-ne v6, v10, :cond_13

    .line 392
    move/from16 v14, v23

    .line 394
    :cond_13
    sub-int/2addr v13, v15

    .line 396
    add-int/lit8 v6, v6, 0x1

    .line 397
    goto :goto_b

    .line 399
    :cond_14
    if-nez v13, :cond_16

    .line 400
    if-lez v2, :cond_16

    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 404
    if-ne v6, v2, :cond_16

    .line 406
    if-eqz v14, :cond_15

    .line 408
    move/from16 v14, v23

    .line 410
    goto :goto_d

    .line 412
    :cond_15
    add-int/lit8 v6, v6, -0x1

    .line 413
    move/from16 v14, v21

    .line 415
    :cond_16
    :goto_d
    if-gez v13, :cond_17

    .line 417
    add-int/2addr v13, v15

    .line 419
    add-int/lit8 v6, v6, -0x1

    .line 420
    :cond_17
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 422
    const/16 v7, 0x8

    .line 424
    aput v14, v2, v7

    .line 426
    aput v6, v2, v8

    .line 428
    const/16 v6, 0xa

    .line 430
    add-int/lit8 v13, v13, 0x1

    .line 432
    aput v13, v2, v6

    .line 434
    aget v6, v2, v21

    .line 436
    aget v2, v2, v24

    .line 438
    invoke-static {v6, v2}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    .line 440
    move-result v2

    .line 443
    iget-object v6, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 444
    aget v8, v6, v22

    .line 446
    shr-int/lit8 v13, v2, 0x8

    .line 448
    const/16 v14, 0xf

    .line 450
    if-ne v8, v13, :cond_18

    .line 452
    aget v2, v6, v24

    .line 454
    mul-int/2addr v2, v12

    .line 456
    add-int/lit8 v2, v2, 0x1

    .line 457
    aput v2, v6, v14

    .line 459
    goto :goto_e

    .line 461
    :cond_18
    and-int/lit16 v2, v2, 0xff

    .line 462
    if-ne v8, v2, :cond_19

    .line 464
    aget v2, v6, v24

    .line 466
    mul-int/2addr v2, v12

    .line 468
    add-int/2addr v2, v12

    .line 469
    aput v2, v6, v14

    .line 470
    goto :goto_e

    .line 472
    :cond_19
    aput v23, v6, v14

    .line 473
    :goto_e
    aget v2, v6, v12

    .line 475
    add-int/lit16 v2, v2, -0x76c

    .line 477
    add-int/lit8 v8, v2, 0xc

    .line 479
    int-to-long v13, v8

    .line 481
    invoke-static {v10, v13, v14}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 482
    move-result v8

    .line 485
    aput v8, v6, v11

    .line 486
    iget-object v6, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 488
    add-int/lit8 v2, v2, 0x24

    .line 490
    int-to-long v13, v2

    .line 492
    invoke-static {v3, v13, v14}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 493
    move-result v2

    .line 496
    aput v2, v6, v9

    .line 497
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 499
    aget v6, v2, v21

    .line 501
    aget v2, v2, v24

    .line 503
    invoke-static {v6, v2}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    .line 505
    move-result v2

    .line 508
    shr-int/2addr v2, v7

    .line 509
    iget-object v6, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 510
    aget v7, v6, v21

    .line 512
    add-int/lit16 v7, v7, -0x76c

    .line 514
    mul-int/2addr v7, v10

    .line 516
    aget v8, v6, v24

    .line 517
    add-int/2addr v7, v8

    .line 519
    aget v8, v6, v22

    .line 520
    if-lt v8, v2, :cond_1a

    .line 522
    add-int/lit8 v7, v7, 0x1

    .line 524
    :cond_1a
    add-int/2addr v7, v10

    .line 526
    int-to-long v7, v7

    .line 527
    invoke-static {v3, v7, v8}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 528
    move-result v2

    .line 531
    const/4 v7, 0x7

    .line 532
    aput v2, v6, v7

    .line 533
    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 535
    add-int/lit8 v6, v1, 0x28

    .line 537
    int-to-long v6, v6

    .line 539
    invoke-static {v3, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 540
    move-result v6

    .line 543
    aput v6, v2, v5

    .line 544
    iget-object v0, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 546
    mul-int/2addr v1, v10

    .line 548
    aget v2, v0, v4

    .line 549
    add-int/lit8 v2, v2, 0x1

    .line 551
    const/16 v4, 0x18

    .line 553
    rem-int/2addr v2, v4

    .line 555
    div-int/2addr v2, v12

    .line 556
    add-int/2addr v2, v1

    .line 557
    int-to-long v1, v2

    .line 558
    invoke-static {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 559
    move-result v1

    .line 562
    const/16 v2, 0x13

    .line 563
    aput v1, v0, v2

    .line 565
    :cond_1b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final computeDate(JJ)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    .line 2
    cmp-long v0, p3, v0

    .line 4
    const/16 v1, 0x7b2

    .line 6
    if-gez v0, :cond_0

    .line 8
    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 10
    int-to-long v2, v0

    .line 12
    move-wide v4, p3

    .line 13
    move p4, v1

    .line 14
    move-wide v0, p1

    .line 15
    move-wide p2, v0

    .line 16
    move-object p1, p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move-wide v2, p1

    .line 19
    move-wide v4, p3

    .line 20
    move p4, v1

    .line 21
    move-object p1, p0

    .line 22
    move-wide p2, v2

    .line 23
    move-wide v0, p2

    .line 24
    :goto_0
    const-wide/16 v6, 0x16d

    .line 25
    div-long v6, p2, v6

    .line 27
    long-to-int v6, v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    add-int/2addr p4, v6

    .line 32
    int-to-long p2, p4

    .line 33
    invoke-virtual {p0, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    .line 34
    move-result-wide p2

    .line 37
    move-wide v8, p2

    .line 38
    move-wide p2, v2

    .line 39
    move-wide v2, v8

    .line 40
    :goto_1
    sub-long v2, v0, v2

    .line 41
    move-wide v8, p2

    .line 43
    move-wide p2, v2

    .line 44
    move-wide v2, v8

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-wide/16 v0, 0x0

    .line 47
    cmp-long v0, p2, v0

    .line 49
    if-gez v0, :cond_5

    .line 51
    add-int/lit8 p4, p4, -0x1

    .line 53
    invoke-virtual {p0, p4}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    const/16 v0, 0x16e

    .line 61
    goto :goto_2

    .line 63
    :cond_2
    const/16 v0, 0x16d

    .line 64
    :goto_2
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 66
    if-ne p4, v1, :cond_3

    .line 68
    iget v6, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 70
    sub-int/2addr v0, v6

    .line 72
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 73
    if-ne p4, v1, :cond_4

    .line 75
    add-int/lit8 v0, v0, 0x0

    .line 77
    :cond_4
    int-to-long v0, v0

    .line 79
    add-long/2addr p2, v0

    .line 80
    :cond_5
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 81
    const/4 v0, 0x1

    .line 83
    aput p4, p0, v0

    .line 84
    long-to-int p0, p2

    .line 86
    add-int/2addr p0, v0

    .line 87
    iget-object p2, p1, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 88
    const/16 p3, 0xc

    .line 90
    aput p0, p2, p3

    .line 92
    aget p2, p2, v0

    .line 94
    iget p3, p1, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 96
    if-ne p2, p3, :cond_6

    .line 98
    iget-wide p3, p1, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    .line 100
    cmp-long p3, p3, v4

    .line 102
    if-gtz p3, :cond_6

    .line 104
    iget p3, p1, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 106
    add-int/2addr p0, p3

    .line 108
    :cond_6
    div-int/lit8 p3, p0, 0x20

    .line 109
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 111
    move-result p2

    .line 114
    sget-object p4, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    .line 115
    if-eqz p2, :cond_7

    .line 117
    if-le p3, v0, :cond_7

    .line 119
    aget p4, p4, p3

    .line 121
    add-int/2addr p4, v0

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    aget p4, p4, p3

    .line 125
    :goto_3
    sub-int/2addr p0, p4

    .line 127
    invoke-static {p3, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    .line 128
    move-result p4

    .line 131
    if-le p0, p4, :cond_8

    .line 132
    invoke-static {p3, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    .line 134
    move-result p2

    .line 137
    sub-int/2addr p0, p2

    .line 138
    add-int/lit8 p3, p3, 0x1

    .line 139
    :cond_8
    iget-object p1, p1, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 141
    const/4 p2, 0x5

    .line 143
    aput p3, p1, p2

    .line 144
    const/16 p2, 0x9

    .line 146
    aput p0, p1, p2

    .line 148
    const-wide/16 p2, 0x3

    .line 150
    sub-long/2addr v2, p2

    .line 152
    const/4 p0, 0x7

    .line 153
    invoke-static {p0, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 154
    move-result p0

    .line 157
    add-int/2addr p0, v0

    .line 158
    const/16 p2, 0xe

    .line 159
    aput p0, p1, p2

    .line 161
    return-void
    .line 163
.end method

.method public final daysFromBaseYear(J)J
    .locals 13

    .line 1
    const-wide/16 v0, 0x7b2

    .line 2
    cmp-long v2, p1, v0

    .line 4
    const-wide/16 v3, 0x190

    .line 6
    const-wide/16 v5, 0x64

    .line 8
    const-wide/16 v7, 0x4

    .line 10
    const-wide/16 v9, 0x16d

    .line 12
    if-ltz v2, :cond_3

    .line 14
    sub-long v0, p1, v0

    .line 16
    mul-long/2addr v0, v9

    .line 18
    const-wide/16 v9, 0x7b1

    .line 19
    sub-long v9, p1, v9

    .line 21
    div-long/2addr v9, v7

    .line 23
    add-long/2addr v9, v0

    .line 24
    iget v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 25
    int-to-long v1, v0

    .line 27
    cmp-long v1, p1, v1

    .line 28
    if-lez v1, :cond_0

    .line 30
    const-wide/16 v0, 0x76d

    .line 32
    sub-long v0, p1, v0

    .line 34
    div-long/2addr v0, v5

    .line 36
    const-wide/16 v5, 0x641

    .line 37
    sub-long/2addr p1, v5

    .line 39
    div-long/2addr p1, v3

    .line 40
    sub-long/2addr v0, p1

    .line 41
    sub-long/2addr v9, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    if-nez v1, :cond_1

    .line 44
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    int-to-long v0, v0

    .line 51
    cmp-long p1, p1, v0

    .line 52
    if-nez p1, :cond_2

    .line 54
    const/4 p0, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 58
    :goto_0
    int-to-long p0, p0

    .line 60
    add-long/2addr v9, p0

    .line 61
    :goto_1
    return-wide v9

    .line 62
    :cond_3
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 63
    int-to-long v11, v2

    .line 65
    cmp-long v2, p1, v11

    .line 66
    const-wide/16 v11, 0x7b4

    .line 68
    if-gtz v2, :cond_4

    .line 70
    sub-long v0, p1, v0

    .line 72
    mul-long/2addr v0, v9

    .line 74
    sub-long/2addr p1, v11

    .line 75
    div-long/2addr p1, v7

    .line 76
    add-long/2addr p1, v0

    .line 77
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    .line 78
    int-to-long v0, p0

    .line 80
    add-long/2addr p1, v0

    .line 81
    return-wide p1

    .line 82
    :cond_4
    sub-long v0, p1, v0

    .line 83
    mul-long/2addr v0, v9

    .line 85
    sub-long v9, p1, v11

    .line 86
    div-long/2addr v9, v7

    .line 88
    add-long/2addr v9, v0

    .line 89
    const-wide/16 v0, 0x7d0

    .line 90
    sub-long/2addr p1, v0

    .line 92
    div-long v0, p1, v5

    .line 93
    sub-long/2addr v9, v0

    .line 95
    div-long/2addr p1, v3

    .line 96
    add-long/2addr p1, v9

    .line 97
    return-wide p1
    .line 98
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    instance-of v0, p1, Lmiuix/pickerwidget/date/Calendar;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 8
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    .line 10
    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 12
    cmp-long p0, v0, p0

    .line 14
    if-nez p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
    .line 22
.end method

.method public final format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 2
    invoke-virtual {v0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 5
    invoke-static/range {p1 .. p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v3

    .line 6
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_24

    .line 7
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x27

    if-eqz v7, :cond_2

    if-ne v8, v10, :cond_1

    add-int/lit8 v10, v6, 0x1

    if-ge v10, v4, :cond_0

    .line 8
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_0

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v7, v5

    goto/16 :goto_6

    .line 10
    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_2
    if-ne v8, v10, :cond_4

    add-int/lit8 v10, v6, 0x1

    if-ge v10, v4, :cond_3

    .line 11
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_3

    .line 12
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v6, v10

    goto/16 :goto_6

    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_4
    const/16 v10, 0x41

    if-lt v8, v10, :cond_22

    const/16 v11, 0x7a

    if-gt v8, v11, :cond_22

    .line 13
    sget-object v12, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v13, v8, -0x41

    aget v14, v12, v13

    if-ltz v14, :cond_22

    const/4 v14, 0x1

    :goto_2
    add-int/lit8 v15, v6, 0x1

    if-ge v15, v4, :cond_5

    .line 14
    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_5

    add-int/lit8 v14, v14, 0x1

    move v6, v15

    goto :goto_2

    .line 15
    :cond_5
    aget v9, v12, v13

    if-eq v8, v10, :cond_21

    const/16 v10, 0x53

    if-eq v8, v10, :cond_20

    const/16 v10, 0x61

    const/4 v13, 0x2

    if-eq v8, v10, :cond_1e

    const/16 v10, 0x68

    const/16 v16, 0xc

    if-eq v8, v10, :cond_1c

    const/16 v10, 0x6b

    if-eq v8, v10, :cond_1b

    const/16 v10, 0x6d

    if-eq v8, v10, :cond_20

    const/16 v10, 0x44

    if-eq v8, v10, :cond_20

    const/16 v15, 0x45

    if-eq v8, v15, :cond_18

    const/16 v15, 0x59

    const v10, 0x7f03007e    # @array/earthly_branches

    const v12, 0x7f030086    # @array/heavenly_stems

    const/16 v17, 0xa

    if-eq v8, v15, :cond_16

    const/16 v15, 0x5a

    if-eq v8, v15, :cond_13

    const/16 v15, 0x73

    if-eq v8, v15, :cond_20

    const/16 v15, 0x74

    if-eq v8, v15, :cond_12

    const/16 v15, 0x79

    if-eq v8, v15, :cond_10

    if-eq v8, v11, :cond_c

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_0
    const/16 v8, 0x13

    if-ne v14, v13, :cond_6

    .line 16
    iget-object v9, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 17
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 18
    iget-object v11, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v11, v11, v8

    rem-int/lit8 v11, v11, 0xa

    aget-object v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_6
    iget-object v9, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 20
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 21
    iget-object v10, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v10, v8

    rem-int/lit8 v8, v8, 0xc

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 22
    :pswitch_1
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030082    # @array/eras

    .line 23
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 24
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_2
    if-eq v14, v13, :cond_7

    .line 25
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030035    # @array/chinese_leap_months

    .line 26
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 27
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x8

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030036    # @array/chinese_months

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 29
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 30
    :cond_7
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 31
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 32
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v11, 0x7

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 34
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xc

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_3
    const/4 v8, 0x3

    if-ge v14, v8, :cond_8

    .line 35
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_6

    :cond_8
    const/4 v8, 0x4

    const/4 v9, 0x5

    if-ne v14, v8, :cond_9

    .line 36
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f030092    # @array/months

    .line 37
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 38
    iget-object v10, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v10, v9

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_9
    if-ne v14, v9, :cond_a

    .line 39
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f030094    # @array/months_shortest

    .line 40
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 41
    iget-object v10, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v10, v9

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 42
    :cond_a
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f030093    # @array/months_short

    .line 43
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 44
    iget-object v10, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v10, v9

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 45
    :pswitch_4
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v9, 0x12

    aget v8, v8, v9

    rem-int/lit8 v8, v8, 0xc

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_6

    :pswitch_5
    if-eq v14, v13, :cond_b

    .line 46
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030033    # @array/chinese_days

    .line 47
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 48
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v17

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 49
    :cond_b
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 50
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 51
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v11, 0xb

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 53
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xc

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 54
    :cond_c
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x18

    aget v9, v9, v10

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_3

    :cond_d
    move v9, v5

    :goto_3
    const/4 v10, 0x4

    if-eq v14, v10, :cond_e

    move v10, v5

    goto :goto_4

    :cond_e
    const/4 v10, 0x1

    .line 55
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 57
    invoke-virtual {v8, v9, v10, v11}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 58
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 59
    :cond_f
    invoke-virtual {v0, v1, v5, v5}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_6

    :cond_10
    if-ne v14, v13, :cond_11

    .line 60
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_6

    :cond_11
    const/4 v9, 0x1

    .line 61
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v9

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_6

    .line 62
    :cond_12
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0300b2    # @array/solar_terms

    .line 63
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 64
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0xf

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_13
    const/4 v8, 0x4

    if-ne v14, v8, :cond_14

    const/4 v8, 0x1

    .line 65
    invoke-virtual {v0, v1, v8, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_6

    :cond_14
    const/4 v8, 0x1

    const/4 v9, 0x5

    if-ne v14, v9, :cond_15

    .line 66
    invoke-virtual {v0, v1, v5, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_6

    .line 67
    :cond_15
    invoke-virtual {v0, v1, v5, v5}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_6

    :cond_16
    if-eq v14, v13, :cond_17

    .line 68
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030034    # @array/chinese_digits

    .line 69
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 70
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v13

    .line 71
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    :goto_5
    if-lez v9, :cond_23

    .line 72
    rem-int/lit8 v11, v9, 0xa

    .line 73
    div-int/lit8 v9, v9, 0xa

    .line 74
    aget-object v11, v8, v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 75
    :cond_17
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 76
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 77
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v11, 0x4

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 79
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v9, v9, v11

    rem-int/lit8 v9, v9, 0xc

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_18
    :pswitch_6
    const/4 v11, 0x4

    const/16 v8, 0xe

    if-ne v14, v11, :cond_19

    .line 80
    iget-object v9, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0300e1    # @array/week_days

    .line 81
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 82
    iget-object v10, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v10, v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_19
    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ne v14, v9, :cond_1a

    .line 83
    iget-object v9, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0300e3    # @array/week_days_shortest

    .line 84
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 85
    iget-object v11, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v11, v8

    sub-int/2addr v8, v10

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 86
    :cond_1a
    iget-object v9, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0300e2    # @array/week_days_short

    .line 87
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 88
    iget-object v11, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v11, v8

    sub-int/2addr v8, v10

    aget-object v8, v9, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 89
    :cond_1b
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v9, 0x12

    aget v8, v8, v9

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_6

    :cond_1c
    const/16 v9, 0x12

    .line 90
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v9

    rem-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_1d

    move/from16 v8, v16

    .line 91
    :cond_1d
    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_6

    :cond_1e
    if-eq v14, v13, :cond_1f

    .line 92
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030004    # @array/am_pms

    .line 93
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 94
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x11

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 95
    :cond_1f
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030079    # @array/detailed_am_pms

    .line 96
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 97
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x10

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 98
    :cond_20
    :pswitch_7
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v9

    invoke-static {v1, v14, v8}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_6

    .line 99
    :cond_21
    iget-object v8, v3, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f030037    # @array/chinese_symbol_animals

    .line 100
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 101
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 102
    :cond_22
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    :goto_6
    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto/16 :goto_0

    :cond_24
    return-void

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public final get(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    const/16 v0, 0x19

    .line 4
    if-ge p1, v0, :cond_0

    .line 6
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 8
    aget p0, p0, p1

    .line 10
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Field out of range [0-25]: "

    .line 15
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
    .line 24
.end method

.method public final getActualMaximum(I)I
    .locals 6

    .line 1
    if-ltz p1, :cond_7

    .line 2
    const/16 v0, 0x19

    .line 4
    if-ge p1, v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x6

    .line 10
    const/16 v3, 0xb

    .line 11
    const/4 v4, 0x2

    .line 13
    const/16 v5, 0x3b

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "unsupported field: "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 28
    aget-object p1, v1, p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0

    .line 42
    :pswitch_0
    const/16 p0, 0x3e7

    .line 43
    return p0

    .line 45
    :pswitch_1
    return v5

    .line 46
    :pswitch_2
    const/16 p0, 0x17

    .line 47
    return p0

    .line 49
    :pswitch_3
    return v0

    .line 50
    :pswitch_4
    return v2

    .line 51
    :pswitch_5
    const/16 p0, 0x18

    .line 52
    return p0

    .line 54
    :pswitch_6
    const/4 p0, 0x7

    .line 55
    return p0

    .line 56
    :pswitch_7
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 64
    aget p0, p0, v4

    .line 66
    sget-object p1, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 68
    add-int/lit16 p0, p0, -0x76c

    .line 70
    add-int/lit8 v0, p0, 0x1

    .line 72
    aget v0, p1, v0

    .line 74
    aget p0, p1, p0

    .line 76
    sub-int v1, v0, p0

    .line 78
    :goto_0
    return v1

    .line 80
    :pswitch_8
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 81
    aget p1, p1, v0

    .line 83
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 85
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const/16 v0, 0x16e

    .line 91
    goto :goto_1

    .line 93
    :cond_1
    const/16 v0, 0x16d

    .line 94
    :goto_1
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 96
    if-ne p1, v1, :cond_2

    .line 98
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    .line 100
    sub-int/2addr v0, p0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 103
    if-ne p1, v1, :cond_3

    .line 105
    add-int/lit8 v0, v0, 0x0

    .line 107
    :cond_3
    return v0

    .line 109
    :pswitch_9
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 110
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    .line 117
    move-result p1

    .line 120
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 121
    if-eqz p1, :cond_5

    .line 123
    aget p0, p0, v4

    .line 125
    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 127
    move-result v1

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    aget p1, p0, v4

    .line 132
    aget p0, p0, v2

    .line 134
    invoke-static {p1, p0}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 136
    move-result v1

    .line 139
    :goto_2
    return v1

    .line 140
    :pswitch_a
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 141
    aget p1, p1, v0

    .line 143
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 145
    move-result p1

    .line 148
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 149
    const/4 v0, 0x5

    .line 151
    aget p0, p0, v0

    .line 152
    invoke-static {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    .line 154
    move-result p0

    .line 157
    return p0

    .line 158
    :pswitch_b
    return v0

    .line 159
    :pswitch_c
    return v3

    .line 160
    :pswitch_d
    return v5

    .line 161
    :pswitch_e
    return v3

    .line 162
    :pswitch_f
    const/16 p0, 0x834

    .line 163
    return p0

    .line 165
    :pswitch_10
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 166
    aget p0, p0, v1

    .line 168
    if-ne p0, v0, :cond_6

    .line 170
    const p0, 0x116bd2d2

    .line 172
    goto :goto_3

    .line 175
    :cond_6
    const p0, 0x116babff

    .line 176
    :goto_3
    return p0

    .line 179
    :pswitch_11
    return v0

    .line 180
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 181
    const-string v0, "Field out of range [0-25]: "

    .line 183
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    throw p0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 194
.end method

.method public final getActualMinimum(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    const/16 v0, 0x19

    .line 4
    if-ge p1, v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "unsupported field: "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 22
    aget-object p1, v1, p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 36
    :pswitch_0
    return v1

    .line 37
    :pswitch_1
    return v0

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 39
    move-result p0

    .line 42
    :goto_0
    xor-int/2addr p0, v0

    .line 43
    return p0

    .line 44
    :pswitch_3
    return v0

    .line 45
    :pswitch_4
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    .line 46
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    return v0

    .line 51
    :pswitch_6
    return v1

    .line 52
    :pswitch_7
    const/16 p0, 0x76c

    .line 53
    return p0

    .line 55
    :pswitch_8
    return v0

    .line 56
    :pswitch_9
    return v1

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v0, "Field out of range [0-25]: "

    .line 60
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 70
.end method

.method public final getChineseLeapMonth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 2
    const/4 v0, 0x2

    .line 4
    aget p0, p0, v0

    .line 5
    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final getTimeInMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    const/16 p0, 0x20

    .line 4
    ushr-long v2, v0, p0

    .line 6
    xor-long/2addr v0, v2

    .line 8
    long-to-int p0, v0

    .line 9
    return p0
    .line 10
.end method

.method public final isChineseLeapMonth()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 2
    const/16 v0, 0x8

    .line 4
    aget p0, p0, v0

    .line 6
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
    .line 13
.end method

.method public final isLeapYear(I)Z
    .locals 2

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-le p1, p0, :cond_2

    .line 6
    rem-int/lit8 p0, p1, 0x4

    .line 8
    if-nez p0, :cond_0

    .line 10
    rem-int/lit8 p0, p1, 0x64

    .line 12
    if-nez p0, :cond_1

    .line 14
    rem-int/lit16 p1, p1, 0x190

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :cond_1
    :goto_0
    return v0

    .line 22
    :cond_2
    rem-int/lit8 p1, p1, 0x4

    .line 23
    if-nez p1, :cond_3

    .line 25
    goto :goto_1

    .line 27
    :cond_3
    move v0, v1

    .line 28
    :goto_1
    return v0
    .line 29
.end method

.method public final onChineseDateChange()V
    .locals 8

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 4
    const/4 v2, 0x2

    .line 6
    aget v1, v1, v2

    .line 7
    add-int/lit16 v1, v1, -0x76c

    .line 9
    aget v0, v0, v1

    .line 11
    int-to-long v0, v0

    .line 13
    const-wide/16 v3, -0x63c1

    .line 14
    add-long/2addr v0, v3

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 18
    const/4 v5, 0x6

    .line 20
    aget v6, v4, v5

    .line 21
    if-ge v3, v6, :cond_0

    .line 23
    aget v4, v4, v2

    .line 25
    invoke-static {v4, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 27
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    add-long/2addr v0, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    const/16 v3, 0x8

    .line 36
    aget v3, v4, v3

    .line 38
    const/4 v7, 0x1

    .line 40
    if-ne v3, v7, :cond_1

    .line 41
    aget v2, v4, v2

    .line 43
    invoke-static {v2, v6}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    .line 45
    move-result v2

    .line 48
    :goto_1
    int-to-long v2, v2

    .line 49
    add-long/2addr v0, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    aget v3, v4, v2

    .line 52
    invoke-static {v3}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    .line 54
    move-result v3

    .line 57
    if-ltz v3, :cond_2

    .line 58
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 60
    aget v5, v4, v5

    .line 62
    if-ge v3, v5, :cond_2

    .line 64
    aget v2, v4, v2

    .line 66
    invoke-static {v2}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    .line 68
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 73
    const/16 v3, 0xa

    .line 75
    aget v2, v2, v3

    .line 77
    sub-int/2addr v2, v7

    .line 79
    int-to-long v2, v2

    .line 80
    add-long/2addr v0, v2

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 84
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    .line 87
    return-void
    .line 90
.end method

.method public final onSolarDateChange()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 2
    const/4 v1, 0x1

    .line 4
    aget v2, v0, v1

    .line 5
    const/4 v3, 0x5

    .line 7
    aget v3, v0, v3

    .line 8
    const/16 v4, 0x9

    .line 10
    aget v0, v0, v4

    .line 12
    int-to-long v4, v2

    .line 14
    invoke-virtual {p0, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    .line 15
    move-result-wide v4

    .line 18
    invoke-virtual {p0, v2}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    .line 19
    move-result v6

    .line 22
    sget-object v7, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    .line 23
    if-eqz v6, :cond_0

    .line 25
    if-le v3, v1, :cond_0

    .line 27
    aget v3, v7, v3

    .line 29
    add-int/2addr v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    aget v3, v7, v3

    .line 33
    :goto_0
    add-int/2addr v3, v0

    .line 35
    sub-int/2addr v3, v1

    .line 36
    int-to-long v6, v3

    .line 37
    add-long/2addr v4, v6

    .line 38
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 39
    const-wide/16 v6, 0x3

    .line 41
    sub-long v6, v4, v6

    .line 43
    const/4 v3, 0x7

    .line 45
    invoke-static {v3, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->mod(IJ)I

    .line 46
    move-result v3

    .line 49
    add-int/2addr v3, v1

    .line 50
    const/16 v1, 0xe

    .line 51
    aput v3, v0, v1

    .line 53
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 55
    const/16 v1, 0x12

    .line 57
    aget v1, v0, v1

    .line 59
    const v3, 0x36ee80

    .line 61
    mul-int/2addr v1, v3

    .line 64
    const/16 v3, 0x14

    .line 65
    aget v3, v0, v3

    .line 67
    const v6, 0xea60

    .line 69
    mul-int/2addr v3, v6

    .line 72
    add-int/2addr v3, v1

    .line 73
    const/16 v1, 0x15

    .line 74
    aget v1, v0, v1

    .line 76
    mul-int/lit16 v1, v1, 0x3e8

    .line 78
    add-int/2addr v1, v3

    .line 80
    const/16 v3, 0x16

    .line 81
    aget v0, v0, v3

    .line 83
    add-int/2addr v1, v0

    .line 85
    const-wide/32 v6, 0x5265c00

    .line 86
    mul-long/2addr v4, v6

    .line 89
    int-to-long v0, v1

    .line 90
    add-long/2addr v4, v0

    .line 91
    iput-wide v4, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 92
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 94
    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    .line 96
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 101
    if-gtz v2, :cond_1

    .line 103
    const-wide/16 v0, 0x0

    .line 105
    :cond_1
    sub-long/2addr v3, v0

    .line 107
    iput-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 108
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 110
    return-void
    .line 113
.end method

.method public final outOfChineseCalendarRange()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 4
    const/16 v2, 0x17

    .line 6
    aget v2, p0, v2

    .line 8
    int-to-long v3, v2

    .line 10
    const-wide v5, -0x201b77f5c00L

    .line 11
    sub-long/2addr v5, v3

    .line 16
    const/16 v3, 0x18

    .line 17
    aget p0, p0, v3

    .line 19
    int-to-long v3, p0

    .line 21
    sub-long/2addr v5, v3

    .line 22
    cmp-long v3, v0, v5

    .line 23
    if-ltz v3, :cond_1

    .line 25
    const-wide v3, 0x3c314a71400L

    .line 27
    int-to-long v5, v2

    .line 32
    sub-long/2addr v3, v5

    .line 33
    int-to-long v5, p0

    .line 34
    sub-long/2addr v3, v5

    .line 35
    cmp-long p0, v0, v3

    .line 36
    if-ltz p0, :cond_0

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 43
    :goto_1
    return p0
    .line 44
.end method

.method public final set(II)V
    .locals 8

    const-string v0, "]: "

    const-string v1, "-"

    const-string v2, "value is out of date range ["

    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-gez p2, :cond_1

    neg-int p2, p2

    .line 46
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 47
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v4, p1, v5

    goto :goto_1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "year "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has no such leap month:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v7

    if-ge p2, v7, :cond_3

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v7

    if-gt p2, v7, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x0

    aput v0, p1, v5

    .line 53
    :goto_1
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v3

    .line 54
    aget v0, p1, v5

    if-ne v0, v4, :cond_4

    .line 55
    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_2

    .line 56
    :cond_4
    aget p1, p1, v6

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 57
    :goto_2
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0xa

    aget v1, p2, v0

    if-le v1, p1, :cond_5

    .line 58
    aput p1, p2, v0

    .line 59
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-void

    .line 60
    :cond_6
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v3

    if-ge p2, v3, :cond_8

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt p2, v3, :cond_7

    goto :goto_3

    .line 61
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_8
    :goto_3
    :try_start_0
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 64
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unsupported set field:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(III)V
    .locals 3

    const-string v0, "Year "

    if-ltz p2, :cond_1

    const/16 v1, 0xb

    if-gt p2, v1, :cond_1

    if-lez p3, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v1

    invoke-static {p2, v1}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(IZ)I

    move-result v1

    if-gt p3, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x5

    .line 3
    aput p2, v0, p1

    const/16 p1, 0x9

    .line 4
    aput p3, v0, p1

    const/16 p1, 0x12

    const/16 p2, 0xc

    .line 5
    aput p2, v0, p1

    const/16 p1, 0x14

    const/4 p2, 0x0

    .line 6
    aput p2, v0, p1

    const/16 p1, 0x15

    .line 7
    aput p2, v0, p1

    const/16 p1, 0x16

    .line 8
    aput p2, v0, p1

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, " month "

    const-string v2, " has no day "

    .line 11
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, " has no month "

    .line 14
    invoke-static {v0, p1, p3, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTimeInMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 2
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 4
    return-void
    .line 7
.end method

.method public final setTimeZone(Ljava/util/TimeZone;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 26
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    .line 28
    :cond_2
    return-void
    .line 31
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 2
    invoke-virtual {v0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "[time"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-wide v1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ",zone="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 36
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v1, 0x0

    .line 45
    :goto_0
    const/16 v2, 0x19

    .line 46
    if-ge v1, v2, :cond_0

    .line 48
    const/16 v2, 0x2c

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 55
    aget-object v2, v2, v1

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v2, 0x3d

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 67
    aget v2, v2, v1

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    const/16 p0, 0x5d

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    sget-object v1, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 86
    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 88
    return-object p0
    .line 91
.end method
