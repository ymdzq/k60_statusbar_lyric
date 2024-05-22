.class public final Lcom/android/systemui/log/LogBufferFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final create(ZILjava/lang/String;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    .line 2
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/16 v1, 0x14

    .line 10
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    .line 16
    invoke-direct {v0, p3, p2, v1, p1}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 21
    const-string p1, "\'"

    .line 23
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/dump/DumpManager;->canAssignToNameLocked(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 26
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 32
    new-instance p2, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 34
    sget-object v1, Lcom/android/systemui/dump/DumpPriority;->NORMAL:Lcom/android/systemui/dump/DumpPriority;

    .line 36
    invoke-direct {p2, p3, v0, v1}, Lcom/android/systemui/dump/RegisteredDumpable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/systemui/dump/DumpPriority;)V

    .line 38
    check-cast p1, Ljava/util/TreeMap;

    .line 41
    invoke-virtual {p1, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p1, "\' is already registered"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
    throw p1
    .line 73
.end method
