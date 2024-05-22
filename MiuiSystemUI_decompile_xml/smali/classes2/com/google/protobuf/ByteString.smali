.class public abstract Lcom/google/protobuf/ByteString;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/google/protobuf/ByteString;

.field public static final byteArrayCopier:Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;


# instance fields
.field private hash:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 2
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 6
    sput-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 9
    invoke-static {}, Lcom/google/protobuf/Android;->isOnAndroidDevice()Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;

    .line 18
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;-><init>(II)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;

    .line 25
    invoke-direct {v0, v1, v1}, Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;-><init>(II)V

    .line 27
    :goto_0
    sput-object v0, Lcom/google/protobuf/ByteString;->byteArrayCopier:Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 6
    return-void
    .line 8
.end method

.method public static checkRange(III)I
    .locals 3

    .line 1
    sub-int v0, p1, p0

    .line 2
    or-int v1, p0, p1

    .line 4
    or-int/2addr v1, v0

    .line 6
    sub-int v2, p2, p1

    .line 7
    or-int/2addr v1, v2

    .line 9
    if-gez v1, :cond_2

    .line 10
    if-ltz p0, :cond_1

    .line 12
    if-ge p1, p0, :cond_0

    .line 14
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    const-string v0, "Beginning index larger than ending index: "

    .line 18
    const-string v1, ", "

    .line 20
    invoke-static {v0, p0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p2

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    const-string v0, "End index: "

    .line 32
    const-string v1, " >= "

    .line 34
    invoke-static {v0, p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 44
    const-string p2, "Beginning index: "

    .line 46
    const-string v0, " < 0"

    .line 48
    invoke-static {p2, p0, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 57
    :cond_2
    return v0
    .line 58
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    add-int v0, p1, p2

    .line 2
    array-length v1, p0

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 5
    new-instance v1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 8
    sget-object v2, Lcom/google/protobuf/ByteString;->byteArrayCopier:Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;

    .line 10
    iget v2, v2, Lcom/google/protobuf/ByteString$ArraysByteArrayCopier;->$r8$classId:I

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 18
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    new-array v0, p2, [B

    .line 23
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    move-object p0, v0

    .line 29
    :goto_1
    invoke-direct {v1, p0}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 30
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method


# virtual methods
.method public abstract byteAt(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 6
    move-result v0

    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 11
    iget-object v2, v1, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 15
    move-result v1

    .line 18
    add-int/lit8 v1, v1, 0x0

    .line 19
    move v4, v0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    add-int v5, v1, v0

    .line 23
    if-ge v3, v5, :cond_0

    .line 25
    mul-int/lit8 v4, v4, 0x1f

    .line 27
    aget-byte v5, v2, v3

    .line 29
    add-int/2addr v4, v5

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    if-nez v4, :cond_1

    .line 35
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v4

    .line 39
    :goto_1
    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 40
    :cond_2
    return v0
    .line 42
.end method

.method public abstract internalByteAt(I)B
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/ByteString$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/protobuf/ByteString$1;-><init>(Lcom/google/protobuf/ByteString;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public final peekCachedHashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 2
    return p0
    .line 4
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 18
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 29
    move-result v2

    .line 32
    const/16 v4, 0x32

    .line 33
    if-gt v2, v4, :cond_0

    .line 35
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    check-cast p0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 49
    move-result v4

    .line 52
    const/16 v5, 0x2f

    .line 53
    invoke-static {v3, v5, v4}, Lcom/google/protobuf/ByteString;->checkRange(III)I

    .line 55
    move-result v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    new-instance v5, Lcom/google/protobuf/ByteString$BoundedByteString;

    .line 64
    iget-object v6, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 68
    move-result p0

    .line 71
    add-int/2addr p0, v3

    .line 72
    invoke-direct {v5, v6, p0, v4}, Lcom/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    .line 73
    move-object p0, v5

    .line 76
    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string p0, "..."

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    :goto_1
    const/4 v2, 0x2

    .line 93
    aput-object p0, v1, v2

    .line 94
    const-string p0, "<ByteString@%s size=%d contents=\"%s\">"

    .line 96
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    return-object p0
    .line 102
.end method

.method public final toStringUtf8()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    const-string p0, ""

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast p0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 13
    new-instance v1, Ljava/lang/String;

    .line 15
    iget-object v2, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 19
    move-result v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 23
    move-result p0

    .line 26
    invoke-direct {v1, v2, v3, p0, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 27
    move-object p0, v1

    .line 30
    :goto_0
    return-object p0
    .line 31
.end method
