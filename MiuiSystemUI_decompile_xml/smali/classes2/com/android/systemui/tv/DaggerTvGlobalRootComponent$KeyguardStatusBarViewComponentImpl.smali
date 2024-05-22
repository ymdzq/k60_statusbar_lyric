.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;


# instance fields
.field public final keyguardStatusBarViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;

.field public final shadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public final view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/shade/ShadeViewStateProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->keyguardStatusBarViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->shadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v20, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 4
    move-object/from16 v1, v20

    .line 6
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 8
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 10
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 18
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 20
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSystemStatusAnimationSchedulerProvider:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 28
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 30
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 38
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 40
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 48
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 50
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 57
    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 58
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider17:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 67
    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager$Factory;

    .line 68
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->shadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    .line 70
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 72
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    move-result-object v8

    .line 79
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 80
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 82
    iget-object v9, v9, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 86
    move-result-object v9

    .line 89
    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 90
    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 92
    iget-object v10, v10, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 94
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    move-result-object v10

    .line 99
    check-cast v10, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 102
    iget-object v11, v11, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 104
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 106
    move-result-object v11

    .line 109
    check-cast v11, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 110
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 112
    iget-object v12, v12, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 114
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 116
    move-result-object v12

    .line 119
    check-cast v12, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 120
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 122
    iget-object v13, v13, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarContentInsetsProvider:Ljavax/inject/Provider;

    .line 124
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 126
    move-result-object v13

    .line 129
    check-cast v13, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 130
    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 132
    iget-object v14, v14, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 134
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 136
    move-result-object v14

    .line 139
    check-cast v14, Landroid/os/UserManager;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->statusBarUserChipViewModel()Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 142
    move-result-object v15

    .line 145
    move-object/from16 v21, v1

    .line 146
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 148
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 153
    move-object/from16 v16, v1

    .line 154
    check-cast v16, Lcom/android/systemui/util/settings/SecureSettings;

    .line 156
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 158
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 160
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    move-object/from16 v17, v1

    .line 166
    check-cast v17, Lcom/android/systemui/statusbar/CommandQueue;

    .line 168
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 170
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 172
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 174
    move-result-object v1

    .line 177
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 178
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 180
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardLogger()Lcom/android/keyguard/logging/KeyguardLogger;

    .line 182
    move-result-object v18

    .line 185
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 186
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 188
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 193
    move-object/from16 v19, v0

    .line 194
    check-cast v19, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 196
    move-object/from16 v1, v21

    .line 198
    invoke-direct/range {v1 .. v19}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/shade/ShadeViewStateProvider;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Landroid/os/UserManager;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 200
    return-object v20
    .line 203
.end method

.method public final statusBarUserChipViewModel()Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInteractorProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 24
    return-object v0
    .line 27
.end method
