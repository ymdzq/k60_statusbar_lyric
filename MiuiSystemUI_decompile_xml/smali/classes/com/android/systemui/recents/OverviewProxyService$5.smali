.class public final Lcom/android/systemui/recents/OverviewProxyService$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanging(ILandroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 3
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 5
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLatchForOnUserChanging:Ljava/util/concurrent/CountDownLatch;

    .line 7
    const-string p1, "User changed"

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLatchForOnUserChanging:Ljava/util/concurrent/CountDownLatch;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLatchForOnUserChanging:Ljava/util/concurrent/CountDownLatch;

    .line 22
    :cond_0
    return-void
    .line 24
.end method
