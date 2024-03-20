.class public final Lcom/xiaomi/onetrack/b/c;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const-string v0, "AppConfigUpdater"

    .line 2
    const-string v1, "checkAppConfigVersion start"

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    .line 9
    const-string v1, "config"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    move-result-object p0

    .line 16
    if-eqz p0, :cond_7

    .line 17
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 21
    move-result v3

    .line 24
    if-ge v2, v3, :cond_7

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 27
    move-result-object v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    const-string v4, ""

    .line 33
    goto :goto_1

    .line 35
    :cond_0
    const-string v4, "appId"

    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    const-string v6, "appId: "

    .line 44
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 55
    invoke-static {v0, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v5

    .line 62
    if-nez v5, :cond_6

    .line 63
    const-string/jumbo v5, "version"

    .line 65
    if-nez v3, :cond_1

    .line 68
    move v3, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 72
    move-result v3

    .line 75
    :goto_2
    sget-object v6, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 76
    invoke-virtual {v6, v4}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    .line 78
    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    iget-object v6, v6, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 84
    if-eqz v6, :cond_2

    .line 86
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 88
    move-result v5

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    move v5, v1

    .line 93
    :goto_3
    sget-object v6, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 99
    check-cast v6, Ljava/lang/Long;

    .line 100
    const/4 v7, 0x1

    .line 102
    if-eqz v6, :cond_4

    .line 103
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 105
    move-result-wide v8

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    move-result-wide v10

    .line 112
    sub-long/2addr v8, v10

    .line 113
    const-wide/16 v10, 0x0

    .line 114
    cmp-long v8, v8, v10

    .line 116
    if-ltz v8, :cond_4

    .line 118
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 120
    move-result-wide v8

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    move-result-wide v10

    .line 127
    sub-long/2addr v8, v10

    .line 128
    const-wide/32 v10, 0x1b7740

    .line 129
    cmp-long v6, v8, v10

    .line 132
    if-lez v6, :cond_3

    .line 134
    goto :goto_4

    .line 136
    :cond_3
    move v6, v1

    .line 137
    goto :goto_5

    .line 138
    :cond_4
    :goto_4
    move v6, v7

    .line 139
    :goto_5
    sget-object v8, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 142
    move-result v9

    .line 145
    if-eqz v9, :cond_5

    .line 146
    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v9

    .line 151
    check-cast v9, Ljava/lang/Boolean;

    .line 152
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    move-result v9

    .line 157
    if-eqz v9, :cond_5

    .line 158
    goto :goto_6

    .line 160
    :cond_5
    move v7, v1

    .line 161
    :goto_6
    const-string v9, "local version: "

    .line 162
    const-string v10, ", server version: "

    .line 164
    const-string v11, ", canUpdate: "

    .line 166
    invoke-static {v9, v5, v10, v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move-result-object v9

    .line 171
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    const-string v10, ", isScheduling: "

    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v9

    .line 186
    invoke-static {v0, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-lez v3, :cond_6

    .line 190
    if-le v3, v5, :cond_6

    .line 192
    if-eqz v6, :cond_6

    .line 194
    if-nez v7, :cond_6

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 198
    move-result-object v3

    .line 201
    iput v1, v3, Landroid/os/Message;->what:I

    .line 202
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 206
    move-result-wide v5

    .line 209
    const-wide v9, 0x413b774000000000L    # 1800000.0

    .line 210
    mul-double/2addr v5, v9

    .line 215
    double-to-long v5, v5

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v9, "the message will be handled after "

    .line 219
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    const-string v9, " ms"

    .line 228
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v7

    .line 236
    invoke-static {v0, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v7, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$b;

    .line 240
    invoke-virtual {v7, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    invoke-virtual {v8, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_7
    return-void
    .line 254
.end method
