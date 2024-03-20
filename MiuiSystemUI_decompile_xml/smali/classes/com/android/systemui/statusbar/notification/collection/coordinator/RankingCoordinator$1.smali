.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSilentNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 10
    return-object p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mAlertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 13
    return-object p0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSilentNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 16
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 20
.end method

.method public final isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 12
.end method

.method public final onEntriesUpdated(Ljava/util/List;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 5
    const/4 v2, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    return-void

    .line 11
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasMinimizedEntries:Z

    .line 12
    :goto_0
    move-object v0, p1

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v3

    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 29
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 33
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasMinimizedEntries:Z

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasSilentEntries:Z

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasMinimizedEntries:Z

    .line 49
    or-int/2addr p1, v0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 52
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllButtonEnabled:Z

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 58
    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setClearSectionButtonEnabled(Z)V

    .line 62
    :cond_2
    return-void

    .line 65
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasSilentEntries:Z

    .line 66
    :goto_2
    move-object v0, p1

    .line 68
    check-cast v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v3

    .line 74
    if-ge v1, v3, :cond_4

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 83
    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 87
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasSilentEntries:Z

    .line 95
    goto :goto_3

    .line 97
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_2

    .line 100
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasSilentEntries:Z

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mHasMinimizedEntries:Z

    .line 103
    or-int/2addr p1, v0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 106
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllButtonEnabled:Z

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 112
    if-eqz p0, :cond_5

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setClearSectionButtonEnabled(Z)V

    .line 116
    :cond_5
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method
