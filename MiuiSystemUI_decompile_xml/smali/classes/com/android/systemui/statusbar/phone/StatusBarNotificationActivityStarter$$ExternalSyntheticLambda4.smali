.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$2:Landroid/app/PendingIntent;

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$2:Landroid/app/PendingIntent;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$3:Landroid/content/Intent;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final startPendingIntent(Landroid/view/RemoteAnimationAdapter;)I
    .locals 10

    .line 1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$2:Landroid/app/PendingIntent;

    .line 2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$3:Landroid/content/Intent;

    .line 4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getAndResetLastActionUpTime()J

    .line 13
    move-result-wide v0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    cmp-long v2, v0, v4

    .line 19
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 21
    if-lez v2, :cond_1

    .line 23
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 25
    iget v2, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 27
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 29
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 31
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 33
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 35
    move-result-object p1

    .line 38
    if-eqz v4, :cond_0

    .line 39
    const/4 v4, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v4, 0x2

    .line 43
    :goto_0
    invoke-virtual {p1, v4, v0, v1}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 44
    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 47
    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 50
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 57
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 62
    iget v0, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 64
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    .line 66
    move-result-object p1

    .line 69
    :goto_1
    move-object v7, p1

    .line 70
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    .line 71
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v0, v8

    .line 77
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 78
    move-result p1

    .line 81
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;->f$4:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 84
    invoke-virtual {v0, p0, v8, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendPendingIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;I)V

    .line 86
    return p1
    .line 89
.end method
