.class public final Lcom/xiaomi/onetrack/api/ao;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/xiaomi/onetrack/api/ar$a;
.implements Lcom/xiaomi/onetrack/api/j;


# instance fields
.field public final f:Lcom/xiaomi/onetrack/Configuration;

.field public final g:Lcom/xiaomi/onetrack/api/ar;

.field public final h:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 10
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ao;->h:Lcom/xiaomi/onetrack/util/v;

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/api/ar;->a()Lcom/xiaomi/onetrack/api/ar;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    .line 18
    iget-object p1, p1, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    new-instance p0, Lcom/xiaomi/onetrack/api/ap;

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ap;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 36
    return-void
    .line 39
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 57
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const-wide/16 v2, 0x1388

    .line 58
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "OneTrackSystemImp"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "H"

    .line 3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ot_ad"

    .line 4
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, ""

    .line 5
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ao;->h:Lcom/xiaomi/onetrack/util/v;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 7
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string v4, "onetrack_bug_report"

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v5, 0x2

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const v6, 0x7d000

    if-le v4, v6, :cond_4

    const-string v4, "ad Event size exceed limitation!"

    .line 10
    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v5

    const v6, 0x19000

    if-le v4, v6, :cond_4

    const-string v4, "Event size exceed limitation!"

    .line 12
    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v4, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    if-nez v4, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "onetrack_cta_status"

    .line 14
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 15
    new-instance p0, Lcom/xiaomi/onetrack/c/j;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_6
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/j;)V

    .line 17
    :cond_7
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "track name:"

    const-string v6, " data :"

    const-string v7, " tid"

    .line 18
    invoke-static {v4, p1, v6, p2, v7}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 19
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_8
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ao;->g:Lcom/xiaomi/onetrack/api/ar;

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 21
    iget-object v7, v4, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_b

    .line 23
    iget-object v7, v4, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    if-eqz v7, :cond_a

    .line 24
    :try_start_1
    iget-object v5, v6, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object v5, v8

    .line 25
    :cond_9
    iget-object v6, v4, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 26
    sget-object v7, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 27
    check-cast v6, Lcom/miui/analytics/ITrack$Stub$Proxy;

    invoke-virtual {v6, v5, v7, p1, p2}, Lcom/miui/analytics/ITrack$Stub$Proxy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v3

    goto :goto_5

    :catchall_1
    move-exception v3

    .line 28
    invoke-virtual {v4}, Lcom/xiaomi/onetrack/api/ar;->f()V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "track throwable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceConnectManager"

    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_a
    iget-object v3, v4, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    :goto_5
    if-nez v1, :cond_f

    .line 31
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ao;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 32
    iget-object p0, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    move-object v8, p0

    .line 33
    :goto_6
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object p0

    .line 34
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/l;->h:Landroid/os/Handler;

    if-eqz v1, :cond_e

    .line 35
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    .line 36
    :cond_d
    new-instance v2, Lcom/xiaomi/onetrack/c/m;

    invoke-direct {v2, p0, v8, p1, p2}, Lcom/xiaomi/onetrack/c/m;-><init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_e
    :goto_7
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p0, :cond_f

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "track mIOneTrackService is null! SystemImpCacheManager cache data:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
