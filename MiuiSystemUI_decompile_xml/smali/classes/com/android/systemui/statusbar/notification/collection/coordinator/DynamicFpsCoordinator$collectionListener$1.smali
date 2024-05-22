.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic $screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final synthetic $shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final synthetic $statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 2
    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 4
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x3

    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 16
    check-cast p1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 18
    iget-boolean p1, p1, Lcom/android/systemui/shade/ShadeControllerImpl;->mExpandedVisible:Z

    .line 20
    if-nez p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->$statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 24
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 26
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;

    .line 33
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;->access$requestScreenFpsDynamic(Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;)V

    .line 35
    :cond_1
    return-void
    .line 38
.end method
