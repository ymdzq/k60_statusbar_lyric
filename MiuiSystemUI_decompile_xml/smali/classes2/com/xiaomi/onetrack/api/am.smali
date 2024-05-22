.class public final Lcom/xiaomi/onetrack/api/am;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/xiaomi/onetrack/api/j;


# instance fields
.field public final e:Lcom/xiaomi/onetrack/Configuration;

.field public final f:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/xiaomi/onetrack/f/g;

    .line 9
    invoke-direct {v0, p1}, Lcom/xiaomi/onetrack/f/g;-><init>(Landroid/content/Context;)V

    .line 11
    sput-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    .line 14
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 16
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/am;->f:Lcom/xiaomi/onetrack/util/v;

    .line 18
    return-void
    .line 20
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/Set;)V
    .locals 4

    const-string v0, "OneTrackLocalImp"

    if-eqz p0, :cond_3

    .line 71
    move-object v1, p1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonObject: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bannedParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 74
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "filterParams error\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "jsonObject is null or bannedParams is empty"

    .line 80
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    return v2

    .line 17
    :cond_1
    :try_start_0
    const-string v0, "\\."

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_3

    .line 24
    array-length v0, p0

    .line 26
    const/4 v3, 0x5

    .line 27
    if-lt v0, v3, :cond_3

    .line 28
    const-string v0, ","

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    if-nez v3, :cond_2

    .line 36
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    array-length v0, p1

    .line 44
    if-lez v0, :cond_2

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "StringToList error: "

    .line 55
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    const-string v0, "com.xiaomi.onetrack.util.z"

    .line 71
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 76
    :goto_0
    if-eqz p1, :cond_3

    .line 77
    const/4 v0, 0x4

    .line 79
    aget-object p0, p0, v0

    .line 80
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    if-eqz p0, :cond_3

    .line 86
    return v1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "isMatchId error\uff1a"

    .line 92
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v0, "OneTrackLocalImp"

    .line 97
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    :cond_3
    return v2
    .line 102
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 2
    const-string v1, "disable_log"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v2, "ConfigDbManager"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string p0, "config not available, use default value"

    .line 17
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "getBoolean: "

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "isDisableTrackForEvent error: "

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "OneTrackLocalImp"

    .line 59
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 p0, 0x0

    .line 64
    :goto_1
    return p0
    .line 65
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "ConfigDbManager"

    .line 7
    const-string/jumbo v2, "will return common sample "

    .line 9
    const-string/jumbo v3, "will return event sample "

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-object v4, v0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V

    .line 30
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 36
    if-eqz v5, :cond_3

    .line 37
    const-string v5, "sample"

    .line 39
    const/4 v6, -0x1

    .line 41
    invoke-virtual {v0, p0, p1, v5, v6}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 42
    move-result v0

    .line 45
    if-ne v0, v6, :cond_2

    .line 46
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Lcom/xiaomi/onetrack/b/l;

    .line 52
    if-eqz p0, :cond_2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-wide v2, p0, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 73
    goto :goto_1

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    int-to-long v0, v0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "getAppEventSample"

    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    :cond_3
    const-string/jumbo p0, "will return def sample"

    .line 104
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    const-wide/16 v0, 0x64

    .line 110
    :goto_1
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 114
    move-result-object v2

    .line 117
    invoke-virtual {v2, p0}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 122
    move-result p0

    .line 125
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 126
    move-result p0

    .line 129
    rem-int/lit8 p0, p0, 0x64

    .line 130
    int-to-long v2, p0

    .line 132
    cmp-long p0, v0, v2

    .line 133
    const/4 v4, 0x1

    .line 135
    if-lez p0, :cond_4

    .line 136
    move p0, v4

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    const/4 p0, 0x0

    .line 140
    :goto_2
    const-string/jumbo v5, "shouldUploadBySampling "

    .line 141
    const-string v6, ",  shouldUpload="

    .line 144
    const-string v7, ", sample="

    .line 146
    invoke-static {v5, p1, v6, p0, v7}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    move-result-object p1

    .line 151
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, ", val="

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 166
    const-string v0, "OneTrackLocalImp"

    .line 167
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    xor-int/2addr p0, v4

    .line 172
    return p0
    .line 173
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 69
    new-instance p0, Lcom/xiaomi/onetrack/api/an;

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/an;-><init>(I)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, ""

    const-string v1, "OneTrackLocalImp"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "H"

    .line 2
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "B"

    .line 3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v2

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v4, v3

    .line 4
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " data JSONException e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    :goto_1
    const/4 v6, 0x0

    :try_start_3
    const-string v7, "ot_ad"

    .line 5
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6
    :catchall_0
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 7
    :goto_2
    iget-object v8, p0, Lcom/xiaomi/onetrack/api/am;->f:Lcom/xiaomi/onetrack/util/v;

    if-eqz v8, :cond_0

    invoke-virtual {v8, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v7, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 8
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    sget-boolean v8, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    const-string v9, "onetrack_bug_report"

    if-eqz v8, :cond_1

    const-string v8, "Tracking data is disabled or onetrack use system net traffic only, skip it."

    .line 10
    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    const/4 v8, 0x1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v8

    goto :goto_3

    :cond_2
    move v10, v6

    :goto_3
    if-eqz v10, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v7, :cond_4

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    const v11, 0x7d000

    if-le v10, v11, :cond_5

    const-string v8, "ad Event size exceed limitation!"

    .line 13
    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    const v11, 0x19000

    if-le v10, v11, :cond_5

    const-string v8, "Event size exceed limitation!"

    .line 15
    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v8, v6

    :cond_5
    :goto_5
    if-nez v8, :cond_6

    return-void

    .line 16
    :cond_6
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v8

    if-nez v8, :cond_7

    .line 17
    new-instance p0, Lcom/xiaomi/onetrack/c/j;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_7
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    .line 19
    sget-boolean v8, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v8, :cond_8

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "track data:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_8
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/am;->e:Lcom/xiaomi/onetrack/Configuration;

    if-eqz v7, :cond_9

    .line 22
    sget-object p2, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    sget-object p2, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v8, Lcom/xiaomi/onetrack/b/b;

    invoke-direct {v8, p2, v2}, Lcom/xiaomi/onetrack/b/b;-><init>(Lcom/xiaomi/onetrack/b/a;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 26
    :cond_9
    sget-object p2, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    sget-object p2, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    .line 28
    iget-object v8, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v9, Lcom/xiaomi/onetrack/b/b;

    invoke-direct {v9, p2, v8}, Lcom/xiaomi/onetrack/b/b;-><init>(Lcom/xiaomi/onetrack/b/a;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    const-string p2, "bannedParamsForApp: "

    const-string/jumbo v8, "tip: "

    if-eqz v7, :cond_a

    goto :goto_6

    .line 31
    :cond_a
    iget-object v2, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 32
    :goto_6
    :try_start_4
    sget-object p0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    const-string v9, "disable_log"

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 34
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 35
    iget-object v10, p0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v10, :cond_b

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 36
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    .line 37
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppLevelBoolean"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v9, "ConfigDbManager"

    invoke-static {v9, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception p0

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isDisableTrackForApp error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p0, v9, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    :goto_7
    if-eqz v6, :cond_c

    const-string p0, "This app disabled tracking data, skip it."

    .line 40
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 41
    :cond_c
    :try_start_7
    sget-object p0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    const-string v6, "needIds"

    .line 42
    invoke-virtual {p0, v2, p1, v6}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_d

    move-object v9, v0

    goto :goto_8

    :cond_d
    const-string/jumbo v9, "tip"

    .line 43
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 44
    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", needIds: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v9, v6}, Lcom/xiaomi/onetrack/api/am;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v8, "bannedParams"

    if-eqz v6, :cond_10

    .line 46
    :try_start_8
    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/api/am;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string p0, " This event disabled tracking data , skip it."

    .line 47
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 48
    :cond_e
    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/api/am;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string p0, " This event should not upload by sampling , skip it."

    .line 49
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :cond_f
    invoke-virtual {p0, v2, p1, v8}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_10
    move-object v6, v0

    .line 51
    :goto_9
    invoke-virtual {p0, v2}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 52
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p0, :cond_11

    .line 53
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", bannedParamsForEvent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 56
    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/api/am;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 57
    invoke-static {v5, p0}, Lcom/xiaomi/onetrack/api/am;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    if-eqz v7, :cond_12

    .line 58
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/xiaomi/onetrack/f/f;

    invoke-direct {v0, v2, p0, p1, p2}, Lcom/xiaomi/onetrack/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 61
    :cond_12
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 62
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/xiaomi/onetrack/f/e;

    invoke-direct {v0, v2, p0, p1, p2}, Lcom/xiaomi/onetrack/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "checkCloudControl error\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void
.end method
