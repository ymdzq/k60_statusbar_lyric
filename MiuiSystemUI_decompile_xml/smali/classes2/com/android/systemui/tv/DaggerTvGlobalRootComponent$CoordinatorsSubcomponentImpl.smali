.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent;


# instance fields
.field public alertCoordinatorProvider:Ljavax/inject/Provider;

.field public aodFocusControllerProvider:Ljavax/inject/Provider;

.field public appOpsCoordinatorProvider:Ljavax/inject/Provider;

.field public badgeCoordinatorProvider:Ljavax/inject/Provider;

.field public bubbleCoordinatorProvider:Ljavax/inject/Provider;

.field public conversationCoordinatorProvider:Ljavax/inject/Provider;

.field public final coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

.field public countLimitCoordinatorProvider:Ljavax/inject/Provider;

.field public dataStoreCoordinatorProvider:Ljavax/inject/Provider;

.field public debugModeCoordinatorProvider:Ljavax/inject/Provider;

.field public deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

.field public dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

.field public dynamicFpsCoordinatorProvider:Ljavax/inject/Provider;

.field public foldCoordinatorProvider:Ljavax/inject/Provider;

.field public groupCountCoordinatorProvider:Ljavax/inject/Provider;

.field public groupWhenCoordinatorProvider:Ljavax/inject/Provider;

.field public gutsCoordinatorProvider:Ljavax/inject/Provider;

.field public headsUpCoordinatorProvider:Ljavax/inject/Provider;

.field public hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

.field public hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

.field public keyguardCoordinatorProvider:Ljavax/inject/Provider;

.field public mediaCoordinatorProvider:Ljavax/inject/Provider;

.field public miuiBubbleCoordinatorProvider:Ljavax/inject/Provider;

.field public miuiNotifCoordinatorProvider:Ljavax/inject/Provider;

.field public miuiTimeoutCoordinatorProvider:Ljavax/inject/Provider;

.field public notifCoordinatorsImplProvider:Ljavax/inject/Provider;

.field public preparationCoordinatorProvider:Ljavax/inject/Provider;

.field public rankingCoordinatorProvider:Ljavax/inject/Provider;

.field public remoteInputCoordinatorProvider:Ljavax/inject/Provider;

.field public rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

.field public sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

.field public smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

.field public stackCoordinatorProvider:Ljavax/inject/Provider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public usbNotificationCoordinatorProvider:Ljavax/inject/Provider;

.field public viewConfigCoordinatorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->initialize()V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final getNotifCoordinators()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifCoordinatorsImplProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 8
    return-object p0
    .line 10
.end method

.method public final gutsCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final headsUpCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final initialize()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 8
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 11
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dataStoreCoordinatorProvider:Ljavax/inject/Provider;

    .line 18
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 26
    const/4 v4, 0x2

    .line 28
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 29
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

    .line 36
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 44
    const/4 v4, 0x3

    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 47
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    .line 54
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 62
    const/4 v4, 0x4

    .line 64
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 65
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    .line 72
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 80
    const/4 v4, 0x5

    .line 82
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 83
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    .line 90
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 98
    const/4 v4, 0x6

    .line 100
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 101
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 108
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 114
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 116
    const/4 v4, 0x7

    .line 118
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 119
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 122
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    .line 126
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 128
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 132
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 134
    const/16 v4, 0x8

    .line 136
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 138
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 141
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 145
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 147
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 151
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 153
    const/16 v4, 0x9

    .line 155
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 157
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 160
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiBubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 164
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 170
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 172
    const/16 v4, 0xa

    .line 174
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 176
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 179
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 183
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 187
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 189
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 191
    const/16 v4, 0xb

    .line 193
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 195
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 198
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorProvider:Ljavax/inject/Provider;

    .line 202
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 206
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 208
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 210
    const/16 v4, 0xc

    .line 212
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 214
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 217
    move-result-object v0

    .line 220
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    .line 221
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 223
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 225
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 227
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 229
    const/16 v4, 0xd

    .line 231
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 233
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 236
    move-result-object v0

    .line 239
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->debugModeCoordinatorProvider:Ljavax/inject/Provider;

    .line 240
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 242
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 244
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 246
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 248
    const/16 v4, 0xe

    .line 250
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 252
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 255
    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupCountCoordinatorProvider:Ljavax/inject/Provider;

    .line 259
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 261
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 263
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 265
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 267
    const/16 v4, 0xf

    .line 269
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 271
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 274
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupWhenCoordinatorProvider:Ljavax/inject/Provider;

    .line 278
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 280
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 282
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 284
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 286
    const/16 v4, 0x10

    .line 288
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 290
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 293
    move-result-object v0

    .line 296
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    .line 297
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 299
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 301
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 303
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 305
    const/16 v4, 0x11

    .line 307
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 309
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 312
    move-result-object v0

    .line 315
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 316
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 318
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 320
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 322
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 324
    const/16 v4, 0x12

    .line 326
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 328
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 331
    move-result-object v0

    .line 334
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->remoteInputCoordinatorProvider:Ljavax/inject/Provider;

    .line 335
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 337
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 339
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 341
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 343
    const/16 v4, 0x13

    .line 345
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 347
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 350
    move-result-object v0

    .line 353
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

    .line 354
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 356
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 358
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 360
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 362
    const/16 v4, 0x14

    .line 364
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 366
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 369
    move-result-object v0

    .line 372
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->stackCoordinatorProvider:Ljavax/inject/Provider;

    .line 373
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 375
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 377
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 379
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 381
    const/16 v4, 0x15

    .line 383
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 385
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 388
    move-result-object v0

    .line 391
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

    .line 392
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 394
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 396
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 398
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 400
    const/16 v4, 0x16

    .line 402
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 404
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 407
    move-result-object v0

    .line 410
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->viewConfigCoordinatorProvider:Ljavax/inject/Provider;

    .line 411
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 413
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 415
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 417
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 419
    const/16 v4, 0x17

    .line 421
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 423
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 426
    move-result-object v0

    .line 429
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

    .line 430
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 434
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 436
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 438
    const/16 v4, 0x18

    .line 440
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 442
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 445
    move-result-object v0

    .line 448
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

    .line 449
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 451
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 453
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 455
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 457
    const/16 v4, 0x19

    .line 459
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 461
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 464
    move-result-object v0

    .line 467
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->usbNotificationCoordinatorProvider:Ljavax/inject/Provider;

    .line 468
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 470
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 472
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 474
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 476
    const/16 v4, 0x1a

    .line 478
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 480
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 483
    move-result-object v0

    .line 486
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->badgeCoordinatorProvider:Ljavax/inject/Provider;

    .line 487
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 489
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 491
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 493
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 495
    const/16 v4, 0x1b

    .line 497
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 499
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 502
    move-result-object v0

    .line 505
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->countLimitCoordinatorProvider:Ljavax/inject/Provider;

    .line 506
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 508
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 510
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 512
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 514
    const/16 v4, 0x1c

    .line 516
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 518
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 521
    move-result-object v0

    .line 524
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->alertCoordinatorProvider:Ljavax/inject/Provider;

    .line 525
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 527
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 529
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 531
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 533
    const/16 v4, 0x1d

    .line 535
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 537
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 540
    move-result-object v0

    .line 543
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->foldCoordinatorProvider:Ljavax/inject/Provider;

    .line 544
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 546
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 548
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 550
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 552
    const/16 v4, 0x1e

    .line 554
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 556
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 559
    move-result-object v0

    .line 562
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiNotifCoordinatorProvider:Ljavax/inject/Provider;

    .line 563
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 565
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 567
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 569
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 571
    const/16 v4, 0x1f

    .line 573
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 575
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 578
    move-result-object v0

    .line 581
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dynamicFpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 582
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 584
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 586
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 588
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 590
    const/16 v4, 0x20

    .line 592
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 594
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 597
    move-result-object v0

    .line 600
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->aodFocusControllerProvider:Ljavax/inject/Provider;

    .line 601
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 603
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 605
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 607
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 609
    const/16 v4, 0x21

    .line 611
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 613
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 616
    move-result-object v0

    .line 619
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiTimeoutCoordinatorProvider:Ljavax/inject/Provider;

    .line 620
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;

    .line 622
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 624
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 626
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 628
    const/4 v4, 0x0

    .line 630
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V

    .line 631
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 634
    move-result-object v0

    .line 637
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifCoordinatorsImplProvider:Ljavax/inject/Provider;

    .line 638
    return-void
    .line 640
.end method

.method public final injectAlertCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindEventManagerImplProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 10
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;->mBindEventManagerImpl:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 12
    return-object p1
    .line 14
.end method

.method public final injectAodFocusController(Lcom/android/systemui/statusbar/notification/focus/AodFocusController;)Lcom/android/systemui/statusbar/notification/focus/AodFocusController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 10
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 22
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->focusCoordinatorProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 34
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mFocusController:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 40
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;->mContext:Landroid/content/Context;

    .line 42
    return-object p1
    .line 44
.end method

.method public final injectBadgeCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationAlertLoggerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/log/NotificationAlertLogger;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    return-object p1
    .line 15
.end method

.method public final injectCountLimitCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindEventManagerImplProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 10
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;->mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 12
    return-object p1
    .line 14
.end method

.method public final injectMiuiTimeoutCoordinator(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 4
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mContext:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 8
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 14
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dismissNotificationHelperProvider:Ljavax/inject/Provider;

    .line 20
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 26
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mDismissNotificationHelper:Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    check-cast p0, Landroid/os/Handler;

    .line 38
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 40
    return-object p1
    .line 42
.end method

.method public final keyguardCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUnseenNotificationLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final preparationCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method
