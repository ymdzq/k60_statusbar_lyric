.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    .line 30
    :cond_0
    return-void

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 36
    check-cast p0, Ljava/lang/String;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 40
    iget-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 42
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 44
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 46
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wmshell/BubblesManager;->onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 53
    :cond_1
    return-void

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 63
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 82
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 83
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 85
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

    .line 87
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    return-void

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 94
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 96
    check-cast p0, Ljava/lang/String;

    .line 98
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 100
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 102
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 104
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 106
    move-result-object p0

    .line 109
    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 112
    move-result v0

    .line 115
    const/4 v1, 0x4

    .line 116
    if-lt v0, v1, :cond_3

    .line 117
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    .line 120
    :cond_3
    return-void

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 125
    check-cast p0, Ljava/util/function/Consumer;

    .line 127
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 129
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 131
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 133
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 135
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    move-result-object v0

    .line 142
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 143
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 148
.end method
