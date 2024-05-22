.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 8
    const-string p1, "People(silent)"

    .line 10
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 16
    const-string p1, "People(alerting)"

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notifComparator:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

    .line 10
    return-object p0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notifComparator:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

    .line 13
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 10
    return-object p0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 13
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->getPeopleType(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    return v1

    .line 20
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    goto :goto_3

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 35
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    move p0, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move p0, v2

    .line 43
    :goto_2
    if-nez p0, :cond_3

    .line 44
    goto :goto_3

    .line 46
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 47
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    .line 49
    move-result p0

    .line 52
    const/4 v0, 0x3

    .line 53
    if-lt p0, v0, :cond_4

    .line 54
    goto :goto_4

    .line 56
    :cond_4
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 57
    if-nez p0, :cond_5

    .line 59
    :goto_3
    move v1, v2

    .line 61
    goto :goto_4

    .line 62
    :cond_5
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 63
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 65
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 67
    move-result-object p0

    .line 70
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 73
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 76
    move-result v1

    .line 79
    :goto_4
    return v1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 82
.end method
