.class public final Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/PaperModeController;


# instance fields
.field public final mGameModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

.field public final mListeners:Ljava/util/ArrayList;

.field public mPaperModeAvailable:Z

.field public mPaperModeEnabled:Z

.field public final mPaperModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mVideoModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/settings/UserTracker;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 19
    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mResolver:Landroid/content/ContentResolver;

    .line 28
    new-instance p2, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 30
    const/4 v2, 0x0

    .line 32
    invoke-direct {p2, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;Landroid/os/Handler;I)V

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 36
    new-instance v3, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 38
    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, p0, v1, v4}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;Landroid/os/Handler;I)V

    .line 41
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mVideoModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 44
    const-string/jumbo v4, "screen_paper_mode_enabled"

    .line 46
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v4

    .line 52
    const/4 v5, -0x1

    .line 53
    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 54
    new-instance p2, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 57
    const/4 v4, 0x2

    .line 59
    invoke-direct {p2, p0, v1, v4}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;Landroid/os/Handler;I)V

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mGameModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 63
    const-string v4, "gb_boosting"

    .line 65
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object v4

    .line 70
    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    const-string/jumbo p2, "vtb_boosting"

    .line 74
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    new-instance p1, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;

    .line 84
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;)V

    .line 86
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    new-instance p0, Landroid/os/HandlerExecutor;

    .line 92
    invoke-direct {p0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 94
    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 97
    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 99
    return-void
    .line 102
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/PaperModeController$PaperModeListener;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 15
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    check-cast p1, Lcom/android/systemui/qs/tiles/PaperModeTile;

    .line 24
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeEnabled:Z

    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public final dispatchListeners(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/policy/PaperModeController$PaperModeListener;

    .line 21
    if-nez p1, :cond_1

    .line 23
    check-cast v1, Lcom/android/systemui/qs/tiles/PaperModeTile;

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x1

    .line 35
    if-ne p1, v2, :cond_0

    .line 36
    check-cast v1, Lcom/android/systemui/qs/tiles/PaperModeTile;

    .line 38
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
    .line 49
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "PaperModeController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mPaperModeEnabled="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeEnabled:Z

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    const-string p2, "  isAvailable="

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeAvailable:Z

    .line 22
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    return-void
    .line 27
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/PaperModeController$PaperModeListener;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    .line 15
    :goto_0
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
    .line 19
.end method
