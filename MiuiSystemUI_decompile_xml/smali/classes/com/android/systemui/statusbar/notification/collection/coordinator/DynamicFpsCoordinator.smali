.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# static fields
.field public static final SUPPORT_FPS_DYNAMIC:Z


# instance fields
.field public final collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.vendor.smart_dfps.enable"

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;->SUPPORT_FPS_DYNAMIC:Z

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;

    .line 5
    invoke-direct {v0, p2, p3, p4, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;

    .line 10
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$headsUpChangedListener$1;

    .line 12
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$headsUpChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 17
    return-void
    .line 20
.end method

.method public static final access$requestScreenFpsDynamic(Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean p0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const-string p0, "DynamicFpsCoordinator"

    .line 9
    const-string/jumbo v0, "requestScreenFpsDynamic"

    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;->SUPPORT_FPS_DYNAMIC:Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    .line 21
    move-result-object p0

    .line 24
    const/16 v0, 0x100

    .line 25
    const/16 v1, 0x18

    .line 27
    const/16 v2, 0xff

    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator$collectionListener$1;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 4
    return-void
    .line 7
.end method
