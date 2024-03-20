.class public final Lcom/android/systemui/qs/external/TileLifecycleManager;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBindRetryDelay:I

.field public mBindTryCount:I

.field public final mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

.field public mClickBinder:Landroid/os/IBinder;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mListening:Z

.field public final mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

.field public final mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mQueuedMessages:Ljava/util/Set;

.field public final mToken:Landroid/os/IBinder;

.field public final mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Lcom/android/systemui/qs/external/PackageManagerAdapter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Binder;

    .line 5
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 10
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 17
    const/16 v1, 0x3e8

    .line 19
    iput v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 63
    const-string/jumbo p1, "service"

    .line 65
    invoke-interface {p3}, Landroid/service/quicksettings/IQSService;->asBinder()Landroid/os/IBinder;

    .line 68
    move-result-object p2

    .line 71
    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 72
    const-string/jumbo p1, "token"

    .line 75
    invoke-virtual {p6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 78
    iput-object p7, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 81
    iput-object p8, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 83
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    .line 85
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 87
    return-void
    .line 89
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 6
    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public final binderDied()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 2
    return-void
    .line 5
.end method

.method public final checkComponentState()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    .line 14
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 16
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    move-result v4

    .line 21
    iget-object v3, v3, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v3, "Package not available: "

    .line 29
    const-string v4, "TileLifecycleManager"

    .line 31
    invoke-static {v3, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    move v0, v2

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    .line 48
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 50
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 52
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 56
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 58
    move-result v4

    .line 61
    iget-object v0, v0, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 62
    int-to-long v5, v2

    .line 64
    invoke-interface {v0, v3, v5, v6, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 65
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    if-eqz v0, :cond_0

    .line 69
    move v0, v1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    :cond_0
    move v0, v2

    .line 73
    :goto_1
    if-nez v0, :cond_1

    .line 74
    goto :goto_2

    .line 76
    :cond_1
    return v1

    .line 77
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 78
    return v2
    .line 81
.end method

.method public final freeWrapper()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 6
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 16
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "Trying to unlink not linked recipient for component"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 24
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    const-string v1, "TileLifecycleManager"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 47
    :cond_0
    return-void
    .line 49
.end method

.method public final handleDeath()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->freeWrapper()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 31
    new-instance v2, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;

    .line 33
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    .line 35
    iget p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    .line 38
    int-to-long v3, p0

    .line 40
    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 41
    :cond_2
    return-void
    .line 44
.end method

.method public final onClick(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 9
    invoke-interface {v0, p1}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "IQSTileServiceWrapper"

    .line 17
    const-string v2, "Caught exception from TileService"

    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    .line 27
    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 48
    const/4 p2, 0x1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 52
    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 56
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 58
    check-cast p1, Lcom/android/systemui/qs/external/CustomTile;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;

    .line 66
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    .line 68
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 79
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;

    .line 81
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    .line 83
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
    .line 91
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 3
    new-instance v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 5
    invoke-static {p2}, Landroid/service/quicksettings/IQSTileService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;-><init>(Landroid/service/quicksettings/IQSTileService;)V

    .line 11
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 17
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 19
    monitor-enter p2

    .line 21
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 24
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 29
    check-cast v1, Landroid/util/ArraySet;

    .line 31
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 33
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 47
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 50
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    .line 54
    :cond_1
    const/4 p1, 0x2

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 68
    if-nez p1, :cond_2

    .line 70
    const-string p1, "TileLifecycleManager"

    .line 72
    const-string p2, "Managed to get click on non-listening state..."

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V

    .line 82
    :cond_3
    :goto_0
    const/4 p1, 0x3

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p2

    .line 89
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 93
    if-eqz p2, :cond_5

    .line 94
    iget-boolean p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 96
    if-nez p2, :cond_4

    .line 98
    const-string p2, "TileLifecycleManager"

    .line 100
    const-string v1, "Managed to get unlock on non-listening state..."

    .line 102
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    .line 108
    :cond_5
    :goto_1
    const/4 p2, 0x1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p2

    .line 115
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 116
    move-result p2

    .line 119
    if-eqz p2, :cond_7

    .line 120
    iget-boolean p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 122
    if-eqz p2, :cond_6

    .line 124
    const-string p2, "TileLifecycleManager"

    .line 126
    const-string v0, "Managed to get remove in listening state..."

    .line 128
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 136
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 139
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;

    .line 141
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    .line 143
    check-cast p2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 146
    invoke-virtual {p2, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0
    .line 154
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartListening()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 12
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "IQSTileServiceWrapper"

    .line 19
    const-string v2, "Caught exception from TileService"

    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onStopListening()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 12
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    const-string v2, "IQSTileServiceWrapper"

    .line 20
    const-string v3, "Caught exception from TileService"

    .line 22
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_0
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onTileAdded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 10
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onTileAdded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v2, "IQSTileServiceWrapper"

    .line 18
    const-string v3, "Caught exception from TileService"

    .line 20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    move v0, v1

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final onTileRemoved()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 10
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onTileRemoved()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v2, "IQSTileServiceWrapper"

    .line 18
    const-string v3, "Caught exception from TileService"

    .line 20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final onUnlockComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 9
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "IQSTileServiceWrapper"

    .line 17
    const-string v2, "Caught exception from TileService"

    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x3

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final queueMessage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 10
    check-cast p0, Landroid/util/ArraySet;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
    .line 20
.end method

.method public final setBindService(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    const-string v0, "TileLifecycleManager"

    .line 30
    if-eqz p1, :cond_5

    .line 32
    iget p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 34
    const/4 v2, 0x5

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 39
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    .line 43
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    return-void

    .line 49
    :cond_2
    iget p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 58
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 68
    const-wide/32 v4, 0xe691189

    .line 70
    invoke-static {v4, v5, v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 79
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 81
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 83
    const v5, 0x2000021

    .line 85
    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 88
    move-result v2

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 97
    const v5, 0x2100021

    .line 99
    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 102
    move-result v2

    .line 105
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 111
    move-result p1

    .line 114
    if-nez p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 124
    move-result-object p1

    .line 127
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_2

    .line 136
    :catch_0
    move-exception p1

    .line 137
    const-string v2, "Failed to bind to service"

    .line 138
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    goto :goto_2

    .line 148
    :cond_5
    iput v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->freeWrapper()V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 156
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    goto :goto_1

    .line 167
    :catch_1
    move-exception p1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    const-string v3, "Failed to unbind service "

    .line 171
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 176
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 178
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 192
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    :cond_6
    :goto_2
    return-void
    .line 201
.end method

.method public final startPackageListening()V
    .locals 10

    .line 1
    const-string v0, "TileLifecycleManager"

    .line 2
    new-instance v4, Landroid/content/IntentFilter;

    .line 4
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 6
    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 11
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    const-string v1, "package"

    .line 16
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 18
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x1

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 30
    const/4 v5, 0x0

    .line 32
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 33
    const/4 v7, 0x2

    .line 35
    move-object v2, p0

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    const-string v2, "Could not register package receiver"

    .line 47
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 52
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 54
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 64
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 66
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 68
    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    const-string p0, "Could not register unlock receiver"

    .line 80
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_1
    return-void
    .line 85
.end method

.method public final stopPackageListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method
