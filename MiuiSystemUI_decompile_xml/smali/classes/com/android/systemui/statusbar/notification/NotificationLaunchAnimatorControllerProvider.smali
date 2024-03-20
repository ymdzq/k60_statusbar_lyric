.class public final Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 8
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 10
    move-object v0, v7

    .line 12
    move-object v4, p1

    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/jank/InteractionJankMonitor;Ljava/lang/Runnable;)V

    .line 15
    return-object v7
    .line 18
.end method
