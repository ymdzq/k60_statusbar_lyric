.class public final Lcom/xiaomi/onetrack/api/ai;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ai;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/onetrack/api/ai;->c:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/xiaomi/onetrack/api/ai;->e:Ljava/lang/String;

    .line 12
    iput-wide p7, p0, Lcom/xiaomi/onetrack/api/ai;->f:J

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "onetrack_bug_report"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    .line 4
    invoke-static {v1}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;

    .line 6
    move-result-object v10

    .line 9
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ai;->g:Lcom/xiaomi/onetrack/api/m;

    .line 10
    iget-object v12, v1, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 12
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ai;->a:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ai;->b:Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ai;->c:Ljava/lang/String;

    .line 18
    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ai;->d:Ljava/lang/String;

    .line 20
    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ai;->e:Ljava/lang/String;

    .line 22
    iget-wide v7, p0, Lcom/xiaomi/onetrack/api/ai;->f:J

    .line 24
    iget-object v9, v1, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 26
    iget-object v11, v1, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 28
    invoke-static/range {v2 .. v11}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-interface {v12, v0, p0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "trackException error: "

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v1, "OneTrackImp"

    .line 47
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void
    .line 52
.end method
