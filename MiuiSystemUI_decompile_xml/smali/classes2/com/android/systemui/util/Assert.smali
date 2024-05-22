.class public abstract Lcom/android/systemui/util/Assert;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sMainLooper:Landroid/os/Looper;

.field public static sTestThread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    .line 6
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    .line 9
    return-void
    .line 11
.end method

.method public static isMainThread()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    sget-object v1, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v2

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v3, "should be called from the main thread. sMainLooper.threadName="

    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, " Thread.currentThread()="

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v1

    .line 65
    :cond_1
    :goto_0
    return-void
    .line 66
.end method

.method public static isNotMainThread()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    const-string/jumbo v1, "should not be called from the main thread."

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method public static setTestThread(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    .line 2
    return-void
    .line 4
.end method

.method public static setTestableLooper(Landroid/os/Looper;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/Assert;->setTestThread(Ljava/lang/Thread;)V

    .line 10
    return-void
    .line 13
.end method
