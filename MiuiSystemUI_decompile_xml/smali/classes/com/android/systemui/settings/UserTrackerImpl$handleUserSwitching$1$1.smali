.class public final Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/systemui/settings/UserTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker$Callback;Lcom/android/systemui/settings/UserTrackerImpl;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->$callback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 15
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 16
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/settings/UserTracker$Callback;->onUserChanging(ILandroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    .line 18
    return-void
    .line 21
.end method
