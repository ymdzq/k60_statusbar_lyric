.class public Lcom/miui/analytics/MiuiMultiWinTrackImpl;
.super Lcom/miui/analytics/MiuiMultiWinTrackStub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiMultiWinTrackStub;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "23022700"

    .line 7
    invoke-static {p2, p1, p0}, Lcom/miui/analytics/MiuiTrackUtils;->addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 12
    move-result-object p0

    .line 15
    const-string p1, "android"

    .line 16
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    const-string v0, "31000000538"

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/analytics/MiuiTrackManagerStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method
