.class public final Lcom/xiaomi/onetrack/b/a;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final A:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final B:Ljava/util/concurrent/ConcurrentHashMap;

.field public static C:Ljava/lang/String;

.field public static final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final w:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final y:Lcom/xiaomi/onetrack/b/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    new-instance v0, Lcom/xiaomi/onetrack/b/a$b;

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/a$b;-><init>(Landroid/os/Looper;)V

    .line 23
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$b;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 30
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->B:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    const-string v0, ""

    .line 42
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    .line 44
    return-void
    .line 46
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p0, "app_config_region"

    .line 5
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    .line 30
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    :goto_0
    return-void
    .line 35
.end method

.method public static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 8

    const-string v0, "event"

    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 107
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 108
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    :goto_1
    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 111
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 115
    :cond_1
    :goto_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deleted"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    if-nez p0, :cond_3

    .line 116
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object p0, v5

    .line 117
    :cond_3
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mergeEventsElement error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AppConfigUpdater"

    .line 119
    invoke-static {p1, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 3
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "data"

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "apps"

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 9
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "saveAppCloudData: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppConfigUpdater"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/List;J)V
    .locals 5

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    new-instance v2, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v2}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    const-wide/16 v3, 0x64

    .line 128
    iput-wide v3, v2, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 129
    iput-wide p1, v2, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    sget-object p0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    new-instance p1, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleError"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AppConfigUpdater"

    .line 135
    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 14

    const-string v0, "AppConfigUpdater"

    const-string/jumbo v1, "updateDataToDb start"

    .line 11
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    if-eqz p0, :cond_13

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 15
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 16
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "appId"

    if-nez v6, :cond_0

    const-string v8, ""

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "appId: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 20
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "version"

    if-nez v6, :cond_1

    move v10, v4

    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 22
    :goto_2
    sget-object v11, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 23
    invoke-virtual {v11, v8}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 24
    iget-object v12, v12, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v12, :cond_2

    .line 25
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_3

    :cond_2
    move v9, v4

    .line 26
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "local version: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", server version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v9, :cond_5

    if-gt v10, v9, :cond_5

    .line 27
    invoke-static {v8}, Lcom/xiaomi/onetrack/b/a;->f(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_3

    .line 29
    new-instance v9, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v9}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 30
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 31
    iput-wide v1, v9, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 32
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 34
    new-instance v6, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {v6, v11, v8}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_4
    const-string/jumbo v6, "updateMinVersionData no timestamp can be updated!"

    .line 35
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    if-eqz v6, :cond_6

    const-string/jumbo v9, "type"

    .line 36
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    :cond_6
    const/4 v9, -0x1

    .line 37
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "type: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "events"

    const-string v12, "hash"

    if-eqz v9, :cond_c

    const/4 v13, 0x1

    if-eq v9, v13, :cond_c

    .line 38
    invoke-static {v8}, Lcom/xiaomi/onetrack/b/a;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_8

    :cond_7
    const/4 v8, 0x2

    if-ne v9, v8, :cond_b

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_9

    .line 40
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 41
    new-instance v9, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v9}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 42
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    iput-object v7, v9, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 45
    invoke-static {v6}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v9, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 46
    iput-wide v1, v9, Lcom/xiaomi/onetrack/b/l;->c:J

    const/4 v12, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v11, v7}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 48
    iget-object v7, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object v7, v12

    .line 50
    :goto_5
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 51
    invoke-static {v7, v11}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v6

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "mergeConfig: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {v6, v7, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v6, v12

    .line 54
    :goto_6
    iput-object v6, v9, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    const-string v6, "handleIncrementalUpdate config is not change!"

    .line 56
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 58
    sget-object v6, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 59
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v7, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {v7, v6, v8}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {v7}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_a
    const-string v6, "handleIncrementalUpdate no configuration can be updated!"

    .line 61
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    const-string v6, "handleData do nothing!"

    .line 62
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 63
    :cond_c
    :goto_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_e

    .line 64
    new-instance v9, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v9}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 65
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 67
    invoke-static {v6}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v7

    int-to-long v12, v7

    iput-wide v12, v9, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 68
    iput-wide v1, v9, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 69
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 70
    iget-object v7, v9, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 71
    iget-object v12, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v12, :cond_d

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 72
    iget-object v7, v7, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 73
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_d
    iput-object v6, v9, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 77
    new-instance v6, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {v6, v11, v8}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_f
    const-string v6, "handleFullOrNoNewData no configuration can be updated!"

    .line 78
    invoke-static {v0, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 79
    :cond_11
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq p0, v4, :cond_12

    .line 80
    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 81
    invoke-static {p1, v1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception p0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleInvalidAppIds error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    :cond_12
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->B:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 86
    :cond_13
    invoke-static {p1, v1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V

    :cond_14
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)I
    .locals 3

    const/16 v0, 0x64

    :try_start_0
    const-string v1, "sample"

    .line 40
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCommonSample Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppConfigUpdater"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 12

    const-string v0, "response:"

    const-string v1, "pullData:"

    const-string v2, "pullCloudData error: "

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pullCloudData start, appIds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppConfigUpdater"

    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v3, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 7
    sput-object v8, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    const-string v9, "app_config_region"

    .line 8
    invoke-static {v9, v8}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 9
    :cond_1
    :goto_0
    sget-object v9, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    const-string v10, "oa"

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ov"

    .line 11
    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ob"

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ii"

    .line 14
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "1"

    if-eqz v10, :cond_2

    move-object v10, v11

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v10, "0"

    :goto_1
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "sv"

    const-string v10, "2.1.0"

    .line 15
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "appVer"

    .line 16
    sget-object v10, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "av"

    .line 18
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 19
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ml"

    .line 20
    sget-object v10, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    .line 21
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 22
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "re"

    .line 23
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "ail"

    .line 24
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "sender"

    .line 25
    sget-object v9, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "platform"

    const-string v9, "Android"

    .line 27
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "supTip"

    .line 28
    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v8, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    .line 30
    sget-object v8, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->j()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/api/v4/detail/config"

    invoke-static {v8, v9}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v8, v7, v6}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 37
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    throw p0

    :cond_3
    :goto_5
    return-void
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    const-string v4, "appId"

    .line 25
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-static {v3}, Lcom/xiaomi/onetrack/b/a;->f(Ljava/lang/String;)Z

    .line 30
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const-string v5, ""

    .line 34
    const-string v6, "hash"

    .line 36
    if-eqz v4, :cond_0

    .line 38
    :try_start_1
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    goto :goto_1

    .line 43
    :cond_0
    sget-object v4, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 44
    invoke-virtual {v4, v3}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    .line 46
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    iget-object v5, v3, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 52
    :cond_1
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    return-object p0
    .line 71
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->B:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method
