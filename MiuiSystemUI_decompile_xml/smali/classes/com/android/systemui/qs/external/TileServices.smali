.class public final Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$3;


# instance fields
.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

.field public final mHandlerProvider:Ljavax/inject/Provider;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMaxBound:I

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mRequestListeningCallback:Lcom/android/systemui/qs/external/TileServices$2;

.field public final mServices:Landroid/util/ArrayMap;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public final mTiles:Landroid/util/SparseArrayMap;

.field public final mTokenMap:Landroid/util/ArrayMap;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$3;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$3;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Ljavax/inject/Provider;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 24
    const/16 v0, 0x14

    .line 26
    iput v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 28
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$2;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$2;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningCallback:Lcom/android/systemui/qs/external/TileServices$2;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 37
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 39
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServices;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mHandlerProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    .line 57
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 59
    iput-object p7, p0, Lcom/android/systemui/qs/external/TileServices;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 61
    invoke-virtual {p6, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 63
    iput-object p8, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 66
    iput-object p9, p0, Lcom/android/systemui/qs/external/TileServices;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    .line 68
    iput-object p10, p0, Lcom/android/systemui/qs/external/TileServices;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 70
    return-void
    .line 72
.end method


# virtual methods
.method public final getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 11
    iget-object p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 14
    return-object p0

    .line 16
    :cond_0
    const-string v0, "TileServices"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Tile for token "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, "not found. Tiles in map: "

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "["

    .line 36
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 41
    monitor-enter v2

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 44
    new-instance v3, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {v3, p1}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 48
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string p0, "]"

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 p0, 0x0

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p0
    .line 78
.end method

.method public final getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    .line 11
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
    .line 17
.end method

.method public final isLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    return p0
    .line 8
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final onDialogHidden(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    .line 23
    iput-boolean v0, p1, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 25
    :try_start_0
    iget-object p0, p1, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 27
    iget-object v1, p1, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 29
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_0
    return-void
    .line 39
.end method

.method public final onShowDialog(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 14
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    .line 30
    :cond_0
    return-void
    .line 32
.end method

.method public final onStartActivity(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 11
    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onStartSuccessful(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string v0, "TileServiceManager not started for "

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 13
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 26
    if-nez v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 58
    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_2
    :goto_1
    return-void
    .line 69
.end method

.method public final recalculateBindAllowance()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v0

    .line 20
    iget v2, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 21
    const/4 v3, 0x0

    .line 23
    if-le v0, v2, :cond_6

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v4

    .line 29
    move v2, v3

    .line 30
    :goto_0
    if-ge v2, v0, :cond_5

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 37
    iget-object v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 39
    iget-object v8, v7, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 41
    monitor-enter v8

    .line 43
    :try_start_1
    iget-object v7, v7, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 44
    const/4 v9, 0x2

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v9

    .line 50
    check-cast v7, Landroid/util/ArraySet;

    .line 51
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result v7

    .line 56
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-eqz v7, :cond_0

    .line 58
    const v7, 0x7fffffff

    .line 60
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 63
    goto :goto_1

    .line 65
    :cond_0
    iget-boolean v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    .line 66
    if-eqz v7, :cond_1

    .line 68
    const v7, 0x7ffffffe

    .line 70
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 73
    goto :goto_1

    .line 75
    :cond_1
    iget-boolean v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 76
    if-eqz v7, :cond_2

    .line 78
    const v7, 0x7ffffffd

    .line 80
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 83
    goto :goto_1

    .line 85
    :cond_2
    iget-boolean v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 86
    if-nez v7, :cond_3

    .line 88
    const/high16 v7, -0x80000000

    .line 90
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    iget-wide v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 95
    sub-long v7, v4, v7

    .line 97
    const-wide/32 v9, 0x7ffffffc

    .line 99
    cmp-long v9, v7, v9

    .line 102
    if-lez v9, :cond_4

    .line 104
    const v7, 0x7ffffffc

    .line 106
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 109
    goto :goto_1

    .line 111
    :cond_4
    long-to-int v7, v7

    .line 112
    iput v7, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    .line 113
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p0

    .line 120
    :cond_5
    sget-object v2, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$3;

    .line 121
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    :cond_6
    move v2, v3

    .line 126
    :goto_2
    iget v4, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 127
    if-ge v2, v4, :cond_7

    .line 129
    if-ge v2, v0, :cond_7

    .line 131
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v4

    .line 136
    check-cast v4, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 137
    const/4 v5, 0x1

    .line 139
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_2

    .line 145
    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 151
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 157
    goto :goto_3

    .line 159
    :cond_8
    return-void

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    throw p0
    .line 163
.end method

.method public final startActivity(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/external/TileServices;->startActivity(Lcom/android/systemui/qs/external/CustomTile;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivity(Lcom/android/systemui/qs/external/CustomTile;Landroid/app/PendingIntent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/external/CustomTile;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final startUnlockAndRun(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    const-class p0, Lcom/miui/systemui/SettingsManager;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/miui/systemui/SettingsManager;

    .line 17
    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 19
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    .line 24
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 27
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(ZLjava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string v0, "TileServiceManager not started for "

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 4
    move-result-object p2

    .line 7
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 13
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 22
    if-eqz p0, :cond_2

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 26
    if-nez v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v2

    .line 37
    iput-wide v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 50
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/Tile;)V

    .line 66
    iget-object p1, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 69
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    const/4 p0, 0x0

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 75
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object p2, p2, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 95
    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    monitor-exit v1

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0

    .line 107
    :cond_3
    :goto_1
    return-void
    .line 108
.end method

.method public final updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-static {}, Landroid/service/quicksettings/IQSService$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 17
    move-result-object v1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 27
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 32
    move-result-object v0

    .line 35
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    if-eqz p2, :cond_0

    .line 44
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 46
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v0, v7

    .line 50
    move-object v3, p2

    .line 51
    move-object v6, p3

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    const/4 v7, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    .line 62
    new-instance p3, Lcom/android/systemui/qs/external/TileServices$1;

    .line 64
    invoke-direct {p3, p0, p1, v7}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 66
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    :cond_1
    return-void
    .line 72
.end method

.method public final verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 22
    move-result p0

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    move-result p1

    .line 29
    if-ne p1, p0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    const-string p1, "Component outside caller\'s uid"

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/SecurityException;

    .line 42
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    throw p1
    .line 47
.end method
