.class public final Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final doubleQuoteSuffix:Lokio/Options;

.field public final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 7
    return-void
    .line 9
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    .locals 12

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lokio/ByteString;

    .line 3
    new-instance v1, Lokio/Buffer;

    .line 5
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 7
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    array-length v4, p0

    .line 12
    if-ge v3, v4, :cond_7

    .line 13
    aget-object v4, p0, v3

    .line 15
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 17
    const/16 v6, 0x22

    .line 19
    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 24
    move-result v7

    .line 27
    move v8, v2

    .line 28
    move v9, v8

    .line 29
    :goto_1
    if-ge v8, v7, :cond_5

    .line 30
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 32
    move-result v10

    .line 35
    const/16 v11, 0x80

    .line 36
    if-ge v10, v11, :cond_0

    .line 38
    aget-object v10, v5, v10

    .line 40
    if-nez v10, :cond_2

    .line 42
    goto :goto_3

    .line 44
    :cond_0
    const/16 v11, 0x2028

    .line 45
    if-ne v10, v11, :cond_1

    .line 47
    const-string v10, "\\u2028"

    .line 49
    goto :goto_2

    .line 51
    :cond_1
    const/16 v11, 0x2029

    .line 52
    if-ne v10, v11, :cond_4

    .line 54
    const-string v10, "\\u2029"

    .line 56
    :cond_2
    :goto_2
    if-ge v9, v8, :cond_3

    .line 58
    invoke-virtual {v1, v9, v8, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    .line 60
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 63
    move-result v9

    .line 66
    invoke-virtual {v1, v2, v9, v10}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    .line 67
    add-int/lit8 v9, v8, 0x1

    .line 70
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 72
    goto :goto_1

    .line 74
    :cond_5
    if-ge v9, v7, :cond_6

    .line 75
    invoke-virtual {v1, v9, v7, v4}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    .line 77
    :cond_6
    invoke-virtual {v1, v6}, Lokio/Buffer;->writeByte(I)V

    .line 80
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 83
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 86
    move-result-object v4

    .line 89
    aput-object v4, v0, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_7
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 95
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 100
    check-cast p0, [Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    .line 103
    move-result-object v0

    .line 106
    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object v1

    .line 110
    :catch_0
    move-exception p0

    .line 111
    new-instance v0, Ljava/lang/AssertionError;

    .line 112
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 114
    throw v0
    .line 117
.end method
