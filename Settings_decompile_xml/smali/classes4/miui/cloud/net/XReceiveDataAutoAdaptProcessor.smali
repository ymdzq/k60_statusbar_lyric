.class public Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;
.super Lmiui/cloud/net/XAutoAdaptProcessor;
.source "XReceiveDataAutoAdaptProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    return-void
.end method

.method private getContentTypeAndEncodeFromHeader(Ljava/util/Map;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "Content-Type"

    .line 39
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string p1, "utf-8"

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, ";"

    .line 43
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 46
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 48
    aget-object p0, p0, v2

    const-string v1, "="

    .line 50
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 51
    array-length v1, p0

    if-le v1, v2, :cond_1

    .line 52
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "text/plain"

    .line 56
    :cond_1
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
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

    .line 19
    invoke-direct {p0, p1}, Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;->getContentTypeAndEncodeFromHeader(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    .line 21
    sget-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget-object v4, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {v3, p1, p2}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
