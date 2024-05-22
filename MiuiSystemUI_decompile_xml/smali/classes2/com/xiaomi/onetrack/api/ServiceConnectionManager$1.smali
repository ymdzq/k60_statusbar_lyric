.class public final Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/ar;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 2
    const-string v0, "onBindingDied: "

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 6
    iget-object v2, v1, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    .line 8
    iget-object v1, v1, Lcom/xiaomi/onetrack/api/ar;->n:Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    .line 10
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_2

    .line 43
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "onBindingDied throwable:"

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_2
    return-void
    .line 65
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    const-string v0, "onNullBinding throwable:"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "ServiceConnectManager"

    .line 27
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 4
    sget v1, Lcom/miui/analytics/ITrack$Stub;->$r8$clinit:I

    .line 6
    if-nez p2, :cond_0

    .line 8
    const/4 p2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "com.miui.analytics.ITrack"

    .line 12
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 14
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    instance-of v2, v1, Lcom/miui/analytics/ITrack;

    .line 20
    if-eqz v2, :cond_1

    .line 22
    move-object p2, v1

    .line 24
    check-cast p2, Lcom/miui/analytics/ITrack;

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lcom/miui/analytics/ITrack$Stub$Proxy;

    .line 28
    invoke-direct {v1, p2}, Lcom/miui/analytics/ITrack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 30
    move-object p2, v1

    .line 33
    :goto_0
    iput-object p2, v0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 34
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 36
    iget-object p2, p2, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 44
    iget-object p2, p2, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 52
    iget-object p2, p2, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p2

    .line 59
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 69
    check-cast v2, Lcom/xiaomi/onetrack/api/ar$a;

    .line 70
    check-cast v2, Lcom/xiaomi/onetrack/api/ao;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v3, Lcom/xiaomi/onetrack/api/aq;

    .line 77
    invoke-direct {v3, v2}, Lcom/xiaomi/onetrack/api/aq;-><init>(Lcom/xiaomi/onetrack/api/ao;)V

    .line 79
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v2, "onServiceConnected  mConnecting "

    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 96
    iget-object v2, v2, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, " mBindResult:"

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 108
    iget-object v2, v2, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, " mIOneTrackService "

    .line 115
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 120
    iget-object v2, v2, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 122
    if-nez v2, :cond_3

    .line 124
    move v0, v1

    .line 126
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, " pid:"

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 135
    move-result v0

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " tid:"

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 147
    move-result v0

    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    goto :goto_2

    .line 161
    :catchall_0
    move-exception p2

    .line 162
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 163
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "onServiceConnected throwable:"

    .line 170
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    move-result-object p2

    .line 178
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 185
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_2
    return-void
    .line 189
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "ServiceConnectManager"

    .line 2
    const-string v0, "onServiceDisconnected:  mConnecting "

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/api/ar;->c()V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 16
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, " mIOneTrackService "

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 28
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 30
    if-nez p0, :cond_0

    .line 32
    const/4 p0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "onServiceDisconnected throwable:"

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_1
    return-void
    .line 70
.end method
