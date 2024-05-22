.class public final Lcom/miui/systemui/functions/MiuiTopActivityObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public mCallback:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

.field public mContentObserver:Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;

.field public final mContext:Landroid/content/Context;

.field public mInSmallWindow:Z

.field public mLastInSmallWindow:Z

.field public volatile mLastTopActivity:Landroid/content/ComponentName;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMainLooper:Landroid/os/Looper;

.field public final mTmpListeners:Ljava/util/List;

.field public volatile mTopActivity:Landroid/content/ComponentName;

.field public final mTopActivityMayChangeListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivityMayChangeListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTmpListeners:Ljava/util/List;

    .line 17
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 19
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lmiui/stub/MiuiStub$1;

    .line 25
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mMainLooper:Landroid/os/Looper;

    .line 37
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 43
    iget-object v0, v0, Lmiui/stub/MiuiStub$1;->this$0:Lmiui/stub/MiuiStub;

    .line 45
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    .line 47
    iget-object v0, v0, Lmiui/stub/MiuiStub$BaseProvider;->mMainHandler:Landroid/os/Handler;

    .line 49
    iput-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mMainHandler:Landroid/os/Handler;

    .line 51
    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 55
    const/4 v0, 0x0

    .line 58
    :try_start_0
    const-string v1, "miui.app.MiuiFreeFormManager"

    .line 59
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move v1, v0

    .line 66
    :goto_0
    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;

    .line 69
    iget-object v2, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mMainHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {v1, p0, v2}, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;-><init>(Lcom/miui/systemui/functions/MiuiTopActivityObserver;Landroid/os/Handler;)V

    .line 73
    iput-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContentObserver:Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;

    .line 76
    iget-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object v1

    .line 83
    const-string v2, "freeform_window_state"

    .line 84
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContentObserver:Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;

    .line 90
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mContentObserver:Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver$1;->onChange(Z)V

    .line 97
    goto :goto_1

    .line 100
    :cond_0
    new-instance v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 101
    invoke-direct {v0, p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;-><init>(Lcom/miui/systemui/functions/MiuiTopActivityObserver;)V

    .line 103
    iput-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mCallback:Lcom/miui/systemui/functions/MiuiTopActivityObserver$2;

    .line 106
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->updateTopActivity()V

    .line 111
    :goto_1
    return-void
    .line 114
.end method


# virtual methods
.method public final addTopActivityMayChangeListener(Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mMainLooper:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "addTopActivityMayChangeListener: not on main looper\n"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/Throwable;

    .line 17
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 19
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "MiuiActivityUtil"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivityMayChangeListeners:Ljava/util/List;

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 50
    iget-boolean v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 52
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivityMayChangeListeners:Ljava/util/List;

    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {p1, v0, v1}, Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;->onTopActivityMayChanged(Landroid/content/ComponentName;Z)V

    .line 61
    :cond_1
    return-void
    .line 64
.end method

.method public final notifyListeners()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mLastTopActivity:Landroid/content/ComponentName;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mLastInSmallWindow:Z

    .line 12
    iget-boolean v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 14
    if-eq v0, v1, :cond_3

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTmpListeners:Ljava/util/List;

    .line 18
    iget-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivityMayChangeListeners:Ljava/util/List;

    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTmpListeners:Ljava/util/List;

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 35
    iget-boolean v2, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mInSmallWindow:Z

    .line 37
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v0, :cond_2

    .line 40
    iget-object v4, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTmpListeners:Ljava/util/List;

    .line 42
    check-cast v4, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 49
    check-cast v4, Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;

    .line 50
    if-eqz v4, :cond_1

    .line 52
    invoke-interface {v4, v1, v2}, Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;->onTopActivityMayChanged(Landroid/content/ComponentName;Z)V

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTmpListeners:Ljava/util/List;

    .line 60
    check-cast v0, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iput-boolean v2, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mLastInSmallWindow:Z

    .line 67
    iput-object v1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mLastTopActivity:Landroid/content/ComponentName;

    .line 69
    :cond_3
    return-void
    .line 71
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 8
    invoke-virtual {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->notifyListeners()V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskStackChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->updateTopActivity()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->notifyListeners()V

    .line 5
    return-void
    .line 8
.end method

.method public final removeTopActivityMayChangeListener(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mMainLooper:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "removeTopActivityMayChangeListener: not on main looper\n"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/lang/Throwable;

    .line 17
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 19
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "MiuiActivityUtil"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivityMayChangeListeners:Ljava/util/List;

    .line 38
    check-cast p0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
    .line 45
.end method

.method public final updateTopActivity()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-object v0, p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 14
    return-void
    .line 16
.end method
