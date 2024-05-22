.class public final Lcom/xiaomi/onetrack/d/f;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final a:Lorg/json/JSONObject;


# instance fields
.field public final f:Landroid/content/Context;

.field public g:Lorg/json/JSONObject;

.field public final h:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    sput-object v0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 6
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final declared-synchronized b()[Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-nez v0, :cond_1

    .line 5
    :try_start_1
    const-string/jumbo v0, "secret_key_data"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    .line 25
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    move-object v0, v1

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_0
    const/4 v0, 0x0

    .line 36
    :goto_1
    if-eqz v0, :cond_1

    .line 37
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/d/f;->c()Lorg/json/JSONObject;

    .line 43
    move-result-object v0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    const-string v2, "key"

    .line 51
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const-string v2, ""

    .line 58
    :goto_2
    const/4 v3, 0x0

    .line 60
    aput-object v2, v1, v3

    .line 61
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_4

    .line 65
    const-string/jumbo v2, "sid"

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const-string v0, ""

    .line 75
    :goto_3
    const/4 v2, 0x1

    .line 77
    aput-object v0, v1, v2

    .line 78
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 80
    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 84
    aget-object v1, v0, v3

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 91
    const-string v3, "SecretKeyManager"

    .line 92
    if-nez v1, :cond_5

    .line 94
    aget-object v0, v0, v2

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    const-string v0, "key  and sid is valid! "

    .line 104
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_4

    .line 109
    :cond_5
    const-string v0, "key or sid is invalid!"

    .line 110
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    monitor-exit p0

    .line 117
    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    .line 120
    throw v0
    .line 121
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 7

    .line 1
    const-string/jumbo v0, "sid"

    .line 2
    const-string v1, "key"

    .line 5
    const-string v2, "SecretKeyManager"

    .line 7
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 9
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    sget-object p0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    .line 15
    return-object p0

    .line 17
    :cond_0
    sget-object v3, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    .line 18
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 20
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 24
    move-result-object v3

    .line 27
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/e;->a([B)[B

    .line 28
    move-result-object v4

    .line 31
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 35
    new-instance v5, Ljava/util/HashMap;

    .line 36
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string/jumbo v6, "secretKey"

    .line 41
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v4, Lcom/xiaomi/onetrack/util/x;->h:Ljava/lang/String;

    .line 47
    sget-object v4, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 57
    const-string v6, "/track/key_get"

    .line 58
    invoke-static {v4, v6}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-static {v4, v5, v6}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    new-instance v5, Lorg/json/JSONObject;

    .line 75
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v4, "code"

    .line 80
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 82
    move-result v4

    .line 85
    const-string v6, "data"

    .line 86
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 88
    move-result-object v5

    .line 91
    if-nez v4, :cond_1

    .line 92
    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 99
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 103
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v6

    .line 107
    if-nez v6, :cond_1

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    move-result v6

    .line 113
    if-nez v6, :cond_1

    .line 114
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    .line 116
    move-result-object v4

    .line 119
    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    .line 120
    move-result-object v3

    .line 123
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    new-instance v4, Lorg/json/JSONObject;

    .line 128
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 130
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iput-object v4, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    const-string/jumbo v1, "secret_key_data"

    .line 149
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    move-result-wide v0

    .line 158
    const-string v3, "last_secret_key_time"

    .line 159
    invoke-static {v3, v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "requestSecretData: "

    .line 168
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 176
    return-object p0
    .line 178
.end method
