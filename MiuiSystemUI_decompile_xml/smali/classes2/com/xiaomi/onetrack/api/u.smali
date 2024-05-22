.class public final Lcom/xiaomi/onetrack/api/u;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/u;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/u;->b:J

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
    const-string v0, "OneTrackImp"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    .line 4
    iget-object v2, v1, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 6
    iget-boolean v2, v2, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 8
    if-nez v2, :cond_0

    .line 10
    const-string p0, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    .line 12
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 17
    :cond_0
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;

    .line 18
    move-result-object v5

    .line 21
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/u;->a:Ljava/lang/String;

    .line 22
    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/u;->b:J

    .line 24
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/u;->c:Lcom/xiaomi/onetrack/api/m;

    .line 26
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 28
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    const-string v1, "page_end"

    .line 36
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "savePageEndData error:"

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void
    .line 53
.end method
