.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$activeConversationEntries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$activeConversationEntries$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$updateNotificationRanking$activeConversationEntries$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
