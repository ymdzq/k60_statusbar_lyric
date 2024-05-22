.class public final Lcom/android/systemui/qs/tiles/WorkModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# instance fields
.field public final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    const p1, 0x7f081849    # @drawable/stat_sys_managed_profile_status 'res/drawable/stat_sys_managed_profile_status.xml'

    .line 5
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 12
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 14
    invoke-virtual {p0, p10, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.MANAGED_PROFILE_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x101

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 10
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 12
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/systemui/qs/tiles/WorkModeTile$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WorkModeTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V

    .line 18
    const-string p0, "SystemUi.QS_WORK_PROFILE_LABEL"

    .line 21
    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 8
    const/4 v0, 0x1

    .line 10
    xor-int/2addr p0, v0

    .line 11
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    .line 12
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    .line 15
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 31
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 33
    if-nez p0, :cond_1

    .line 35
    move v5, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 40
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 42
    move-result-object v3

    .line 45
    invoke-virtual {v4, v5, v3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v4, "statusbar"

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Landroid/app/StatusBarManager;

    .line 61
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
    .line 71
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->isAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->onManagedProfileRemoved()V

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 13
    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 17
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    .line 19
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 22
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    check-cast p2, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p2

    .line 33
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->isWorkModeEnabled()Z

    .line 39
    move-result p2

    .line 42
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 43
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 45
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 47
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 49
    const/4 v0, 0x1

    .line 51
    if-eqz p2, :cond_3

    .line 52
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 54
    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 60
    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 64
    move-result-object p0

    .line 67
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 68
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 70
    const-class p0, Landroid/widget/Switch;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 78
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 80
    if-eqz p0, :cond_4

    .line 82
    const/4 v0, 0x2

    .line 84
    :cond_4
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 85
    return-void
    .line 87
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->hasActiveProfile()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final onManagedProfileChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->isWorkModeEnabled()Z

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onManagedProfileRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 4
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeTile(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method
