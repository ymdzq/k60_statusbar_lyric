.class public final Lcom/miui/analytics/MiuiFreeFormTackImpl;
.super Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final trackEventBg(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string p0, "app_package_name"

    .line 2
    const-string v0, "MiuiFreeFormTrackImpl"

    .line 4
    const-string v1, "app_display_name"

    .line 6
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    invoke-static {p1, p0}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_0
    const-string p0, "23022700"

    .line 33
    invoke-static {p2, p1, p0}, Lcom/miui/analytics/MiuiTrackUtils;->addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "reflect error when get MiuiTrackManager."

    .line 47
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :goto_0
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 52
    move-result-object p0

    .line 55
    const-string p1, "android"

    .line 56
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 61
    const-string v0, "31000000538"

    .line 62
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/analytics/MiuiTrackManagerStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
    .line 67
.end method
