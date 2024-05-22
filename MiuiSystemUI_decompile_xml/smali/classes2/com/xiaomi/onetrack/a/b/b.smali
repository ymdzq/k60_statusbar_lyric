.class public final Lcom/xiaomi/onetrack/a/b/b;
.super Lcom/xiaomi/onetrack/f/b;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    .line 18
    new-instance p2, Lorg/json/JSONObject;

    .line 20
    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    const-string p4, "H"

    .line 25
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object p4

    .line 30
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    .line 31
    sget-object p2, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 33
    const-string v0, "level"

    .line 35
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    move-result p1

    .line 41
    iput p1, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    .line 42
    invoke-virtual {p0, p4}, Lcom/xiaomi/onetrack/a/b/b;->a(Lorg/json/JSONObject;)V

    .line 44
    if-nez p4, :cond_0

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    const-string p0, "ot_ad_monitor"

    .line 50
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p4, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    const-string p2, "CustomEvent error:"

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string p2, "OTAdEvent"

    .line 70
    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    return-void
    .line 75
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "ot_ad_monitor"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 7
    move-result-object p1

    .line 10
    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 13
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 25
    move-result v2

    .line 28
    if-ge v1, v2, :cond_4

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    goto :goto_2

    .line 41
    :cond_1
    const-string v3, "api.ad.xiaomi.com"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    const-string v3, "_sn_"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    const-string v3, "?"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, "&_sn_="

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "?_sn_="

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 108
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 122
    :cond_3
    :goto_1
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    .line 123
    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 125
    iget-object v4, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 128
    iput-object v4, v3, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 130
    iget-object v4, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 132
    iput-object v4, v3, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    .line 134
    iget-wide v4, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    .line 136
    iput-wide v4, v3, Lcom/xiaomi/onetrack/a/b/a;->g:J

    .line 138
    iget-object v4, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 140
    iput-object v4, v3, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 142
    iput-object v2, v3, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 149
    goto :goto_0

    .line 151
    :cond_4
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/b;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    goto :goto_3

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "parseAdMonitor Throwable:"

    .line 158
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 173
    const-string p1, "OTAdEvent"

    .line 174
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_5
    :goto_3
    return-void
    .line 179
.end method
