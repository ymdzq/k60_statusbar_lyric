.class public final Lcom/android/systemui/util/wakelock/WakeLock$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# instance fields
.field public final mActiveClients:Ljava/util/HashMap;

.field public final synthetic val$inner:Landroid/os/PowerManager$WakeLock;

.field public final synthetic val$logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

.field public final synthetic val$maxTimeout:J


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    .line 4
    iput-wide p3, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$maxTimeout:J

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->mActiveClients:Ljava/util/HashMap;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final acquire(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->mActiveClients:Ljava/util/HashMap;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 40
    sget-object v4, Lcom/android/systemui/util/wakelock/WakeLockLogger$logAcquire$2;->INSTANCE:Lcom/android/systemui/util/wakelock/WakeLockLogger$logAcquire$2;

    .line 42
    const-string v5, "WakeLock"

    .line 44
    iget-object v2, v2, Lcom/android/systemui/util/wakelock/WakeLockLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 46
    const/4 v6, 0x0

    .line 48
    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 56
    invoke-interface {v3, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 57
    invoke-interface {v3, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 60
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 63
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 66
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$maxTimeout:J

    .line 69
    invoke-virtual {v0, p0, p1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    return-void
    .line 74
.end method

.method public final release(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->mActiveClients:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    const-string v2, "WakeLock"

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string p0, "Releasing WakeLock with invalid reason: "

    .line 14
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    new-instance p1, Ljava/lang/Throwable;

    .line 20
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 22
    invoke-static {v2, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    return-void

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v1

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 54
    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v1

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 65
    sget-object v4, Lcom/android/systemui/util/wakelock/WakeLockLogger$logRelease$2;->INSTANCE:Lcom/android/systemui/util/wakelock/WakeLockLogger$logRelease$2;

    .line 67
    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLockLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 69
    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 79
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 80
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 83
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 89
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    return-void
    .line 95
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "active clients= "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->mActiveClients:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;
    .locals 1

    .line 1
    const-string/jumbo v0, "wrap"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock$1;->acquire(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)V

    .line 10
    return-object v0
    .line 13
.end method
