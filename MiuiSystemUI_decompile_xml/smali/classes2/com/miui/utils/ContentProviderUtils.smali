.class public abstract Lcom/miui/utils/ContentProviderUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 1
    const-string v0, ",providerUri:"

    .line 2
    const-string v1, "ContentProviderUtils"

    .line 4
    const-string v2, "getResultFromProvider provider=null callMethod:"

    .line 6
    const-string v3, "getResultFromProvider exception callMethod:"

    .line 8
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez p0, :cond_1

    .line 19
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 42
    new-instance v5, Ljava/lang/Throwable;

    .line 43
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 45
    invoke-static {v1, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 53
    :cond_0
    return-object v4

    .line 56
    :cond_1
    :try_start_2
    invoke-virtual {p0, p2, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 57
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 61
    return-object p1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception p0

    .line 69
    move-object v2, p0

    .line 70
    move-object p0, v4

    .line 71
    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 86
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    if-eqz p0, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 99
    :cond_2
    return-object v4

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    move-object v4, p0

    .line 104
    move-object p0, p1

    .line 105
    :goto_1
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V

    .line 108
    :cond_3
    throw p0
    .line 111
.end method
