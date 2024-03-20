.class Lmiuix/app/Application$LifecycleCallbacksWrapper;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LifecycleCallbacksWrapper"
.end annotation


# instance fields
.field private mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;
    .locals 2

    .line 102
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget-object p0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 106
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z
    .locals 0

    .line 89
    iget-object p0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 115
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 176
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 146
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 136
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 165
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 166
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 126
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 156
    aget-object v1, p0, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
