.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$4;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 4
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$4;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 17
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 19
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/16 p0, 0x100

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 27
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_1
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
