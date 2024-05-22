.class public abstract Lcom/xiaomi/onetrack/b/e;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    return-void
    .line 9
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p0, "code"

    .line 14
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_3

    .line 20
    const-string p0, "hash"

    .line 22
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    const-string v1, "data"

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    const-string v1, "regionUrl"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    sget-object v2, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    .line 44
    sget-object v2, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    .line 46
    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V

    .line 48
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    const-string v1, "common_cloud_data"

    .line 55
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "common_config_hash"

    .line 60
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v0

    .line 68
    const-wide/32 v2, 0x5265c00

    .line 69
    add-long/2addr v0, v2

    .line 72
    new-instance p0, Ljava/util/Random;

    .line 73
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 75
    const v2, 0x5265c00

    .line 78
    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 81
    move-result p0

    .line 84
    int-to-long v2, p0

    .line 85
    add-long/2addr v0, v2

    .line 86
    const-string p0, "next_update_common_conf_time"

    .line 87
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "saveCommonCloudData: "

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    const-string v0, "CommonConfigUpdater"

    .line 112
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    :goto_0
    return-void
    .line 117
.end method

.method public static b()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "CommonConfigUpdater"

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string v0, "net is not connected!"

    .line 11
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "common_cloud_data"

    .line 17
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 30
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 33
    const-wide/16 v3, 0x0

    .line 35
    const-string v5, "next_update_common_conf_time"

    .line 37
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 39
    move-result-wide v3

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v5

    .line 46
    cmp-long v0, v3, v5

    .line 47
    if-ltz v0, :cond_3

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v5

    .line 54
    sub-long/2addr v3, v5

    .line 55
    const-wide/32 v5, 0xa4cb800

    .line 56
    cmp-long v0, v3, v5

    .line 59
    if-lez v0, :cond_2

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    move v0, v1

    .line 66
    :goto_2
    if-eqz v0, :cond_6

    .line 67
    const-string/jumbo v0, "url:"

    .line 69
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 72
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    goto/16 :goto_4

    .line 78
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    .line 80
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    :try_start_0
    sget-object v4, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 85
    const-string v5, "oa"

    .line 87
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 89
    move-result-object v6

    .line 92
    invoke-virtual {v6, v4}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 96
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v4, "ov"

    .line 100
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "ob"

    .line 107
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 112
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v4, "ii"

    .line 116
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    .line 118
    move-result v5

    .line 121
    if-eqz v5, :cond_5

    .line 122
    const-string v5, "1"

    .line 124
    goto :goto_3

    .line 126
    :cond_5
    const-string v5, "0"

    .line 127
    :goto_3
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v4, "sv"

    .line 132
    const-string v5, "2.1.0"

    .line 135
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "appVer"

    .line 140
    sget-object v5, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 142
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v4, "av"

    .line 147
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 149
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "ml"

    .line 154
    sget-object v5, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    .line 156
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 158
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v4, "re"

    .line 163
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 168
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "platform"

    .line 172
    const-string v5, "Android"

    .line 174
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v4, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    .line 179
    sget-object v4, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    .line 181
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->j()Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 189
    const-string v5, "/api/v4/detail/config_common"

    .line 190
    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 195
    invoke-static {v4, v3, v1}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, " response:"

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 219
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_4

    .line 226
    :catch_0
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    const-string v3, "requestCloudData: "

    .line 230
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 245
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    goto :goto_4

    .line 249
    :cond_6
    const-string v0, "CommonConfigUpdater Does not meet prerequisites for request"

    .line 250
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_4
    return-void
    .line 255
.end method

.method public static c()Ljava/util/Map;
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    return-object v0

    .line 10
    :cond_0
    const-string v1, "common_cloud_data"

    .line 11
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    .line 23
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "levels"

    .line 28
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 35
    move-result v3

    .line 38
    if-ge v2, v3, :cond_2

    .line 39
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    move-result-object v3

    .line 44
    const-string v4, "l"

    .line 45
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    move-result v4

    .line 50
    const-string/jumbo v5, "t"

    .line 51
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 54
    move-result v3

    .line 57
    if-lez v4, :cond_1

    .line 58
    if-lez v3, :cond_1

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v3

    .line 69
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "getLevelIntervalConfig: "

    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 94
    const-string v2, "CommonConfigUpdater"

    .line 95
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 100
    move-result v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    new-instance v0, Ljava/util/HashMap;

    .line 106
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const/4 v1, 0x1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v1

    .line 115
    const/16 v2, 0x3e8

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/4 v1, 0x2

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v1

    .line 129
    const/16 v2, 0x3a98

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v1, 0x3

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v1

    .line 143
    const v2, 0xdbba0

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    return-object v0
    .line 154
.end method
