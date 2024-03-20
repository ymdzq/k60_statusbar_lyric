.class public Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
.super Ljava/lang/Object;
.source "XHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataProcessorFactor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiveDataProcessor(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .locals 0
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
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;"
        }
    .end annotation

    .line 111
    new-instance p0, Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;

    invoke-direct {p0}, Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;-><init>()V

    return-object p0
.end method

.method public getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .locals 0

    .line 106
    new-instance p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
