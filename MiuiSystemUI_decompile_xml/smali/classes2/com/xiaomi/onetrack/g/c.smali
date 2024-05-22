.class public abstract Lcom/xiaomi/onetrack/g/c;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 2
    const-string v1, "NetworkUtil"

    .line 4
    :try_start_0
    const-string v2, "connectivity"

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    move-result-object p0

    .line 17
    const-string v2, "execute getActiveNetworkInfo()"

    .line 18
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-eqz p0, :cond_3

    .line 23
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 25
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 32
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 39
    return-object p0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 42
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 48
    move-result p0

    .line 51
    packed-switch p0, :pswitch_data_0

    .line 52
    goto :goto_0

    .line 55
    :pswitch_0
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 56
    return-object p0

    .line 58
    :pswitch_1
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 59
    return-object p0

    .line 61
    :pswitch_2
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 62
    return-object p0

    .line 64
    :pswitch_3
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 65
    return-object p0

    .line 67
    :goto_0
    return-object v0

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 69
    move-result p0

    .line 72
    const/16 v2, 0x9

    .line 73
    if-ne p0, v2, :cond_4

    .line 75
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 77
    return-object p0

    .line 79
    :cond_3
    :goto_1
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object p0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    const-string v2, "getNetworkState error"

    .line 84
    invoke-static {v1, v2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_4
    return-object v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method

.method public static b()Z
    .locals 4

    .line 1
    const-string v0, "NetworkUtil"

    .line 2
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    const-string v2, "connectivity"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 14
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    move-result-object v1

    .line 19
    const-string v2, "execute getActiveNetworkInfo()"

    .line 20
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    const-string v3, "isNetworkConnected exception : "

    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 54
    return v0
    .line 55
.end method
