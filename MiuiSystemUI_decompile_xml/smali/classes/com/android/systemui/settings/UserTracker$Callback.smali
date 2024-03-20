.class public interface abstract Lcom/android/systemui/settings/UserTracker$Callback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public onProfilesChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUserChanging(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserChanging(ILandroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/settings/UserTracker$Callback;->onUserChanging(I)V

    .line 3
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
