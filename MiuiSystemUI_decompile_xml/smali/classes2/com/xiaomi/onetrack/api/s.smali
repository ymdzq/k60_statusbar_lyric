.class public final Lcom/xiaomi/onetrack/api/s;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "onetrack_dau"

    .line 2
    const-string v1, "dau_last_time"

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 6
    sget-object v2, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 9
    const-wide/16 v3, 0x0

    .line 11
    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 13
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    .line 17
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v2

    .line 26
    invoke-static {v1, v2, v3}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    .line 27
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    .line 30
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;

    .line 32
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    .line 36
    iget-object v3, v2, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 38
    iget-object v2, v2, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 40
    invoke-static {v3, v1, v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/s;->a:Lcom/xiaomi/onetrack/api/m;

    .line 46
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 48
    invoke-interface {p0, v0, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v1, "trackDau error  e:"

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v1, "OneTrackImp"

    .line 63
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void
    .line 68
.end method
