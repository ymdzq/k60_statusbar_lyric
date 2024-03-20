.class Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/CloudRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityResumedReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFuture:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 236
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 232
    new-instance v0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    invoke-direct {v0}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;-><init>()V

    iput-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mFuture:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    .line 237
    iput-object p1, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/cloud/CloudRequestUtils$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/CloudRequestUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mFuture:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object p0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mFuture:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CloudRequestUtils"

    const-string p2, "connectivity resumed"

    .line 245
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->mFuture:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
