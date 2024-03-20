.class public final Lcom/android/systemui/controlcenter/ControlCenter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;
.implements Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public configuration:Landroid/content/res/Configuration;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

.field public final controlCenterPluginManager:Lcom/android/systemui/ControlCenterPluginManager;

.field public final controlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public final dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

.field public disabled1:I

.field public disabled2:I

.field public displayId:I

.field public final handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

.field public final miPlayPluginManager:Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

.field public final qsTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public superPowerModeOn:Z

.field public final superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

.field public useControlCenter:Z

.field public windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 2
    :try_start_0
    const-string v0, "package"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/CommandQueue;Lcom/miui/systemui/controller/SuperSaveModeController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/ControlCenterPluginManager;Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object v2, p7

    .line 4
    move-object/from16 v3, p14

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    move-object v4, p1

    .line 10
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->context:Landroid/content/Context;

    .line 11
    iput-object v1, v0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 13
    move-object v4, p4

    .line 15
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 16
    move-object v4, p5

    .line 18
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 19
    move-object v4, p6

    .line 21
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 22
    iput-object v2, v0, Lcom/android/systemui/controlcenter/ControlCenter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 24
    move-object v4, p8

    .line 26
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->controlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 27
    move-object v4, p9

    .line 29
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 30
    move-object v4, p10

    .line 32
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->miPlayPluginManager:Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 33
    move-object/from16 v4, p11

    .line 35
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 37
    move-object/from16 v4, p12

    .line 39
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPluginManager:Lcom/android/systemui/ControlCenterPluginManager;

    .line 41
    move-object/from16 v4, p13

    .line 43
    iput-object v4, v0, Lcom/android/systemui/controlcenter/ControlCenter;->dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 45
    const-class v4, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController;

    .line 47
    invoke-virtual {v3, v4, p3}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    const-class v1, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;

    .line 52
    invoke-virtual {v3, v1, p7}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    const-class v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;

    .line 57
    move-object/from16 v2, p15

    .line 59
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    const-class v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController;

    .line 64
    move-object/from16 v2, p16

    .line 66
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 68
    const-class v1, Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController;

    .line 71
    move-object/from16 v2, p17

    .line 73
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 78
    move-object v2, p2

    .line 80
    invoke-direct {v1, p0, p2}, Lcom/android/systemui/controlcenter/ControlCenter$handler$1;-><init>(Lcom/android/systemui/controlcenter/ControlCenter;Landroid/os/Looper;)V

    .line 81
    iput-object v1, v0, Lcom/android/systemui/controlcenter/ControlCenter;->handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 84
    return-void
    .line 86
.end method


# virtual methods
.method public final addControlPanelWindow()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;->getControlCenterWindowView()Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 13
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-nez v1, :cond_2

    .line 19
    goto :goto_1

    .line 21
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->updateWindowViewThemeBg()V

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 27
    if-nez v1, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controlcenter/ControlCenter;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 32
    invoke-virtual {v2, p0}, Lcom/miui/systemui/controller/SuperSaveModeController;->addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V

    .line 34
    iget-object v2, p0, Lcom/android/systemui/controlcenter/ControlCenter;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 37
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 39
    iget-boolean v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 42
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v2, :cond_4

    .line 46
    goto/16 :goto_3

    .line 48
    :cond_4
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 50
    const/4 v6, -0x1

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/16 v10, 0x7e1

    .line 56
    const v11, -0x7e7afed8

    .line 58
    const/4 v12, -0x3

    .line 61
    move-object v5, v2

    .line 62
    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 63
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 66
    or-int/lit8 v5, v5, 0x40

    .line 68
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 70
    const-string v5, "control_center"

    .line 72
    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    const/16 v5, 0x700

    .line 77
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 79
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 81
    const v6, 0x8000

    .line 83
    or-int/2addr v5, v6

    .line 86
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 87
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 89
    const/4 v5, 0x3

    .line 92
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 93
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 95
    iput-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 98
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowManager:Landroid/view/WindowManager;

    .line 100
    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 102
    move-result-object v5

    .line 105
    iget-object v6, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 106
    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_2

    .line 111
    :catch_0
    move-exception v2

    .line 112
    const-string v5, "ControlPanelWindowManager"

    .line 113
    const-string v6, "add windowView failed."

    .line 115
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :goto_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 120
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 122
    iget-object v5, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 125
    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 127
    iput-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 130
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 132
    iget-object v5, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowViewOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    .line 134
    if-eqz v2, :cond_5

    .line 136
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 138
    move-result-object v2

    .line 141
    if-eqz v2, :cond_5

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 144
    move-result-object v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 150
    :cond_5
    iput-object v1, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 153
    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 155
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 159
    move-result-object v2

    .line 162
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 163
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->addOnExpandChangeListener(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView$OnExpandChangeListener;)V

    .line 166
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->context:Landroid/content/Context;

    .line 169
    const v5, 0x7f0600a8    # @color/control_center_background_dim '#59555555'

    .line 171
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    .line 174
    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->getThemeBackgroundView()Landroid/view/View;

    .line 177
    move-result-object v2

    .line 180
    iput-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->themeBg:Landroid/view/View;

    .line 181
    iput-boolean v3, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 183
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 185
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 187
    :goto_3
    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->showDataUsage()Z

    .line 190
    move-result v0

    .line 193
    if-eqz v0, :cond_6

    .line 194
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 196
    if-nez v0, :cond_6

    .line 198
    goto :goto_4

    .line 200
    :cond_6
    move v3, v4

    .line 201
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->setListening(Z)V

    .line 204
    return-void
    .line 207
.end method

.method public final addQsTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "command add tile: "

    .line 10
    const-string v2, "ControlCenter"

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    .line 23
    return-void
    .line 26
.end method

.method public final animateCollapsePanels(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->isCollapsed()Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/ControlCenter;->collapse(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final animateExpandNotificationsPanel()V
    .locals 4

    .line 1
    const-string v0, "ControlCenter"

    .line 2
    const-string v1, "command expand notification"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 15
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    sget-object v0, Lcom/android/systemui/qs/external/CustomTile;->sCustomTileRef:Ljava/lang/ref/WeakReference;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;

    .line 29
    if-nez v0, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/CustomTile;->handleSetListening(Z)V

    .line 35
    new-instance v1, Lcom/android/systemui/controlcenter/ControlCenter$animateExpandNotificationsPanel$1;

    .line 38
    invoke-direct {v1, v0}, Lcom/android/systemui/controlcenter/ControlCenter$animateExpandNotificationsPanel$1;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 40
    const-wide/16 v2, 0x3e8

    .line 43
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 45
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_1
    :goto_0
    return-void
    .line 50
.end method

.method public final animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "command expand panel: "

    .line 2
    const-string v1, "ControlCenter"

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->isCollapsed()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isExpandable()Z

    .line 21
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 28
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 34
    move-result-object v0

    .line 37
    iput p1, v0, Landroid/os/Message;->what:I

    .line 38
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "command click tile: "

    .line 10
    const-string v2, "ControlCenter"

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 35
    if-eqz p0, :cond_2

    .line 37
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method

.method public final collapse(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isQSFullyCollapsed()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->postAnimateCollapsePanels()V

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/ControlCenter;->collapseControlCenter(Z)V

    .line 18
    return-void
    .line 21
.end method

.method public final collapseControlCenter(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->isCollapsed()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->handler:Lcom/android/systemui/controlcenter/ControlCenter$handler$1;

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 15
    move-result-object v1

    .line 18
    iput v0, v1, Landroid/os/Message;->what:I

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    return-void
    .line 30
.end method

.method public final disable(IIIZ)V
    .locals 4

    .line 1
    iget p4, p0, Lcom/android/systemui/controlcenter/ControlCenter;->displayId:I

    .line 2
    if-eq p1, p4, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled1:I

    .line 7
    xor-int p4, p2, p1

    .line 9
    iput p2, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled1:I

    .line 11
    iget v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled2:I

    .line 13
    xor-int v1, p3, v0

    .line 15
    iput p3, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled2:I

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 30
    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    const-string v3, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    .line 40
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    const-string v3, "ControlCenter"

    .line 46
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p3

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 62
    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 70
    const-string p3, "disable2: 0x%08x -> 0x%08x (diff2: 0x%08x)"

    .line 71
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/high16 p1, 0x10000

    .line 80
    and-int p3, p4, p1

    .line 82
    if-eqz p3, :cond_1

    .line 84
    and-int/2addr p1, p2

    .line 86
    if-eqz p1, :cond_1

    .line 87
    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/ControlCenter;->collapse(Z)V

    .line 90
    :cond_1
    return-void
    .line 93
.end method

.method public final isCollapsed()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->getExpandState()I

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
    .line 18
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->configuration:Landroid/content/res/Configuration;

    .line 10
    if-nez v0, :cond_2

    .line 12
    const/4 v0, 0x0

    .line 14
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 15
    move-result v0

    .line 18
    iget-object p1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    .line 19
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p1, :cond_7

    .line 23
    check-cast p1, Landroid/content/res/MiuiConfiguration;

    .line 25
    iget-wide v3, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 27
    sget-boolean p1, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 29
    const/high16 p1, 0x400000

    .line 31
    and-int/2addr p1, v0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    invoke-static {v3, v4}, Landroid/content/res/MiuiConfiguration;->needRestartStatusBar(J)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    move p1, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move p1, v2

    .line 44
    :goto_0
    and-int/lit16 v3, v0, 0x200

    .line 45
    if-eqz v3, :cond_4

    .line 47
    move v3, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    move v3, v2

    .line 51
    :goto_1
    if-nez p1, :cond_6

    .line 52
    if-eqz v3, :cond_5

    .line 54
    goto :goto_2

    .line 56
    :cond_5
    move p1, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_6
    :goto_2
    move p1, v1

    .line 59
    :goto_3
    if-eqz p1, :cond_7

    .line 60
    move p1, v1

    .line 62
    goto :goto_4

    .line 63
    :cond_7
    move p1, v2

    .line 64
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    .line 65
    and-int/2addr v3, v0

    .line 67
    if-eqz v3, :cond_8

    .line 68
    move v3, v1

    .line 70
    goto :goto_5

    .line 71
    :cond_8
    move v3, v2

    .line 72
    :goto_5
    and-int/lit8 v4, v0, 0x4

    .line 73
    if-eqz v4, :cond_9

    .line 75
    move v4, v1

    .line 77
    goto :goto_6

    .line 78
    :cond_9
    move v4, v2

    .line 79
    :goto_6
    and-int/lit16 v5, v0, 0x200

    .line 80
    if-eqz v5, :cond_a

    .line 82
    move v5, v1

    .line 84
    goto :goto_7

    .line 85
    :cond_a
    move v5, v2

    .line 86
    :goto_7
    and-int/lit16 v6, v0, 0x80

    .line 87
    if-eqz v6, :cond_b

    .line 89
    move v6, v1

    .line 91
    goto :goto_8

    .line 92
    :cond_b
    move v6, v2

    .line 93
    :goto_8
    and-int/lit8 v0, v0, 0x10

    .line 94
    if-eqz v0, :cond_c

    .line 96
    goto :goto_9

    .line 98
    :cond_c
    move v1, v2

    .line 99
    :goto_9
    if-eqz v1, :cond_d

    .line 100
    return-void

    .line 102
    :cond_d
    if-nez v6, :cond_10

    .line 103
    if-nez v5, :cond_10

    .line 105
    if-eqz p1, :cond_e

    .line 107
    if-eqz v5, :cond_f

    .line 109
    :cond_e
    if-nez v3, :cond_f

    .line 111
    if-eqz v4, :cond_10

    .line 113
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->reCreateWindow()V

    .line 115
    :cond_10
    if-eqz v6, :cond_11

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->updateWindowViewThemeBg()V

    .line 120
    :cond_11
    return-void
    .line 123
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->isCollapsed()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->reCreateWindow()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onSuperSaveModeChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->superPowerModeOn:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->superPowerModeOn:Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    iput-boolean p1, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->superPowerMode:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->reCreateWindow()V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->recreateOnConfigChanged()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->setSuperPowerMode(Z)V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public final onUseControlCenterChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->addControlPanelWindow()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->removeControlPanelWindow()V

    .line 14
    :cond_1
    :goto_0
    return-void
    .line 17
.end method

.method public final preloadRecentApps()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/ControlCenter;->collapse(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public final reCreateWindow()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->recreateOnConfigChanged()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->updateWindowViewThemeBg()V

    .line 20
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->isCollapsed()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/ControlCenter;->collapse(Z)V

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->removeControlPanelWindow()V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->addControlPanelWindow()V

    .line 37
    return-void
    .line 40
.end method

.method public final remQsTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "command remove tile: "

    .line 10
    const-string v2, "ControlCenter"

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->qsTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    .line 22
    return-void
    .line 25
.end method

.method public final removeControlPanelWindow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->setListening(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->destroy()V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 21
    iget-boolean v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    const/4 v3, 0x1

    .line 31
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->hidePanel(ZZ)V

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/controlcenter/ControlCenter;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 35
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 37
    iget-object v2, p0, Lcom/android/systemui/controlcenter/ControlCenter;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 40
    iget-object v2, v2, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 42
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iget-boolean v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 52
    const/4 v3, 0x0

    .line 54
    if-nez v2, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 58
    if-eqz v2, :cond_3

    .line 60
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->removeOnExpandChangeListener(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView$OnExpandChangeListener;)V

    .line 62
    iget-object v4, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowManager:Landroid/view/WindowManager;

    .line 65
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    .line 67
    move-result-object v2

    .line 70
    invoke-interface {v4, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 71
    :cond_3
    iput-object v3, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 74
    iput-boolean v1, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 76
    iget-object v1, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 78
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 85
    return-void
    .line 87
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->context:Landroid/content/Context;

    .line 14
    const-string/jumbo v1, "window"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/WindowManager;

    .line 23
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 29
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->displayId:I

    .line 33
    new-instance v1, Landroid/content/res/Configuration;

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 41
    move-result-object v0

    .line 44
    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 45
    iput-object v1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->configuration:Landroid/content/res/Configuration;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPluginManager:Lcom/android/systemui/ControlCenterPluginManager;

    .line 50
    iput-object p0, v0, Lcom/android/systemui/ControlCenterPluginManager;->callback:Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;

    .line 52
    const/4 v1, 0x0

    .line 54
    iput v1, v0, Lcom/android/systemui/ControlCenterPluginManager;->retryCount:I

    .line 55
    iget-object v0, v0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->miPlayPluginManager:Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 68
    if-nez v0, :cond_0

    .line 70
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 78
    const-class v2, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 80
    const/4 v3, 0x1

    .line 82
    invoke-interface {v0, p0, v2, v3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 83
    :cond_0
    iput v1, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->currentState:I

    .line 86
    return-void
    .line 88
.end method

.method public final updateWindowViewThemeBg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->getThemeBackgroundView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object v1

    .line 24
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 25
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    const v1, 0x7f0816b5    # @drawable/notification_panel_window_bg 'res/drawable/notification_panel_window_bg.xml'

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    goto :goto_1

    .line 40
    :cond_2
    const v1, 0x7f0816b6    # @drawable/notification_panel_window_bg_landscape 'res/drawable/notification_panel_window_bg_landscape.xml'

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_1
    return-void
    .line 51
.end method
