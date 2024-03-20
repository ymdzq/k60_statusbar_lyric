.class public Lmiui/cloud/net/XJSONProcessor;
.super Ljava/lang/Object;
.source "XJSONProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field private mBufferedData:Ljava/lang/Object;

.field private mBufferedDataString:Ljava/lang/String;

.field private mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lmiui/cloud/net/XJSONProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XJSONProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XJSONProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lmiui/cloud/net/XJSONProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private bufferData(Ljava/lang/Object;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedData:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedData:Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 73
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private encode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 48
    sget-object p0, Lmiui/cloud/net/XJSONProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->bufferData(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object p0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

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

    .line 42
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->decode(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 61
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->bufferData(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object p0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
