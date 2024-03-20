.class public Lmiui/cloud/net/XPlainTextProcessor;
.super Ljava/lang/Object;
.source "XPlainTextProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private mBufferedString:Ljava/lang/String;

.field private mBufferedStringByte:[B

.field private mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

.field private mEncode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XPlainTextProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XPlainTextProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor;

    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    .line 32
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private bufferString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 77
    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    .line 79
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    new-instance p1, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {p1, p0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 54
    sget-object p0, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

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
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    array-length p0, p0

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

    .line 39
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 44
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object p0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {p1, p0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    iget-object p0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    invoke-virtual {p1, p0, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
