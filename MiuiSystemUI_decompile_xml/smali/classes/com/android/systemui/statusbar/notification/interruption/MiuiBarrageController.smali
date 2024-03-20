.class public final Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBarrageMonitor:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;

.field public mBarragePermissionEnabled:Z

.field public mBarrageSwitch:Z

.field public final mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mIsGameMode:Z

.field public final mObserver:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mIsGameMode:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarrageSwitch:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarragePermissionEnabled:Z

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$1;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;)V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mContext:Landroid/content/Context;

    .line 19
    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;

    .line 21
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;-><init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;)V

    .line 23
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mObserver:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v3

    .line 31
    const-string v4, "gb_boosting"

    .line 32
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v4

    .line 37
    const/4 v5, -0x1

    .line 38
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    const-string v4, "enabled_notification_listeners"

    .line 42
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    const-string v4, "gb_bullet_chat"

    .line 51
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 57
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiSettingsObserver;->update()V

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mCurrentUserId:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 65
    move-result-object v0

    .line 68
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 69
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 71
    new-instance p2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;

    .line 74
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;-><init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;)V

    .line 76
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarrageMonitor:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController$MiuiBarrageMonitor;

    .line 79
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 81
    const/4 v0, 0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p2, p1, v1, p0, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 85
    return-void
    .line 88
.end method


# virtual methods
.method public final isShowBarrageInGameScene()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mIsGameMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarrageSwitch:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarragePermissionEnabled:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "IsGameMode:"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mIsGameMode:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " BarrageSwitch:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarrageSwitch:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " BarragePermissionEnabled "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->mBarragePermissionEnabled:Z

    .line 43
    const-string v1, "MiuiBarrageController"

    .line 45
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 47
    const/4 p0, 0x0

    .line 50
    return p0
    .line 51
.end method
