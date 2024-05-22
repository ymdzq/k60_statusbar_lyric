.class public final Lcom/android/systemui/util/leak/GarbageMonitor$Service;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/leak/GarbageMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final start()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "sysui_force_enable_leak_reporting"

    .line 8
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v2, 0x1

    .line 18
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->LEAK_REPORTING_ENABLED:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    if-eqz v2, :cond_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :cond_2
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->HEAP_TRACKING_ENABLED:Z

    .line 30
    if-nez v0, :cond_3

    .line 32
    if-eqz v2, :cond_5

    .line 34
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 41
    move-result v0

    .line 44
    int-to-long v7, v0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v5

    .line 55
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 56
    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    monitor-exit v0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->logPids()V

    .line 82
    iget-object v9, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 85
    new-instance v10, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 87
    move-object v1, v10

    .line 89
    move-wide v2, v7

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;-><init>(JLjava/lang/String;J)V

    .line 91
    invoke-virtual {v9, v7, v8, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-wide/16 v0, 0x0

    .line 103
    check-cast p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 105
    const/16 v2, 0xbb8

    .line 107
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->sendMessageDelayed(IJ)V

    .line 109
    :cond_5
    return-void

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p0
    .line 115
.end method
