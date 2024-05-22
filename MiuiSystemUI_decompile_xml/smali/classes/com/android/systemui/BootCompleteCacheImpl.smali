.class public final Lcom/android/systemui/BootCompleteCacheImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/BootCompleteCache;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final listeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 5
    const-string v1, "BootCompleteCacheImpl"

    .line 7
    invoke-virtual {p1, v1, p0, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "BootCompleteCache state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 7
    move-result p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "  boot complete: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 28
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    const-string p2, "  listeners:"

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 39
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v2, "    "

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 80
    :cond_0
    monitor-exit p2

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit p2

    .line 84
    throw p0

    .line 85
    :cond_1
    :goto_1
    return-void
    .line 86
.end method

.method public final isBootComplete()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final setBootComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 12
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;

    .line 37
    if-eqz v2, :cond_0

    .line 39
    iget-object v2, v2, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    .line 46
    move-result-object v3

    .line 49
    iput-object v3, v2, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 50
    invoke-virtual {v2}, Lcom/android/systemui/assist/PhoneStateMonitor;->onDefaultHomeChanged()V

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    .line 56
    check-cast p0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0

    .line 66
    throw p0

    .line 67
    :cond_2
    :goto_1
    return-void
    .line 68
.end method
