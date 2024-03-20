.class final Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "CloudRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    new-instance v0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture$1;

    invoke-direct {v0}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method
