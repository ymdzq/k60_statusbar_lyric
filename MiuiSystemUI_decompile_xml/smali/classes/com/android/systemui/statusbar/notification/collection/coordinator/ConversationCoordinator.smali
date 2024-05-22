.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field public final conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

.field public final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field public final notifComparator:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

.field public final notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

.field public final onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;

.field public final peopleAlertingSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

.field public final peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

.field public final peopleSilentSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

.field public final promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 11
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;

    .line 16
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    .line 30
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

    .line 32
    const/4 p2, 0x1

    .line 34
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;I)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleAlertingSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

    .line 38
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

    .line 40
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;I)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleSilentSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

    .line 46
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

    .line 48
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notifComparator:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

    .line 53
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 55
    return-void
    .line 57
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public final getPeopleType(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method
