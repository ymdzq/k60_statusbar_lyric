.class public Lmiuix/pickerwidget/date/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lmiuix/pickerwidget/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHINESE_YEAR_INFO:[I

.field private static final DAYS_IN_MONTH:[B

.field private static final DAYS_IN_YEAR:[I

.field private static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field private static final FORMAT_CHARACTERS:[I

.field private static final SOLAR_TERM_BASE:[I

.field private static final SOLAR_TERM_INDEX:[B

.field private static final SOLAR_TERM_OS:[B

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient changeYear:I

.field private transient currentYearSkew:I

.field private transient gregorianCutover:J

.field private transient julianError:I

.field private transient julianSkew:I

.field private transient lastYearSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 101
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 105
    fill-array-data v0, :array_1

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    const-string v1, "ERA"

    const-string v2, "YEAR"

    const-string v3, "CHINESE_YEAR"

    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    const-string v5, "CHINESE_ERA_YEAR"

    const-string v6, "MONTH"

    const-string v7, "CHINESE_MONTH"

    const-string v8, "CHINESE_ERA_MONTH"

    const-string v9, "CHINESE_MONTH_IS_LEAP"

    const-string v10, "DAY_OF_MONTH"

    const-string v11, "DAY_OF_CHINESE_MONTH"

    const-string v12, "CHINESE_ERA_DAY"

    const-string v13, "DAY_OF_YEAR"

    const-string v14, "DAY_OF_CHINESE_YEAR"

    const-string v15, "DAY_OF_WEEK"

    const-string v16, "SOLAR_TERM"

    const-string v17, "DETAIL_AM_PM"

    const-string v18, "AM_PM"

    const-string v19, "HOUR"

    const-string v20, "CHINESE_ERA_HOUR"

    const-string v21, "MINUTE"

    const-string v22, "SECOND"

    const-string v23, "MILLISECOND"

    const-string v24, "ZONE_OFFSET"

    const-string v25, "DST_OFFSET"

    .line 329
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    const/16 v0, 0x3a

    new-array v0, v0, [I

    .line 684
    fill-array-data v0, :array_2

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 693
    fill-array-data v0, :array_3

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    const/16 v0, 0xc9

    new-array v0, v0, [I

    .line 717
    fill-array-data v0, :array_4

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 741
    fill-array-data v0, :array_5

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    .line 749
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    .line 782
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    return-void

    nop

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

    .line 788
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 4

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 113
    iput-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide v0, -0xb1d069b5400L

    .line 1437
    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    const/16 v0, 0x62e

    .line 1439
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/16 v1, 0x62e

    .line 1441
    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x62e

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiuix/pickerwidget/date/Calendar;->julianError:I

    const/16 v2, 0x7d0

    rsub-int v3, v2, 0x62e

    .line 1443
    div-int/lit16 v3, v3, 0x190

    add-int/2addr v3, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v3, v0

    iput v3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    const/16 v0, 0xa

    .line 1446
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    const/4 v0, 0x0

    .line 1448
    iput v0, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 797
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .locals 2

    const/16 v0, 0x17

    .line 2268
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p0

    add-int/2addr v0, p0

    if-gez v0, :cond_0

    neg-int v0, v0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    const/16 p0, 0x2b

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "GMT"

    .line 2275
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p0, 0x36ee80

    .line 2278
    div-int p2, v0, p0

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    if-eqz p3, :cond_2

    const/16 p2, 0x3a

    .line 2280
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2282
    :cond_2
    rem-int/2addr v0, p0

    const p0, 0xea60

    div-int/2addr v0, p0

    invoke-static {p1, v1, v0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .locals 0

    .line 2249
    invoke-static {p1, p2}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V
    .locals 5

    .line 2253
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x4

    if-eq p3, v4, :cond_1

    move v2, v3

    .line 2255
    :cond_1
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object p2

    .line 2253
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2257
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2259
    :cond_2
    invoke-direct {p0, p1, v3, v3}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    :goto_1
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V
    .locals 10

    const/16 v0, 0x41

    const/4 v1, 0x3

    if-eq p3, v0, :cond_18

    const/16 v0, 0x53

    if-eq p3, v0, :cond_17

    const/16 v0, 0x61

    const/4 v2, 0x2

    if-eq p3, v0, :cond_15

    const/16 v0, 0x68

    const/16 v3, 0x12

    const/16 v4, 0xc

    if-eq p3, v0, :cond_13

    const/16 v0, 0x6b

    if-eq p3, v0, :cond_12

    const/16 v0, 0x6d

    if-eq p3, v0, :cond_17

    const/16 v0, 0x44

    if-eq p3, v0, :cond_17

    const/16 v0, 0x45

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq p3, v0, :cond_f

    const/16 v0, 0x59

    const/16 v8, 0xa

    if-eq p3, v0, :cond_d

    const/16 v0, 0x5a

    const/4 v9, 0x0

    if-eq p3, v0, :cond_a

    const/16 v0, 0x73

    if-eq p3, v0, :cond_17

    const/16 v0, 0x74

    if-eq p3, v0, :cond_9

    const/16 v0, 0x79

    if-eq p3, v0, :cond_7

    const/16 v0, 0x7a

    if-eq p3, v0, :cond_6

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    if-eq p4, v2, :cond_0

    .line 2218
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v8

    sub-int/2addr p0, v7

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2220
    :cond_0
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p5, 0xb

    aget p4, p4, p5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p5

    rem-int/2addr p0, v4

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_1
    if-eq p4, v2, :cond_1

    .line 2178
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p5, 0x8

    aget p4, p4, p5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p3, 0x6

    aget p0, p0, p3

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2181
    :cond_1
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p5, 0x7

    aget p4, p4, p5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p5

    rem-int/2addr p0, v4

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_2
    if-ge p4, v1, :cond_2

    .line 2167
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v6

    add-int/2addr p0, v7

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_2

    :cond_2
    if-ne p4, v5, :cond_3

    .line 2169
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v6

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    if-ne p4, v6, :cond_4

    .line 2171
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v6

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2173
    :cond_4
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v6

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2162
    :pswitch_3
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v3

    rem-int/2addr p0, v4

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_2

    :pswitch_4
    const/16 p3, 0x13

    if-ne p4, v2, :cond_5

    .line 2157
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p5, p5, p3

    rem-int/2addr p5, v8

    aget-object p4, p4, p5

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    :cond_5
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p3

    rem-int/2addr p0, v4

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2153
    :pswitch_5
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v9

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2243
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lmiuix/pickerwidget/date/Calendar;->appendTimeZone(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;I)V

    goto/16 :goto_2

    :cond_7
    if-ne p4, v2, :cond_8

    .line 2237
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v7

    rem-int/lit8 p0, p0, 0x64

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_2

    .line 2239
    :cond_8
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v7

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_2

    .line 2233
    :cond_9
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p3, 0xf

    aget p0, p0, p3

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    if-ne p4, v5, :cond_b

    .line 2202
    invoke-direct {p0, p1, v7, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_2

    :cond_b
    if-ne p4, v6, :cond_c

    .line 2204
    invoke-direct {p0, p1, v9, v7}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_2

    .line 2206
    :cond_c
    invoke-direct {p0, p1, v9, v9}, Lmiuix/pickerwidget/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_2

    :cond_d
    if-eq p4, v2, :cond_e

    .line 2187
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object p2

    .line 2188
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v2

    .line 2189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    :goto_0
    if-lez p0, :cond_19

    .line 2191
    rem-int/lit8 p4, p0, 0xa

    .line 2192
    div-int/lit8 p0, p0, 0xa

    .line 2193
    aget-object p4, p2, p4

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2196
    :cond_e
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p4, p4, v5

    rem-int/2addr p4, v8

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v5

    rem-int/2addr p0, v4

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    :pswitch_6
    const/16 p3, 0xe

    if-ne p4, v5, :cond_10

    .line 2140
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p3

    sub-int/2addr p0, v7

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_10
    if-ne p4, v6, :cond_11

    .line 2142
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p3

    sub-int/2addr p0, v7

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2144
    :cond_11
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p3

    sub-int/2addr p0, v7

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2230
    :cond_12
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v3

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    .line 2225
    :cond_13
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v3

    rem-int/2addr p0, v4

    if-nez p0, :cond_14

    goto :goto_1

    :cond_14
    move v4, p0

    .line 2226
    :goto_1
    invoke-static {p1, p4, v4}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_15
    if-eq p4, v2, :cond_16

    .line 2211
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p3, 0x11

    aget p0, p0, p3

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2213
    :cond_16
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p3, 0x10

    aget p0, p0, p3

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2135
    :cond_17
    :pswitch_7
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p5

    invoke-static {p1, p4, p0}, Lmiuix/pickerwidget/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    .line 2127
    :cond_18
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v1

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private compute()V
    .locals 3

    .line 1315
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    move-result-wide v0

    .line 1316
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1317
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    .line 1318
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    .line 1319
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    :cond_0
    return-void
.end method

.method private computeChineseDate(J)V
    .locals 7

    const-wide/16 v0, -0x63c1

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 1382
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    const/16 v1, 0x834

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 1383
    :goto_0
    sget-object p2, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v2, v1, -0x76c

    aget p2, p2, v2

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 1386
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result p2

    add-int/2addr p1, p2

    :cond_1
    if-gez p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 1390
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 1393
    :cond_2
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aput v1, p2, v2

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0xd

    .line 1394
    aput v2, p2, v3

    .line 1397
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1
    const/16 v6, 0xc

    if-ge v3, v6, :cond_5

    if-lez p1, :cond_5

    if-ltz p2, :cond_3

    add-int/lit8 v5, p2, 0x1

    if-ne v3, v5, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 1405
    invoke-static {v1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    move v5, v4

    move v4, v0

    goto :goto_2

    .line 1407
    :cond_3
    invoke-static {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v5

    :goto_2
    if-eqz v4, :cond_4

    add-int/lit8 v6, p2, 0x1

    if-ne v3, v6, :cond_4

    move v4, v2

    :cond_4
    sub-int/2addr p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_7

    if-lez p2, :cond_7

    add-int/2addr p2, v0

    if-ne v3, p2, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v4

    :goto_3
    if-gez p1, :cond_8

    add-int/2addr p1, v5

    add-int/lit8 v3, v3, -0x1

    .line 1430
    :cond_8
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 p2, 0x8

    aput v2, p0, p2

    const/4 p2, 0x6

    .line 1431
    aput v3, p0, p2

    const/16 p2, 0xa

    add-int/2addr p1, v0

    .line 1432
    aput p1, p0, p2

    return-void
.end method

.method private computeChineseEraNames(J)V
    .locals 8

    .line 1351
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit16 v2, v2, -0x76c

    add-int/lit8 v3, v2, 0xc

    int-to-long v3, v3

    const/16 v5, 0xc

    .line 1352
    invoke-static {v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 1353
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    add-int/lit8 v2, v2, 0x24

    int-to-long v2, v2

    const/16 v4, 0x3c

    invoke-static {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 1355
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v6, 0x5

    aget v0, v0, v6

    invoke-static {v3, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 1356
    iget-object v3, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v7, v3, v2

    add-int/lit16 v7, v7, -0x76c

    mul-int/2addr v7, v5

    aget v6, v3, v6

    add-int/2addr v7, v6

    const/16 v6, 0x9

    .line 1357
    aget v6, v3, v6

    if-lt v6, v0, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/2addr v7, v5

    int-to-long v6, v7

    .line 1360
    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v0

    const/4 v6, 0x7

    aput v0, v3, v6

    const-wide/16 v6, -0x63c1

    sub-long/2addr p1, v6

    long-to-int p1, p1

    .line 1363
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    add-int/lit8 v0, p1, 0x28

    int-to-long v6, v0

    invoke-static {v6, v7, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v0

    const/16 v3, 0xb

    aput v0, p2, v3

    .line 1365
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    mul-int/2addr p1, v5

    const/16 p2, 0x12

    aget p2, p0, p2

    add-int/2addr p2, v2

    rem-int/lit8 p2, p2, 0x18

    div-int/2addr p2, v1

    add-int/2addr p1, p2

    int-to-long p1, p1

    invoke-static {p1, p2, v4}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result p1

    const/16 p2, 0x13

    aput p1, p0, p2

    return-void
.end method

.method private computeDate(JJ)V
    .locals 5

    .line 1846
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/pickerwidget/date/Calendar;->computeYearAndDay(JJ)I

    move-result v0

    .line 1847
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0xc

    aput v0, v1, v2

    const/4 v2, 0x1

    .line 1848
    aget v1, v1, v2

    iget v3, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    if-ne v1, v3, :cond_0

    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    cmp-long p3, v3, p3

    if-gtz p3, :cond_0

    .line 1849
    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    add-int/2addr v0, p3

    .line 1851
    :cond_0
    div-int/lit8 p3, v0, 0x20

    .line 1852
    invoke-virtual {p0, v1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p4

    .line 1853
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1854
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1855
    invoke-static {p4, p3}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p4

    sub-int/2addr v0, p4

    add-int/lit8 p3, p3, 0x1

    .line 1859
    :cond_1
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p4, 0x5

    aput p3, p0, p4

    const/16 p3, 0x9

    .line 1860
    aput v0, p0, p3

    const-wide/16 p3, 0x3

    sub-long/2addr p1, p3

    const/4 p3, 0x7

    .line 1861
    invoke-static {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result p1

    add-int/2addr p1, v2

    const/16 p2, 0xe

    aput p1, p0, p2

    return-void
.end method

.method private computeDateTime()J
    .locals 20

    move-object/from16 v0, p0

    .line 1480
    iget-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    iget-object v2, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 1482
    iget-wide v1, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    div-long v6, v1, v4

    .line 1483
    rem-long/2addr v1, v4

    long-to-int v1, v1

    const-wide/16 v4, 0x1

    const v2, 0x5265c00

    if-gez v1, :cond_0

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    .line 1490
    :cond_0
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v3

    add-int/2addr v1, v8

    :goto_0
    if-gez v1, :cond_1

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    sub-int/2addr v1, v2

    add-long/2addr v6, v4

    goto :goto_1

    .line 1500
    :cond_2
    iget-object v8, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v8, v8, v3

    .line 1501
    iget-wide v9, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v11, v8

    add-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    const-wide/high16 v16, -0x8000000000000000L

    const-wide v18, 0x7fffffffffffffffL

    if-lez v15, :cond_3

    cmp-long v15, v11, v13

    if-gez v15, :cond_3

    if-lez v8, :cond_3

    move-wide/from16 v11, v18

    goto :goto_2

    :cond_3
    cmp-long v9, v9, v13

    if-gez v9, :cond_4

    cmp-long v9, v11, v13

    if-lez v9, :cond_4

    if-gez v8, :cond_4

    move-wide/from16 v11, v16

    .line 1508
    :cond_4
    :goto_2
    invoke-direct {v0, v6, v7, v11, v12}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 1510
    invoke-direct {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->getDstOffset(I)I

    move-result v8

    .line 1511
    iget-object v9, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v10, 0x18

    aput v8, v9, v10

    if-eqz v8, :cond_a

    add-int/2addr v1, v8

    if-gez v1, :cond_5

    add-int/2addr v1, v2

    sub-long v4, v6, v4

    goto :goto_3

    :cond_5
    if-lt v1, v2, :cond_6

    sub-int/2addr v1, v2

    add-long/2addr v4, v6

    goto :goto_3

    :cond_6
    move-wide v4, v6

    :goto_3
    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    .line 1523
    aget v2, v9, v3

    sub-int/2addr v8, v2

    .line 1524
    iget-wide v2, v0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v6, v8

    add-long/2addr v6, v2

    cmp-long v9, v2, v13

    if-lez v9, :cond_7

    cmp-long v9, v6, v13

    if-gez v9, :cond_7

    if-lez v8, :cond_7

    move-wide/from16 v6, v18

    goto :goto_4

    :cond_7
    cmp-long v2, v2, v13

    if-gez v2, :cond_8

    cmp-long v2, v6, v13

    if-lez v2, :cond_8

    if-gez v8, :cond_8

    move-wide/from16 v6, v16

    .line 1531
    :cond_8
    :goto_4
    invoke-direct {v0, v4, v5, v6, v7}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    :cond_9
    move-wide v6, v4

    .line 1535
    :cond_a
    iget-object v0, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_b

    .line 1536
    aput v4, v0, v4

    rsub-int/lit8 v3, v3, 0x1

    .line 1537
    aput v3, v0, v2

    goto :goto_5

    .line 1539
    :cond_b
    aput v2, v0, v4

    .line 1542
    :goto_5
    rem-int/lit16 v3, v1, 0x3e8

    const/16 v5, 0x16

    aput v3, v0, v5

    .line 1543
    div-int/lit16 v1, v1, 0x3e8

    .line 1544
    rem-int/lit8 v3, v1, 0x3c

    const/16 v5, 0x15

    aput v3, v0, v5

    .line 1545
    div-int/lit8 v1, v1, 0x3c

    .line 1546
    rem-int/lit8 v3, v1, 0x3c

    const/16 v5, 0x14

    aput v3, v0, v5

    .line 1547
    div-int/lit8 v1, v1, 0x3c

    .line 1548
    rem-int/2addr v1, v10

    const/16 v3, 0x12

    aput v1, v0, v3

    const/16 v3, 0xb

    if-le v1, v3, :cond_c

    move v3, v2

    goto :goto_6

    :cond_c
    move v3, v4

    :goto_6
    const/16 v5, 0x11

    .line 1550
    aput v3, v0, v5

    const/16 v3, 0x10

    packed-switch v1, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    const/4 v1, 0x6

    .line 1589
    aput v1, v0, v3

    goto :goto_7

    :pswitch_1
    const/4 v1, 0x5

    .line 1582
    aput v1, v0, v3

    goto :goto_7

    :pswitch_2
    const/4 v1, 0x4

    .line 1579
    aput v1, v0, v3

    goto :goto_7

    :pswitch_3
    const/4 v1, 0x3

    .line 1572
    aput v1, v0, v3

    goto :goto_7

    :pswitch_4
    const/4 v1, 0x2

    .line 1569
    aput v1, v0, v3

    goto :goto_7

    .line 1561
    :pswitch_5
    aput v2, v0, v3

    goto :goto_7

    .line 1554
    :pswitch_6
    aput v4, v0, v3

    :goto_7
    return-wide v6

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

.method private computeSolarTerm()V
    .locals 6

    .line 1369
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-static {v2, v0}, Lmiuix/pickerwidget/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    .line 1370
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0x9

    aget v2, p0, v2

    shr-int/lit8 v4, v0, 0x8

    const/16 v5, 0xf

    if-ne v2, v4, :cond_0

    .line 1371
    aget v0, p0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    aput v0, p0, v5

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    if-ne v2, v0, :cond_1

    .line 1373
    aget v0, p0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    aput v0, p0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1375
    aput v0, p0, v5

    :goto_0
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .locals 4

    .line 1871
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->gregorianCutover:J

    cmp-long p3, p3, v0

    const/16 p4, 0x7b2

    if-gez p3, :cond_0

    .line 1872
    iget p3, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    int-to-long v0, p3

    :goto_0
    sub-long v0, p1, v0

    goto :goto_1

    :cond_0
    move-wide v0, p1

    :goto_1
    const-wide/16 v2, 0x16d

    .line 1876
    div-long v2, v0, v2

    long-to-int p3, v2

    if-eqz p3, :cond_1

    add-int/2addr p4, p3

    int-to-long v0, p4

    .line 1878
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    add-int/lit8 p4, p4, -0x1

    .line 1882
    invoke-direct {p0, p4}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    .line 1884
    :cond_2
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 p1, 0x1

    aput p4, p0, p1

    long-to-int p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method private daysFromBaseYear(J)J
    .locals 13

    const-wide/16 v0, 0x7b2

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x16d

    if-ltz v2, :cond_3

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    const-wide/16 v9, 0x7b1

    sub-long v9, p1, v9

    .line 1893
    div-long/2addr v9, v7

    add-long/2addr v0, v9

    .line 1894
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    int-to-long v7, v2

    cmp-long v7, p1, v7

    if-lez v7, :cond_0

    const-wide/16 v7, 0x76d

    sub-long v7, p1, v7

    .line 1895
    div-long/2addr v7, v5

    const-wide/16 v5, 0x641

    sub-long/2addr p1, v5

    div-long/2addr p1, v3

    sub-long/2addr v7, p1

    sub-long/2addr v0, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v2

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1898
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    .line 1900
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    goto :goto_0

    .line 1902
    :cond_2
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    goto :goto_0

    :goto_1
    return-wide v0

    .line 1906
    :cond_3
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    int-to-long v11, v2

    cmp-long v2, p1, v11

    const-wide/16 v11, 0x7b4

    if-gtz v2, :cond_4

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long/2addr p1, v11

    .line 1907
    div-long/2addr p1, v7

    add-long/2addr v0, p1

    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->julianSkew:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_4
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long v9, p1, v11

    .line 1909
    div-long/2addr v9, v7

    add-long/2addr v0, v9

    const-wide/16 v7, 0x7d0

    sub-long/2addr p1, v7

    div-long v5, p1, v5

    sub-long/2addr v0, v5

    div-long/2addr p1, v3

    add-long/2addr v0, p1

    return-wide v0
.end method

.method static daysInChineseMonth(II)I
    .locals 1

    .line 1961
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    add-int/lit8 p1, p1, 0x1

    const/high16 v0, 0x10000

    shr-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    :goto_0
    return p0
.end method

.method static daysInChineseYear(I)I
    .locals 2

    .line 1969
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 v1, p0, 0x1

    aget v1, v0, v1

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1
.end method

.method private static daysInMonth(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 1918
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p1, v0, p1

    add-int/2addr p1, p0

    return p1

    .line 1921
    :cond_0
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method private daysInYear(I)I
    .locals 3

    .line 1928
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    .line 1929
    :goto_0
    iget v1, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_1

    .line 1930
    iget v2, p0, Lmiuix/pickerwidget/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1933
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->lastYearSkew:I

    sub-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static daysInYear(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 1943
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p1, v0, p1

    add-int/2addr p1, p0

    return p1

    .line 1946
    :cond_0
    sget-object p0, Lmiuix/pickerwidget/date/Calendar;->DAYS_IN_YEAR:[I

    aget p0, p0, p1

    return p0
.end method

.method private getDstOffset(I)I
    .locals 10

    .line 2286
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v9, 0x0

    if-gtz v4, :cond_0

    move p1, v9

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v3, 0x1

    const/4 v5, 0x5

    aget v5, v0, v5

    const/16 v6, 0x9

    aget v6, v0, v6

    const/16 v7, 0xe

    aget v7, v0, v7

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    .line 2288
    :goto_0
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p0, v1

    if-lez v0, :cond_1

    const/16 v0, 0x17

    .line 2289
    aget p0, p0, v0

    sub-int/2addr p1, p0

    return p1

    :cond_1
    return v9
.end method

.method private static leapChineseMonth(I)I
    .locals 1

    .line 1988
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method static leapDaysInChineseYear(I)I
    .locals 1

    .line 1979
    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1980
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static mod(JI)I
    .locals 3

    int-to-long v0, p2

    .line 1950
    rem-long v0, p0, v0

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_0

    if-gez v0, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private onChineseDateChange()V
    .locals 8

    .line 1256
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit16 v1, v1, -0x76c

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v3, -0x63c1

    add-long/2addr v0, v3

    const/4 v3, 0x0

    .line 1258
    :goto_0
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v5, 0x6

    aget v6, v4, v5

    if-ge v3, v6, :cond_0

    .line 1259
    aget v4, v4, v2

    invoke-static {v4, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 1262
    aget v3, v4, v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 1263
    aget v2, v4, v2

    invoke-static {v2, v6}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v2

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2

    .line 1265
    :cond_1
    aget v3, v4, v2

    invoke-static {v3}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1266
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v5

    if-ge v3, v5, :cond_2

    .line 1267
    aget v2, v4, v2

    invoke-static {v2}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v2

    goto :goto_1

    .line 1270
    :cond_2
    :goto_2
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int/2addr v2, v7

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 1272
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->computeDate(JJ)V

    .line 1273
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-void
.end method

.method private onSolarDateChange()V
    .locals 8

    .line 1235
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    .line 1236
    aget v3, v0, v3

    const/16 v4, 0x9

    .line 1237
    aget v0, v0, v4

    int-to-long v4, v2

    .line 1239
    invoke-direct {p0, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v4

    .line 1240
    invoke-virtual {p0, v2}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v6

    invoke-static {v6, v3}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(ZI)I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 1242
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const-wide/16 v6, 0x3

    sub-long v6, v4, v6

    const/4 v3, 0x7

    invoke-static {v6, v7, v3}, Lmiuix/pickerwidget/date/Calendar;->mod(JI)I

    move-result v3

    add-int/2addr v3, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 1244
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aget v1, v0, v1

    const v3, 0x36ee80

    mul-int/2addr v1, v3

    const/16 v3, 0x14

    aget v3, v0, v3

    const v6, 0xea60

    mul-int/2addr v3, v6

    add-int/2addr v1, v3

    const/16 v3, 0x15

    aget v3, v0, v3

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v1, v3

    const/16 v3, 0x16

    aget v0, v0, v3

    add-int/2addr v1, v0

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    int-to-long v0, v1

    add-long/2addr v4, v0

    .line 1246
    iput-wide v4, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1248
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 1249
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    sub-long/2addr v3, v0

    iput-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1251
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    return-void
.end method

.method private safeCompute()V
    .locals 14

    .line 1324
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeDateTime()J

    move-result-wide v0

    const-wide/32 v2, 0xb9be

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/16 v6, 0x834

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    .line 1328
    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    move-wide v0, v2

    :cond_0
    const-wide/16 v2, -0x63c1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/16 v6, 0x76c

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    .line 1333
    invoke-virtual/range {v5 .. v13}, Lmiuix/pickerwidget/date/Calendar;->setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;

    move-wide v0, v2

    .line 1335
    :cond_1
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1336
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseDate(J)V

    .line 1337
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->computeSolarTerm()V

    .line 1338
    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->computeChineseEraNames(J)V

    :cond_2
    return-void
.end method

.method static solarTermDaysOfMonth(II)I
    .locals 4

    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2003
    :cond_0
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_INDEX:[B

    add-int/lit16 p0, p0, -0x76c

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p0, p0, 0x18

    add-int/2addr p0, p1

    add-int/lit8 v0, p0, 0x1

    .line 2007
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, -0x30

    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->SOLAR_TERM_BASE:[I

    aget v3, v2, p1

    add-int/2addr p0, v3

    .line 2008
    aget-byte v0, v1, v0

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 p1, p1, 0x1

    aget p1, v2, p1

    add-int/2addr v0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public add(II)Lmiuix/pickerwidget/date/Calendar;
    .locals 13

    if-ltz p1, :cond_2d

    const/16 v0, 0x19

    if-ge p1, v0, :cond_2d

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2b

    const/16 v3, 0x9

    const/4 v4, 0x5

    if-eq p1, v2, :cond_28

    const/16 v5, 0x834

    const/16 v6, 0x76c

    const-string v7, "out of range of Chinese Lunar Year"

    const/16 v8, 0xa

    const/16 v9, 0x8

    const/4 v10, 0x6

    if-eq p1, v0, :cond_23

    const/16 v11, 0xc

    if-eq p1, v4, :cond_1e

    if-eq p1, v10, :cond_11

    const-string v0, "out of range"

    if-eq p1, v3, :cond_d

    if-eq p1, v8, :cond_d

    if-eq p1, v11, :cond_d

    const/16 v3, 0xd

    if-eq p1, v3, :cond_d

    const/16 v3, 0x12

    if-eq p1, v3, :cond_9

    packed-switch p1, :pswitch_data_0

    .line 1229
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported set field:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p2, :cond_2c

    .line 1219
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    add-long/2addr v5, v3

    if-lez p2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    cmp-long p2, v5, v3

    if-lez p2, :cond_1

    move v1, v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1223
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1224
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_c

    .line 1221
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eqz p2, :cond_2c

    .line 1207
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    cmp-long p2, v5, v3

    if-lez p2, :cond_4

    move v1, v2

    :cond_4
    if-ne p1, v1, :cond_5

    .line 1211
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1212
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_c

    .line 1209
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz p2, :cond_2c

    .line 1195
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    cmp-long p2, v5, v3

    if-lez p2, :cond_7

    move v1, v2

    :cond_7
    if-ne p1, v1, :cond_8

    .line 1199
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1200
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_c

    .line 1197
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eqz p2, :cond_2c

    .line 1183
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_a

    move p1, v2

    goto :goto_3

    :cond_a
    move p1, v1

    :goto_3
    cmp-long p2, v5, v3

    if-lez p2, :cond_b

    move v1, v2

    :cond_b
    if-ne p1, v1, :cond_c

    .line 1187
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1188
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_c

    .line 1185
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-eqz p2, :cond_2c

    .line 1172
    iget-wide v3, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    if-lez p2, :cond_e

    move p1, v2

    goto :goto_4

    :cond_e
    move p1, v1

    :goto_4
    cmp-long p2, v5, v3

    if-lez p2, :cond_f

    move v1, v2

    :cond_f
    if-ne p1, v1, :cond_10

    .line 1176
    iput-wide v5, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 1177
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    goto/16 :goto_c

    .line 1174
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-eqz p2, :cond_2c

    .line 1116
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 1120
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    :goto_5
    const/16 v3, 0xb

    if-lez p2, :cond_15

    .line 1122
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v11, v4, v10

    if-ne v11, p1, :cond_12

    aget v12, v4, v9

    if-nez v12, :cond_12

    .line 1123
    aput v2, v4, v9

    goto :goto_6

    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 1125
    aput v11, v4, v10

    .line 1126
    aput v1, v4, v9

    if-le v11, v3, :cond_14

    .line 1128
    aput v1, v4, v10

    .line 1129
    aget p1, v4, v0

    add-int/2addr p1, v2

    aput p1, v4, v0

    if-gt p1, v5, :cond_13

    .line 1133
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_6

    .line 1131
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_15
    :goto_7
    if-gez p2, :cond_1a

    .line 1139
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v10

    if-ne v5, p1, :cond_16

    aget v11, v4, v9

    if-ne v11, v2, :cond_16

    .line 1140
    aput v1, v4, v9

    goto :goto_9

    :cond_16
    add-int/lit8 v5, v5, -0x1

    .line 1142
    aput v5, v4, v10

    if-gez v5, :cond_18

    .line 1144
    aput v3, v4, v10

    rsub-int/lit8 p1, v2, 0xb

    .line 1145
    aput p1, v4, v10

    .line 1146
    aget p1, v4, v0

    if-lt p1, v6, :cond_17

    .line 1149
    aget p1, v4, v2

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    goto :goto_8

    .line 1147
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1151
    :cond_18
    :goto_8
    iget-object v4, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v5, v4, v10

    if-ne v5, p1, :cond_19

    .line 1152
    aput v2, v4, v9

    :cond_19
    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1157
    :cond_1a
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v2, :cond_1b

    .line 1158
    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_a

    .line 1159
    :cond_1b
    aget p2, p1, v0

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 1160
    :goto_a
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v8

    if-le v0, p1, :cond_1c

    .line 1161
    aput p1, p2, v8

    .line 1163
    :cond_1c
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_c

    .line 1117
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-eqz p2, :cond_2c

    .line 1089
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p1, v4

    add-int/2addr p2, v0

    .line 1090
    div-int/lit8 v0, p2, 0xc

    .line 1091
    rem-int/2addr p2, v11

    if-gez p2, :cond_1f

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 v0, v0, -0x1

    .line 1097
    :cond_1f
    aput p2, p1, v4

    if-nez v0, :cond_22

    .line 1099
    aget p2, p1, v1

    if-nez p2, :cond_20

    .line 1100
    aget p2, p1, v2

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v2

    .line 1103
    :cond_20
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p1

    .line 1104
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_21

    .line 1105
    aput p1, p2, v3

    .line 1107
    :cond_21
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto/16 :goto_c

    .line 1109
    :cond_22
    invoke-virtual {p0, v2, v0}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    goto/16 :goto_c

    :cond_23
    if-eqz p2, :cond_2c

    .line 1065
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v0

    add-int/2addr p2, p1

    .line 1066
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_27

    if-lt p2, v6, :cond_27

    if-gt p2, v5, :cond_27

    .line 1070
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v0

    .line 1071
    aget v3, p1, v9

    if-ne v3, v2, :cond_24

    .line 1072
    aget p1, p1, v10

    invoke-static {p2}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p2

    if-ne p1, p2, :cond_24

    .line 1073
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v1, p1, v9

    .line 1077
    :cond_24
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p1, v9

    if-ne p2, v2, :cond_25

    .line 1078
    aget p1, p1, v0

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_b

    .line 1079
    :cond_25
    aget p2, p1, v0

    aget p1, p1, v10

    invoke-static {p2, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 1080
    :goto_b
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v8

    if-le v0, p1, :cond_26

    .line 1081
    aput p1, p2, v8

    .line 1083
    :cond_26
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    goto :goto_c

    .line 1067
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    if-eqz p2, :cond_2c

    .line 1051
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p1, v1

    if-nez v0, :cond_29

    .line 1052
    aget v0, p1, v2

    rsub-int/lit8 v0, v0, -0x1

    aput v0, p1, v2

    .line 1054
    :cond_29
    aget v0, p1, v2

    add-int/2addr v0, p2

    aput v0, p1, v2

    .line 1055
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p2, p2, v4

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p1

    .line 1056
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, p2, v3

    if-le v0, p1, :cond_2a

    .line 1057
    aput p1, p2, v3

    .line 1059
    :cond_2a
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    goto :goto_c

    :cond_2b
    if-eqz p2, :cond_2c

    .line 1039
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v1, p1, v1

    add-int/2addr p2, v1

    rem-int/2addr p2, v0

    if-eq v1, p2, :cond_2c

    if-nez v1, :cond_2c

    .line 1042
    aget p2, p1, v2

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v2

    .line 1043
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    :cond_2c
    :goto_c
    return-object p0

    .line 1033
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field out of range [0-25]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public after(Lmiuix/pickerwidget/date/Calendar;)Z
    .locals 2

    .line 1698
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public before(Lmiuix/pickerwidget/date/Calendar;)Z
    .locals 2

    .line 1714
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1675
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pickerwidget/date/Calendar;

    .line 1676
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    .line 1677
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TimeZone;

    iput-object p0, v0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1681
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 65
    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->compareTo(Lmiuix/pickerwidget/date/Calendar;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lmiuix/pickerwidget/date/Calendar;)I
    .locals 3

    .line 1624
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    .line 1642
    instance-of v0, p1, Lmiuix/pickerwidget/date/Calendar;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    check-cast p1, Lmiuix/pickerwidget/date/Calendar;

    iget-wide p0, p1, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2024
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Landroid/content/Context;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/String;
    .locals 1

    .line 2040
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2041
    invoke-virtual {p0, p1, v0, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2042
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 2061
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiuix/pickerwidget/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .locals 10

    if-nez p4, :cond_0

    .line 2079
    invoke-static {p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object p4

    .line 2085
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v6, 0x0

    move v0, v6

    move v7, v0

    :goto_0
    if-ge v0, p1, :cond_8

    .line 2086
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v1, 0x27

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-ne v3, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_1

    .line 2090
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2092
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v7, v6

    goto :goto_3

    .line 2097
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    if-ne v3, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_4

    .line 2103
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 2105
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    const/16 v1, 0x41

    if-lt v3, v1, :cond_7

    const/16 v1, 0x7a

    if-gt v3, v1, :cond_7

    .line 2110
    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v2, v3, -0x41

    aget v1, v1, v2

    if-ltz v1, :cond_7

    move v9, v0

    move v4, v8

    :goto_2
    add-int/lit8 v0, v9, 0x1

    if-ge v0, p1, :cond_6

    .line 2111
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    move v9, v0

    goto :goto_2

    .line 2114
    :cond_6
    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FORMAT_CHARACTERS:[I

    aget v5, v0, v2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/pickerwidget/date/Calendar;->appendValue(Ljava/lang/StringBuilder;Lmiuix/pickerwidget/date/CalendarFormatSymbols;CII)V

    move v0, v9

    goto :goto_3

    .line 2116
    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/2addr v0, v8

    goto :goto_0

    :cond_8
    return-object p2
.end method

.method public get(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 1311
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, p1

    return p0

    .line 1309
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field out of range [0-25]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActualMaximum(I)I
    .locals 6

    if-ltz p1, :cond_4

    const/16 v0, 0x19

    if-ge p1, v0, :cond_4

    const/4 v0, 0x6

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1771
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x3e7

    return p0

    :pswitch_1
    return v3

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    return v5

    :pswitch_4
    return v0

    :pswitch_5
    const/16 p0, 0x18

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    .line 1753
    :pswitch_7
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v2

    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseYear(I)I

    move-result v4

    :goto_0
    return v4

    .line 1751
    :pswitch_8
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->daysInYear(I)I

    move-result p0

    return p0

    .line 1748
    :pswitch_9
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1749
    :cond_1
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result p1

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    if-eqz p1, :cond_2

    aget p0, p0, v2

    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    goto :goto_1

    :cond_2
    aget p1, p0, v2

    aget p0, p0, v0

    invoke-static {p1, p0}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    :goto_1
    return v4

    .line 1746
    :pswitch_a
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x5

    aget p0, p0, v0

    invoke-static {p1, p0}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result p0

    return p0

    :pswitch_b
    return v5

    :pswitch_c
    return v1

    :pswitch_d
    return v3

    :pswitch_e
    return v1

    :pswitch_f
    const/16 p0, 0x834

    return p0

    .line 1730
    :pswitch_10
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p0, p0, v4

    if-ne p0, v5, :cond_3

    const p0, 0x116bd2d2

    goto :goto_2

    :cond_3
    const p0, 0x116babff

    :goto_2
    return p0

    :pswitch_11
    return v5

    .line 1723
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field out of range [0-25]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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
.end method

.method public getActualMinimum(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1826
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    .line 1808
    :pswitch_2
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :pswitch_3
    return v0

    .line 1804
    :pswitch_4
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :pswitch_5
    return v0

    :pswitch_6
    return v1

    :pswitch_7
    const/16 p0, 0x76c

    return p0

    :pswitch_8
    return v0

    :pswitch_9
    return v1

    .line 1779
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field out of range [0-25]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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
.end method

.method public getChineseLeapMonth()I
    .locals 1

    .line 1610
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    invoke-static {p0}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p0

    return p0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 830
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1632
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public isChineseLeapMonth()Z
    .locals 1

    .line 1602
    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0x8

    aget p0, p0, v0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeapYear(I)Z
    .locals 2

    .line 1835
    iget p0, p0, Lmiuix/pickerwidget/date/Calendar;->changeYear:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p0, :cond_2

    .line 1836
    rem-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_0

    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 1839
    :cond_2
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public outOfChineseCalendarRange()Z
    .locals 7

    .line 1346
    iget-wide v0, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    iget-object p0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v2, 0x17

    aget v2, p0, v2

    int-to-long v3, v2

    const-wide v5, -0x201b77f5c00L

    sub-long/2addr v5, v3

    const/16 v3, 0x18

    aget p0, p0, v3

    int-to-long v3, p0

    sub-long/2addr v5, v3

    cmp-long v3, v0, v5

    if-ltz v3, :cond_1

    const-wide v3, 0x3c314a71400L

    int-to-long v5, v2

    sub-long/2addr v3, v5

    int-to-long v5, p0

    sub-long/2addr v3, v5

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public set(II)Lmiuix/pickerwidget/date/Calendar;
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

    .line 983
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 986
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput v4, p1, v5

    goto :goto_1

    .line 984
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "year "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 988
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v7

    if-ge p2, v7, :cond_3

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v7

    if-gt p2, v7, :cond_2

    goto :goto_0

    .line 989
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 992
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v0, 0x0

    aput v0, p1, v5

    .line 994
    :goto_1
    iget-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aput p2, p1, v3

    .line 995
    aget v0, p1, v5

    if-ne v0, v4, :cond_4

    .line 996
    aget p1, p1, v6

    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result p1

    goto :goto_2

    .line 997
    :cond_4
    aget p1, p1, v6

    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result p1

    .line 998
    :goto_2
    iget-object p2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/16 v0, 0xa

    aget v1, p2, v0

    if-le v1, p1, :cond_5

    .line 999
    aput p1, p2, v0

    .line 1001
    :cond_5
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-object p0

    .line 1005
    :cond_6
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v3

    if-ge p2, v3, :cond_8

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt p2, v3, :cond_7

    goto :goto_3

    .line 1006
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1011
    :cond_8
    :goto_3
    :try_start_0
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1013
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported set field:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;
    .locals 2

    const-string v0, "Year "

    if-ltz p2, :cond_5

    const/16 v1, 0xb

    if-gt p2, v1, :cond_5

    if-lez p3, :cond_4

    .line 873
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/date/Calendar;->isLeapYear(I)Z

    move-result v1

    invoke-static {v1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    if-gt p3, v1, :cond_4

    if-ltz p4, :cond_3

    const/16 v0, 0x17

    if-gt p4, v0, :cond_3

    if-ltz p5, :cond_2

    const/16 v0, 0x3b

    if-gt p5, v0, :cond_2

    if-ltz p6, :cond_1

    if-gt p6, v0, :cond_1

    if-ltz p7, :cond_0

    const/16 v0, 0x3e7

    if-gt p7, v0, :cond_0

    .line 893
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x5

    .line 894
    aput p2, v0, p1

    const/16 p1, 0x9

    .line 895
    aput p3, v0, p1

    const/16 p1, 0x12

    .line 896
    aput p4, v0, p1

    const/16 p1, 0x14

    .line 897
    aput p5, v0, p1

    const/16 p1, 0x15

    .line 898
    aput p6, v0, p1

    const/16 p1, 0x16

    .line 899
    aput p7, v0, p1

    .line 901
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onSolarDateChange()V

    return-object p0

    .line 890
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid millisecond "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 886
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid second "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 882
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid minute "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 878
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid hour "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 874
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no day "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 870
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChineseTime(IIIZIIII)Lmiuix/pickerwidget/date/Calendar;
    .locals 4

    const/16 v0, 0x76c

    if-lt p1, v0, :cond_a

    const/16 v0, 0x834

    if-gt p1, v0, :cond_a

    const-string v0, "Year "

    if-ltz p2, :cond_9

    const/16 v1, 0xb

    if-gt p2, v1, :cond_9

    if-eqz p4, :cond_1

    .line 926
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapChineseMonth(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no leap month "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, " has no day "

    const-string v2, " month "

    if-eqz p4, :cond_3

    if-lez p3, :cond_2

    .line 931
    invoke-static {p1}, Lmiuix/pickerwidget/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v3

    if-gt p3, v3, :cond_2

    goto :goto_1

    .line 932
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-lez p3, :cond_8

    .line 935
    invoke-static {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->daysInChineseMonth(II)I

    move-result v3

    if-gt p3, v3, :cond_8

    :goto_1
    if-ltz p5, :cond_7

    const/16 v0, 0x17

    if-gt p5, v0, :cond_7

    if-ltz p6, :cond_6

    const/16 v0, 0x3b

    if-gt p6, v0, :cond_6

    if-ltz p7, :cond_5

    if-gt p7, v0, :cond_5

    if-ltz p8, :cond_4

    const/16 v0, 0x3e8

    if-gt p8, v0, :cond_4

    .line 956
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x6

    .line 957
    aput p2, v0, p1

    const/16 p1, 0xa

    .line 958
    aput p3, v0, p1

    const/16 p1, 0x8

    .line 959
    aput p4, v0, p1

    const/16 p1, 0x12

    .line 960
    aput p5, v0, p1

    const/16 p1, 0x14

    .line 961
    aput p6, v0, p1

    const/16 p1, 0x15

    .line 962
    aput p7, v0, p1

    const/16 p1, 0x16

    .line 963
    aput p8, v0, p1

    .line 965
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->onChineseDateChange()V

    return-object p0

    .line 953
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid millisecond "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 949
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid second "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 945
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid minute "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 941
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid hour "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 936
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 923
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 919
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Date out of range [1900 - 2100] expected, but year is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    if-nez p3, :cond_0

    .line 849
    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    return-object p0

    .line 852
    :cond_0
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 853
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->safeCompute()V

    return-object p0
.end method

.method public setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    .line 839
    iput-wide p1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    .line 840
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 807
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 810
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 812
    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;->compute()V

    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1650
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1651
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[time"

    .line 1652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    iget-wide v1, p0, Lmiuix/pickerwidget/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",zone="

    .line 1654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    iget-object v1, p0, Lmiuix/pickerwidget/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 1658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1659
    sget-object v2, Lmiuix/pickerwidget/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 1660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1661
    iget-object v2, p0, Lmiuix/pickerwidget/date/Calendar;->mFields:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x5d

    .line 1663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1665
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method
