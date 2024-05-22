.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;


# instance fields
.field public final activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final notificationRowComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->notificationRowComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
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

.method public final getActivatableNotificationViewController()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->activatableNotificationView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->expandableOutlineViewController()Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    .line 6
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 10
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NotificationRowComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

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
