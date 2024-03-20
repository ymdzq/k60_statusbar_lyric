.class Lmiui/cloud/net/XUrlencodedProcessor$1;
.super Ljava/lang/Object;
.source "XUrlencodedProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XUrlencodedProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .locals 0

    .line 25
    invoke-static {}, Lmiui/cloud/net/XUrlencodedProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 26
    new-instance p0, Lmiui/cloud/net/XUrlencodedProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XUrlencodedProcessor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .locals 0

    .line 32
    instance-of p0, p1, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 33
    new-instance p0, Lmiui/cloud/net/XUrlencodedProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XUrlencodedProcessor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
