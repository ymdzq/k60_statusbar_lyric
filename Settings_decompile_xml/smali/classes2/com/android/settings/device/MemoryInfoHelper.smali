.class public Lcom/android/settings/device/MemoryInfoHelper;
.super Ljava/lang/Object;
.source "MemoryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;,
        Lcom/android/settings/device/MemoryInfoHelper$Callback;
    }
.end annotation


# direct methods
.method public static getAvailableMemorySize(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MemoryInfoHelper$ReadMemoryInfoTask;-><init>(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
