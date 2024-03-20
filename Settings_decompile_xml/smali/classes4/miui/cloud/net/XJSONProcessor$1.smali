.class Lmiui/cloud/net/XJSONProcessor$1;
.super Ljava/lang/Object;
.source "XJSONProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XJSONProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .locals 0

    .line 21
    invoke-static {}, Lmiui/cloud/net/XJSONProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 22
    new-instance p0, Lmiui/cloud/net/XJSONProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XJSONProcessor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .locals 0

    .line 28
    instance-of p0, p1, Lorg/json/JSONObject;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_1
    :goto_0
    new-instance p0, Lmiui/cloud/net/XJSONProcessor;

    invoke-direct {p0, p2}, Lmiui/cloud/net/XJSONProcessor;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
