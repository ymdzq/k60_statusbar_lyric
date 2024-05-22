.class public final Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method public constructor <init>(J[BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 4
    iput p5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 5
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 6
    iput-object p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    return-void
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 3

    .line 1
    const-string v0, "\u0000"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    move-result-object p0

    .line 13
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 14
    array-length v1, p0

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 18
    return-object v0
    .line 21
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 6
    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 5

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0, v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    return-object p1
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 6

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 2
    const/4 v1, 0x5

    .line 4
    aget v0, v0, v1

    .line 5
    array-length v2, p0

    .line 7
    mul-int/2addr v0, v2

    .line 8
    new-array v0, v0, [B

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    array-length p1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, p1, :cond_0

    .line 20
    aget-object v3, p0, v2

    .line 22
    iget-wide v4, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 24
    long-to-int v4, v4

    .line 26
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 30
    long-to-int v3, v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 39
    array-length p0, p0

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    move-result-object v0

    .line 45
    invoke-direct {p1, v0, v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 46
    return-object p1
    .line 49
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 0

    .line 6
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 4

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0, v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 6
    instance-of p1, p0, Ljava/lang/String;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 14
    move-result-wide p0

    .line 17
    return-wide p0

    .line 18
    :cond_0
    instance-of p1, p0, [J

    .line 19
    const/4 v0, 0x0

    .line 21
    const-string v1, "There are more than one component"

    .line 22
    const/4 v2, 0x1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    check-cast p0, [J

    .line 27
    array-length p1, p0

    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    aget-wide p0, p0, v0

    .line 32
    long-to-double p0, p0

    .line 34
    return-wide p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 36
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 41
    :cond_2
    instance-of p1, p0, [I

    .line 42
    if-eqz p1, :cond_4

    .line 44
    check-cast p0, [I

    .line 46
    array-length p1, p0

    .line 48
    if-ne p1, v2, :cond_3

    .line 49
    aget p0, p0, v0

    .line 51
    int-to-double p0, p0

    .line 53
    return-wide p0

    .line 54
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 55
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 60
    :cond_4
    instance-of p1, p0, [D

    .line 61
    if-eqz p1, :cond_6

    .line 63
    check-cast p0, [D

    .line 65
    array-length p1, p0

    .line 67
    if-ne p1, v2, :cond_5

    .line 68
    aget-wide p0, p0, v0

    .line 70
    return-wide p0

    .line 72
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 73
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 78
    :cond_6
    instance-of p1, p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 79
    if-eqz p1, :cond_8

    .line 81
    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 83
    array-length p1, p0

    .line 85
    if-ne p1, v2, :cond_7

    .line 86
    aget-object p0, p0, v0

    .line 88
    iget-wide v0, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 90
    long-to-double v0, v0

    .line 92
    iget-wide p0, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 93
    long-to-double p0, p0

    .line 95
    div-double/2addr v0, p0

    .line 96
    return-wide v0

    .line 97
    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 98
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 103
    :cond_8
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 104
    const-string p1, "Couldn\'t find a double value"

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0

    .line 111
    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 112
    const-string p1, "NULL can\'t be converted to a double value"

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0
    .line 119
.end method

.method public final getIntValue(Ljava/nio/ByteOrder;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_5

    .line 6
    instance-of p1, p0, Ljava/lang/String;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    instance-of p1, p0, [J

    .line 19
    const/4 v0, 0x0

    .line 21
    const-string v1, "There are more than one component"

    .line 22
    const/4 v2, 0x1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    check-cast p0, [J

    .line 27
    array-length p1, p0

    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    aget-wide p0, p0, v0

    .line 32
    long-to-int p0, p0

    .line 34
    return p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 36
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 41
    :cond_2
    instance-of p1, p0, [I

    .line 42
    if-eqz p1, :cond_4

    .line 44
    check-cast p0, [I

    .line 46
    array-length p1, p0

    .line 48
    if-ne p1, v2, :cond_3

    .line 49
    aget p0, p0, v0

    .line 51
    return p0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 54
    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 59
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 60
    const-string p1, "Couldn\'t find a integer value"

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 67
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 68
    const-string p1, "NULL can\'t be converted to a integer value"

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    .line 75
.end method

.method public final getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    return-object p1

    .line 9
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 14
    return-object p0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    instance-of v1, p0, [J

    .line 22
    const-string v2, ","

    .line 24
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_4

    .line 27
    check-cast p0, [J

    .line 29
    :cond_2
    :goto_0
    array-length p1, p0

    .line 31
    if-ge v3, p1, :cond_3

    .line 32
    aget-wide v4, p0, v3

    .line 34
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 39
    array-length p1, p0

    .line 41
    if-eq v3, p1, :cond_2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_4
    instance-of v1, p0, [I

    .line 53
    if-eqz v1, :cond_7

    .line 55
    check-cast p0, [I

    .line 57
    :cond_5
    :goto_1
    array-length p1, p0

    .line 59
    if-ge v3, p1, :cond_6

    .line 60
    aget p1, p0, v3

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 67
    array-length p1, p0

    .line 69
    if-eq v3, p1, :cond_5

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_7
    instance-of v1, p0, [D

    .line 81
    if-eqz v1, :cond_a

    .line 83
    check-cast p0, [D

    .line 85
    :cond_8
    :goto_2
    array-length p1, p0

    .line 87
    if-ge v3, p1, :cond_9

    .line 88
    aget-wide v4, p0, v3

    .line 90
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 95
    array-length p1, p0

    .line 97
    if-eq v3, p1, :cond_8

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_a
    instance-of v1, p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 109
    if-eqz v1, :cond_d

    .line 111
    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 113
    :cond_b
    :goto_3
    array-length p1, p0

    .line 115
    if-ge v3, p1, :cond_c

    .line 116
    aget-object p1, p0, v3

    .line 118
    iget-wide v4, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 120
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const/16 p1, 0x2f

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    aget-object p1, p0, v3

    .line 130
    iget-wide v4, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 132
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 137
    array-length p1, p0

    .line 139
    if-eq v3, p1, :cond_b

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    goto :goto_3

    .line 145
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :cond_d
    return-object p1
    .line 151
.end method

.method public final getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 2
    const-string v1, "IOException occurred while closing InputStream"

    .line 4
    const-string v2, "ExifInterface"

    .line 6
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 9
    invoke-direct {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iput-object p1, v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 14
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    const-wide v5, 0xffffffffL

    .line 18
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 27
    goto/16 :goto_18

    .line 30
    :pswitch_0
    :try_start_2
    new-array p1, p0, [D

    .line 32
    :goto_0
    if-ge v8, p0, :cond_0

    .line 34
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    .line 36
    move-result-wide v5

    .line 39
    aput-wide v5, p1, v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    add-int/lit8 v8, v8, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 45
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_1
    return-object p1

    .line 53
    :pswitch_1
    :try_start_4
    new-array p1, p0, [D

    .line 54
    :goto_2
    if-ge v8, p0, :cond_1

    .line 56
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    .line 58
    move-result v0

    .line 61
    float-to-double v5, v0

    .line 62
    aput-wide v5, p1, v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    add-int/lit8 v8, v8, 0x1

    .line 65
    goto :goto_2

    .line 67
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 68
    goto :goto_3

    .line 71
    :catch_1
    move-exception p0

    .line 72
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_3
    return-object p1

    .line 76
    :pswitch_2
    :try_start_6
    new-array p1, p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 77
    :goto_4
    if-ge v8, p0, :cond_2

    .line 79
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 81
    move-result v0

    .line 84
    int-to-long v5, v0

    .line 85
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 86
    move-result v0

    .line 89
    int-to-long v9, v0

    .line 90
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 91
    invoke-direct {v0, v5, v6, v9, v10}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 93
    aput-object v0, p1, v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 98
    goto :goto_4

    .line 100
    :cond_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 101
    goto :goto_5

    .line 104
    :catch_2
    move-exception p0

    .line 105
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_5
    return-object p1

    .line 109
    :pswitch_3
    :try_start_8
    new-array p1, p0, [I

    .line 110
    :goto_6
    if-ge v8, p0, :cond_3

    .line 112
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 114
    move-result v0

    .line 117
    aput v0, p1, v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 120
    goto :goto_6

    .line 122
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 123
    goto :goto_7

    .line 126
    :catch_3
    move-exception p0

    .line 127
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :goto_7
    return-object p1

    .line 131
    :pswitch_4
    :try_start_a
    new-array p1, p0, [I

    .line 132
    :goto_8
    if-ge v8, p0, :cond_4

    .line 134
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 136
    move-result v0

    .line 139
    aput v0, p1, v8
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 140
    add-int/lit8 v8, v8, 0x1

    .line 142
    goto :goto_8

    .line 144
    :cond_4
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 145
    goto :goto_9

    .line 148
    :catch_4
    move-exception p0

    .line 149
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_9
    return-object p1

    .line 153
    :pswitch_5
    :try_start_c
    new-array p1, p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 154
    :goto_a
    if-ge v8, p0, :cond_5

    .line 156
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 158
    move-result v0

    .line 161
    int-to-long v9, v0

    .line 162
    and-long/2addr v9, v5

    .line 163
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 164
    move-result v0

    .line 167
    int-to-long v11, v0

    .line 168
    and-long/2addr v11, v5

    .line 169
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 170
    invoke-direct {v0, v9, v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    .line 172
    aput-object v0, p1, v8
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 175
    add-int/lit8 v8, v8, 0x1

    .line 177
    goto :goto_a

    .line 179
    :catch_5
    move-exception p0

    .line 180
    goto/16 :goto_1a

    .line 181
    :cond_5
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 183
    goto :goto_b

    .line 186
    :catch_6
    move-exception p0

    .line 187
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :goto_b
    return-object p1

    .line 191
    :pswitch_6
    :try_start_e
    new-array p1, p0, [J

    .line 192
    :goto_c
    if-ge v8, p0, :cond_6

    .line 194
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 196
    move-result v0

    .line 199
    int-to-long v9, v0

    .line 200
    and-long/2addr v9, v5

    .line 201
    aput-wide v9, p1, v8
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 202
    add-int/lit8 v8, v8, 0x1

    .line 204
    goto :goto_c

    .line 206
    :cond_6
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 207
    goto :goto_d

    .line 210
    :catch_7
    move-exception p0

    .line 211
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_d
    return-object p1

    .line 215
    :pswitch_7
    :try_start_10
    new-array p1, p0, [I

    .line 216
    :goto_e
    if-ge v8, p0, :cond_7

    .line 218
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 220
    move-result v0

    .line 223
    aput v0, p1, v8
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 224
    add-int/lit8 v8, v8, 0x1

    .line 226
    goto :goto_e

    .line 228
    :cond_7
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 229
    goto :goto_f

    .line 232
    :catch_8
    move-exception p0

    .line 233
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :goto_f
    return-object p1

    .line 237
    :pswitch_8
    :try_start_12
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 238
    array-length p1, p1

    .line 240
    if-lt p0, p1, :cond_a

    .line 241
    move p1, v8

    .line 243
    :goto_10
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 244
    array-length v6, v5

    .line 246
    if-ge p1, v6, :cond_9

    .line 247
    aget-byte v6, v0, p1

    .line 249
    aget-byte v9, v5, p1

    .line 251
    if-eq v6, v9, :cond_8

    .line 253
    move v7, v8

    .line 255
    goto :goto_11

    .line 256
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 257
    goto :goto_10

    .line 259
    :cond_9
    :goto_11
    if-eqz v7, :cond_a

    .line 260
    array-length v8, v5

    .line 262
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    :goto_12
    if-ge v8, p0, :cond_d

    .line 268
    aget-byte v5, v0, v8

    .line 270
    if-nez v5, :cond_b

    .line 272
    goto :goto_14

    .line 274
    :cond_b
    const/16 v6, 0x20

    .line 275
    if-lt v5, v6, :cond_c

    .line 277
    int-to-char v5, v5

    .line 279
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    goto :goto_13

    .line 283
    :cond_c
    const/16 v5, 0x3f

    .line 284
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :goto_13
    add-int/lit8 v8, v8, 0x1

    .line 289
    goto :goto_12

    .line 291
    :cond_d
    :goto_14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 295
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 296
    goto :goto_15

    .line 299
    :catch_9
    move-exception p1

    .line 300
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_15
    return-object p0

    .line 304
    :pswitch_9
    :try_start_14
    array-length p0, v0

    .line 305
    if-ne p0, v7, :cond_e

    .line 306
    aget-byte p0, v0, v8

    .line 308
    if-ltz p0, :cond_e

    .line 310
    if-gt p0, v7, :cond_e

    .line 312
    new-instance p1, Ljava/lang/String;

    .line 314
    new-array v0, v7, [C

    .line 316
    add-int/lit8 p0, p0, 0x30

    .line 318
    int-to-char p0, p0

    .line 320
    aput-char p0, v0, v8

    .line 321
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 323
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 326
    goto :goto_16

    .line 329
    :catch_a
    move-exception p0

    .line 330
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :goto_16
    return-object p1

    .line 334
    :cond_e
    :try_start_16
    new-instance p0, Ljava/lang/String;

    .line 335
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 337
    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 339
    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    .line 342
    goto :goto_17

    .line 345
    :catch_b
    move-exception p1

    .line 346
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :goto_17
    return-object p0

    .line 350
    :goto_18
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    .line 351
    goto :goto_19

    .line 354
    :catch_c
    move-exception p0

    .line 355
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_19
    return-object v3

    .line 359
    :catchall_0
    move-exception p0

    .line 360
    move-object v3, v4

    .line 361
    goto :goto_1c

    .line 362
    :catchall_1
    move-exception p0

    .line 363
    goto :goto_1c

    .line 364
    :catch_d
    move-exception p0

    .line 365
    move-object v4, v3

    .line 366
    :goto_1a
    :try_start_19
    const-string p1, "IOException occurred during reading a value"

    .line 367
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 369
    if-eqz v4, :cond_f

    .line 372
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 374
    goto :goto_1b

    .line 377
    :catch_e
    move-exception p0

    .line 378
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    :cond_f
    :goto_1b
    return-object v3

    .line 382
    :goto_1c
    if-eqz v3, :cond_10

    .line 383
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    .line 385
    goto :goto_1d

    .line 388
    :catch_f
    move-exception p1

    .line 389
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_10
    :goto_1d
    throw p0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 394
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 9
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 11
    aget-object v1, v1, v2

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", data length:"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 23
    array-length p0, p0

    .line 25
    const-string v1, ")"

    .line 26
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method
