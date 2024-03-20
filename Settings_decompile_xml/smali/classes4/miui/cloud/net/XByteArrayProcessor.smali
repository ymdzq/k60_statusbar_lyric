.class public Lmiui/cloud/net/XByteArrayProcessor;
.super Ljava/lang/Object;
.source "XByteArrayProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static IN_DATA_PROCESSING_BUFFER_LEN:I = 0x100

.field private static MIME_TYPE:Ljava/lang/String; = "application/octet-stream"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XByteArrayProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lmiui/cloud/net/XByteArrayProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method protected static getContentLengthFromHeader(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 92
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "identity"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_1
    const-string v0, "Content-Length"

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 100
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    return v1

    .line 109
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 73
    sget-object p0, Lmiui/cloud/net/XByteArrayProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, [B

    .line 79
    array-length p0, p1

    return p0
.end method

.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lmiui/cloud/net/XByteArrayProcessor;->getContentLengthFromHeader(Ljava/util/Map;)I

    move-result p0

    const/4 p1, 0x0

    if-gez p0, :cond_1

    .line 39
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    sget v0, Lmiui/cloud/net/XByteArrayProcessor;->IN_DATA_PROCESSING_BUFFER_LEN:I

    new-array v0, v0, [B

    .line 43
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 45
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_1

    .line 53
    :cond_1
    new-array v0, p0, [B

    :cond_2
    sub-int v1, p0, p1

    .line 57
    invoke-virtual {p2, v0, p1, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_3

    add-int/2addr p1, v1

    if-ne p1, p0, :cond_2

    :cond_3
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    check-cast p1, [B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
