.class public abstract Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sLocale:Ljava/util/Locale;

.field public static sZeroDigit:C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    sput-object v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 6
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    .line 8
    sget-object v1, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 10
    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 12
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 15
    move-result v0

    .line 18
    sput-char v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 19
    return-void
    .line 21
.end method

.method public static format(II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    sget-object v1, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 16
    invoke-direct {v1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 18
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 21
    move-result v1

    .line 24
    sput-char v1, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 25
    sput-object v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    .line 27
    :cond_0
    sget-char v0, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    .line 29
    sget-object v1, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 31
    invoke-virtual {v1}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/StringBuilder;

    .line 37
    if-gez p1, :cond_1

    .line 39
    neg-int p1, p1

    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    const/16 v2, 0x2d

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    const/16 v2, 0x2710

    .line 49
    const/16 v3, 0x30

    .line 51
    if-lt p1, v2, :cond_3

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    move-result v2

    .line 62
    :goto_0
    if-ge v2, p0, :cond_2

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_2

    .line 74
    :cond_3
    const/16 v2, 0x3e8

    .line 75
    if-lt p1, v2, :cond_4

    .line 77
    const/4 v2, 0x4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/16 v2, 0x64

    .line 81
    if-lt p1, v2, :cond_5

    .line 83
    const/4 v2, 0x3

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/16 v2, 0xa

    .line 87
    if-lt p1, v2, :cond_6

    .line 89
    const/4 v2, 0x2

    .line 91
    goto :goto_1

    .line 92
    :cond_6
    const/4 v2, 0x1

    .line 93
    :goto_1
    if-ge v2, p0, :cond_7

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_1

    .line 101
    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    sget-object p1, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 109
    invoke-virtual {p1, v1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 111
    if-eq v0, v3, :cond_a

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 116
    move-result v1

    .line 119
    sub-int/2addr v0, v3

    .line 120
    invoke-virtual {p1}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/StringBuilder;

    .line 125
    const/4 v2, 0x0

    .line 127
    :goto_3
    if-ge v2, v1, :cond_9

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 130
    move-result v4

    .line 133
    if-lt v4, v3, :cond_8

    .line 134
    const/16 v5, 0x39

    .line 136
    if-gt v4, v5, :cond_8

    .line 138
    add-int/2addr v4, v0

    .line 140
    int-to-char v4, v4

    .line 141
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_3

    .line 147
    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 151
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 152
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 154
    :cond_a
    return-object p0

    .line 157
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 158
    const-string p1, "locale == null"

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0
    .line 165
.end method
