.class public final Lcom/xiaomi/onetrack/c/k;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/j;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/j;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->c()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lorg/json/JSONObject;

    .line 28
    const-string v2, "eventName"

    .line 30
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    const-string v3, "data"

    .line 36
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/k;->a:Lcom/xiaomi/onetrack/api/j;

    .line 42
    invoke-interface {v3, v2, v1}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x1

    .line 48
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "cta event error: "

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "NetworkAccessManager"

    .line 61
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    :goto_1
    const/4 p0, 0x0

    .line 66
    sput-boolean p0, Lcom/xiaomi/onetrack/c/i;->l:Z

    .line 67
    return-void
    .line 69
.end method
