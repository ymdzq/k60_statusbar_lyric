.class public final Lcom/android/systemui/util/wakelock/SettableWakeLock;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAcquired:Z

.field public final mInner:Lcom/android/systemui/util/wakelock/WakeLock;

.field public final mWhy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "inner wakelock required"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final declared-synchronized setAcquired(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z

    .line 3
    if-eq v0, p1, :cond_1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 21
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
    .line 30
.end method
