.class public final Lcom/xiaomi/onetrack/api/v;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/v;->b:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/v;->a:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "page_end"

    .line 2
    const-string v1, "B"

    .line 4
    const-string v2, "OneTrackImp"

    .line 6
    const-string v3, ""

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v5

    .line 17
    if-nez v5, :cond_1

    .line 18
    new-instance v5, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    move-result-object v4

    .line 28
    const-string v6, "app_end"

    .line 29
    iget-boolean v7, p0, Lcom/xiaomi/onetrack/api/v;->a:Z

    .line 31
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    move-result-object v4

    .line 36
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/v;->b:Lcom/xiaomi/onetrack/api/m;

    .line 37
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 39
    const-string v6, "onetrack_pa"

    .line 41
    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-interface {p0, v6, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 54
    if-eqz p0, :cond_0

    .line 56
    const-string/jumbo p0, "trackPageEndAuto"

    .line 58
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "trackPageEndAuto error:"

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, v0, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void
    .line 80
.end method
