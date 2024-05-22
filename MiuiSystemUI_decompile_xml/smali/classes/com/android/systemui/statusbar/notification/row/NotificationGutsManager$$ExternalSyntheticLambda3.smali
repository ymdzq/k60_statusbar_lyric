.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final synthetic f$2:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$2:Landroid/service/notification/StatusBarNotification;

    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onClick(Landroid/app/NotificationChannel;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$2:Landroid/service/notification/StatusBarNotification;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 10
    const/16 v5, 0xcd

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 16
    goto :goto_0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 20
    invoke-virtual {v0, v5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 22
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    .line 28
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 39
    invoke-interface {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    invoke-virtual {p0, v2, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 44
    return-void

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 48
    invoke-virtual {v0, v5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 50
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    .line 56
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 65
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 67
    invoke-interface {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :catch_1
    invoke-virtual {p0, v2, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 72
    return-void

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 76
    invoke-virtual {v0, v5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 78
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    .line 84
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 93
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 95
    invoke-interface {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :catch_2
    invoke-virtual {p0, v2, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 100
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 104
.end method
