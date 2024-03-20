.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerThread;
.super Ljava/lang/Object;
.source "SplitInstallerThread.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewThreadDirectly"
        }
    .end annotation

    .line 38
    new-instance p0, Ljava/lang/Thread;

    const-string/jumbo v0, "split_install_thread"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
