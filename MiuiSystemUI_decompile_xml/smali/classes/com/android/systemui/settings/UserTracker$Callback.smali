.class public interface abstract Lcom/android/systemui/settings/UserTracker$Callback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
