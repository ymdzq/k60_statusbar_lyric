.class public abstract Lcom/xiaomi/onetrack/b/n;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile b:Z = false

.field public static volatile c:Z = true


# direct methods
.method public static a(I)I
    .locals 3

    .line 7
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->b:Z

    const-string v1, "ConfigProvider"

    if-eqz v0, :cond_0

    const-string p0, "debug upload mode, send events immediately"

    .line 8
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->c()Ljava/util/Map;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p0, 0xea60

    .line 11
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getUploadInterval "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static a()Z
    .locals 5

    const-string v0, "ConfigProvider"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    .line 2
    sget-object v2, Lcom/xiaomi/onetrack/d/f$a;->a:Lcom/xiaomi/onetrack/d/f;

    .line 3
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/d/f;->b()[Ljava/lang/String;

    move-result-object v2

    .line 4
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ConfigProvider.available"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1
.end method
