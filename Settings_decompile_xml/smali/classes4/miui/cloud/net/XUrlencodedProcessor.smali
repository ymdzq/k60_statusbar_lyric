.class public Lmiui/cloud/net/XUrlencodedProcessor;
.super Ljava/lang/Object;
.source "XUrlencodedProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mBufferedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferedDataString:Ljava/lang/String;

.field private mEncode:Ljava/lang/String;

.field private mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lmiui/cloud/net/XUrlencodedProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XUrlencodedProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 40
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private bufferData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    if-ne v0, p1, :cond_0

    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    .line 120
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    .line 95
    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 96
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 98
    aget-object v4, v1, v3

    const-string v5, "="

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 105
    :try_start_0
    aget-object v5, v4, v2

    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 106
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encode not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XUrlencodedProcessor"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad input data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", wrong format near: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private encode(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "null"

    .line 81
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 82
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {p1, p0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 88
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "&"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 53
    sget-object p0, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 60
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object p0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiui/cloud/net/XPlainTextProcessor;->getOutDataLength(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
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
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->decode(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 68
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    .line 69
    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object p0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
