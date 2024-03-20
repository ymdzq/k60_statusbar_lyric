.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic val$animate:Z

.field public final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic val$intent:Landroid/app/PendingIntent;

.field public final synthetic val$isActivityIntent:Z

.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic val$showOverLockscreen:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$intent:Landroid/app/PendingIntent;

    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$isActivityIntent:Z

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    .line 12
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$showOverLockscreen:Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 11

    .line 1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$intent:Landroid/app/PendingIntent;

    .line 4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$isActivityIntent:Z

    .line 6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    .line 8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 10
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterKeyguardDismissed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterKeyguardDismissed$2;

    .line 19
    const/4 v6, 0x0

    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 22
    const-string v7, "NotifActivityStarter"

    .line 24
    invoke-virtual {v0, v7, v1, v3, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v2, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 33
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 35
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 39
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 43
    move-result v7

    .line 46
    new-instance v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;

    .line 47
    move-object v0, v10

    .line 49
    move-object v1, v9

    .line 50
    move v6, v8

    .line 51
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;ZZZ)V

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$showOverLockscreen:Z

    .line 55
    const/4 v0, 0x1

    .line 57
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 58
    if-eqz p0, :cond_0

    .line 60
    check-cast v1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 62
    iget-object p0, v1, Lcom/android/systemui/shade/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 73
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 77
    if-eqz p0, :cond_1

    .line 79
    iget-object p0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 81
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 85
    move-result p0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    iget-object p0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    check-cast v1, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 98
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade()Z

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->run()V

    .line 104
    :goto_0
    if-nez v8, :cond_3

    .line 107
    iget-object p0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 109
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 113
    move-result p0

    .line 116
    if-nez p0, :cond_2

    .line 117
    goto :goto_1

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 120
    :cond_3
    :goto_1
    return v0
    .line 121
.end method

.method public final willRunAnimationOnKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->val$animate:Z

    .line 2
    return p0
    .line 4
.end method
