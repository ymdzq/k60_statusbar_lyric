.class public interface abstract Lcom/android/systemui/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p2, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createWakeLockInner(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    .line 3
    move-result-object p0

    .line 6
    const-wide/16 v0, 0x4e20

    .line 7
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public static createWakeLockInner(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 1
    const-class v0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/PowerManager;

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/util/wakelock/WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire(Ljava/lang/String;)V
.end method

.method public abstract release(Ljava/lang/String;)V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;
.end method
