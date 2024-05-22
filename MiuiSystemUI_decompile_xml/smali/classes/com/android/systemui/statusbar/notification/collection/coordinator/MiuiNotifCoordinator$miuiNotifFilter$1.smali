.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 7
    const-string p1, "MiuiNotifCoordinator"

    .line 9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 11
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 15
    const-string p1, "SummaryFilter"

    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 10
    iget-boolean p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 12
    return p0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$miuiNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 17
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isEmptySummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)Z

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
