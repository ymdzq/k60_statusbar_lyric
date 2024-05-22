.class public final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mRegistered:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string p1, "device_provisioned"

    .line 2
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    const-string/jumbo p1, "user_setup_complete"

    .line 14
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenAvailable()Z

    .line 29
    move-result p1

    .line 32
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 33
    monitor-enter p2

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda3;

    .line 38
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 40
    invoke-static {p0, v0}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 43
    monitor-exit p2

    .line 46
    :cond_1
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
    .line 50
.end method

.method public final register()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mRegistered:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 11
    const-string v1, "device_provisioned"

    .line 13
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 23
    const-string/jumbo v1, "user_setup_complete"

    .line 25
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 32
    iget v3, v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 34
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mRegistered:Z

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenAvailable()Z

    .line 44
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 48
    monitor-enter v1

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 51
    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda3;

    .line 53
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 55
    invoke-static {p0, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 58
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
    .line 65
.end method
