.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;


# instance fields
.field public legacyNotificationShelfControllerImplProvider:Ljavax/inject/Provider;

.field public final notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public final notificationShelfComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelfComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->initialize(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final activatableNotificationViewController()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->expandableOutlineViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    .line 6
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 10
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 22
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    .line 28
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 30
    return-object v0
    .line 33
.end method

.method public final expandableOutlineViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    .line 4
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;-><init>()V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;)V

    .line 9
    return-object p0
    .line 12
.end method

.method public final expandableViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final getNotificationShelfController()Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->legacyNotificationShelfControllerImplProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl$SwitchingProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->notificationShelfComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NotificationShelfComponentImpl;->legacyNotificationShelfControllerImplProvider:Ljavax/inject/Provider;

    .line 18
    return-void
    .line 20
.end method
