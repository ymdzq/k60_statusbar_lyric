.class Lmiui/cloud/net/XPlainTextProcessor$1;
.super Ljava/lang/Object;
.source "XPlainTextProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XPlainTextProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .locals 0

    .line 18
    invoke-static {}, Lmiui/cloud/net/XPlainTextProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 19
    new-instance p0, Lmiui/cloud/net/XPlainTextProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .locals 0

    .line 25
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 26
    new-instance p0, Lmiui/cloud/net/XPlainTextProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
