.class public final Lcom/xiaomi/onetrack/util/v;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final g:Lcom/xiaomi/onetrack/Configuration;

.field public i:Z

.field public j:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    .line 7
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    .line 9
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    const-string v0, "pref_custom_privacy_policy_"

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 36
    sget-object p1, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 39
    const/4 v0, 0x1

    .line 41
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    :goto_0
    return-void
    .line 45
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/v;->b$1()Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const-string v0, "open"

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "close"

    .line 16
    :goto_0
    const-string/jumbo v1, "use system experience plan, the policy is "

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "PrivacyManager"

    .line 25
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    if-nez p0, :cond_5

    .line 30
    const-string p0, "onetrack_dau"

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez p0, :cond_2

    .line 40
    const-string p0, "onetrack_pa"

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    move p0, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    move p0, v2

    .line 53
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    const-string v4, "This event "

    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-eqz p0, :cond_3

    .line 64
    const-string p1, " is "

    .line 66
    goto :goto_3

    .line 68
    :cond_3
    const-string p1, " is not "

    .line 69
    :goto_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, "basic event and is not recommend event and is not custom dau event"

    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez p0, :cond_4

    .line 86
    move p0, v0

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move p0, v2

    .line 90
    :cond_5
    :goto_4
    return p0
    .line 91
.end method

.method public final b$1()Z
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    .line 6
    sub-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 9
    move-result-wide v0

    .line 12
    const-wide/32 v2, 0xdbba0

    .line 13
    cmp-long v0, v0, v2

    .line 16
    if-lez v0, :cond_3

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/v;->j:J

    .line 24
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 26
    const-string v1, "isUserExperiencePlanEnabled upload_log_value: "

    .line 28
    sget-object v2, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    .line 30
    const/4 v3, 0x0

    .line 32
    const-string v4, "OsUtil"

    .line 33
    const/4 v5, 0x1

    .line 35
    if-nez v2, :cond_1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 38
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v6

    .line 47
    const-string/jumbo v7, "upload_log_pref"

    .line 48
    const/4 v8, -0x1

    .line 51
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    move-result v6

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 67
    invoke-static {v4, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-ne v6, v5, :cond_0

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    if-nez v6, :cond_2

    .line 74
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    const-string v7, "Settings failed: "

    .line 80
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    invoke-static {v4, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    :try_start_1
    new-array v1, v5, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    move-result-object v0

    .line 104
    aput-object v0, v1, v3

    .line 105
    const/4 v0, 0x0

    .line 107
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    const-string v2, "isUserExperiencePlanEnabled failed: "

    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    :goto_0
    move v3, v5

    .line 141
    :goto_1
    iput-boolean v3, p0, Lcom/xiaomi/onetrack/util/v;->i:Z

    .line 142
    :cond_3
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/util/v;->i:Z

    .line 144
    return p0
    .line 146
.end method
