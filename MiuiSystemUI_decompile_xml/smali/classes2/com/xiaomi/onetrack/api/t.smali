.class public final Lcom/xiaomi/onetrack/api/t;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/t;->b:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "onetrack_pa"

    .line 2
    const-string v1, "OneTrackImp"

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    .line 6
    iget-object v3, v2, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 8
    iget-boolean v3, v3, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 10
    if-nez v3, :cond_0

    .line 12
    const-string p0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    .line 14
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void

    .line 19
    :cond_0
    invoke-static {v2}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;

    .line 20
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/t;->a:Ljava/lang/String;

    .line 24
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    .line 26
    iget-object v5, v4, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 28
    iget-boolean v6, p0, Lcom/xiaomi/onetrack/api/t;->b:Z

    .line 30
    iget-object v4, v4, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 32
    invoke-static {v3, v5, v2, v6, v4}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/t;->c:Lcom/xiaomi/onetrack/api/m;

    .line 38
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 40
    invoke-interface {p0, v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 45
    if-eqz p0, :cond_1

    .line 47
    const-string/jumbo p0, "trackPageStartAuto"

    .line 49
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "auto trackPageStartAuto error: "

    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    return-void
    .line 67
.end method
