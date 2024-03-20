.class public final Lcom/xiaomi/onetrack/e/a;
.super Lcom/xiaomi/onetrack/f/b;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    .line 15
    new-instance p2, Lorg/json/JSONObject;

    .line 17
    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    .line 22
    sget-object p2, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 24
    const-string p4, "level"

    .line 26
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 29
    move-result p1

    .line 32
    iput p1, p0, Lcom/xiaomi/onetrack/f/b;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    const-string p2, "CustomEvent error:"

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string p2, "CustomEvent"

    .line 44
    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void
    .line 49
.end method
