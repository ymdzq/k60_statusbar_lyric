.class public Lmiuix/app/Application;
.super Landroid/app/Application;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/app/Application$ComponentCallbacksWrapper;,
        Lmiuix/app/Application$LifecycleCallbacksWrapper;
    }
.end annotation


# instance fields
.field private mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

.field private mComponentLock:Ljava/lang/Object;

.field private mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

.field private mLifecycleLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 35
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->clearEffectEnable()V

    .line 36
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markEnvStateDirty(Landroid/content/Context;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 29
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->init(Landroid/app/Application;)V

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-direct {v1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;-><init>()V

    iput-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    :cond_0
    iget-object p0, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-virtual {p0, p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-direct {v1, p0}, Lmiuix/app/Application$ComponentCallbacksWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 66
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 68
    :cond_0
    iget-object p0, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-virtual {p0, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->registerCallBacks(Landroid/content/ComponentCallbacks;)V

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
