.class public Lmiui/cloud/common/XMainThreadCallback;
.super Lmiui/cloud/common/XDirectCallback;
.source "XMainThreadCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XMainThreadCallback$CallRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/XDirectCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 48
    new-instance p1, Lmiui/cloud/common/XMainThreadCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiui/cloud/common/XMainThreadCallback$1;-><init>(Lmiui/cloud/common/XMainThreadCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lmiui/cloud/common/XMainThreadCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 29
    new-instance v0, Lmiui/cloud/common/XMainThreadCallback$CallRequest;

    invoke-direct {v0, p1, p2}, Lmiui/cloud/common/XMainThreadCallback$CallRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleCallbackInMainThread(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 39
    :try_start_0
    invoke-super {p0, p1, p2}, Lmiui/cloud/common/XDirectCallback;->handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "Exception in callback, but unable to propagate to the original thread. "

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
