.class public abstract Lcom/xiaomi/onetrack/util/aa;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static c:Landroid/content/SharedPreferences;

.field public static d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public static D()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-class v0, Lcom/xiaomi/onetrack/util/aa;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 10
    if-nez v1, :cond_1

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "one_track_pref"

    .line 18
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    move-result-object v1

    .line 24
    sput-object v1, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v1

    .line 30
    sput-object v1, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 31
    :cond_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
    .line 37
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 5
    const-string v1, ""

    .line 7
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "pref_instance_id"

    .line 2
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 10
    const-string p0, "pref_instance_id_last_use_time"

    .line 11
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;J)V

    .line 13
    return-void
    .line 16
.end method
