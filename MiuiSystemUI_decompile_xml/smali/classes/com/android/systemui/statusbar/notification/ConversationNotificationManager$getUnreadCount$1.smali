.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $recoveredBuilder:Landroid/app/Notification$Builder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->$recoveredBuilder:Landroid/app/Notification$Builder;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    .line 4
    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->$recoveredBuilder:Landroid/app/Notification$Builder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    .line 15
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 17
    and-int/lit8 v2, v2, 0x8

    .line 19
    if-eqz v2, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p1, v0}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    .line 31
    move-result p1

    .line 34
    :goto_0
    iget p2, p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    .line 35
    if-eqz p1, :cond_2

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    const/4 p2, 0x1

    .line 42
    :cond_2
    :goto_1
    new-instance p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 47
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 49
    move-result-object p0

    .line 52
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;-><init>(ILandroid/app/Notification;)V

    .line 53
    return-object p1
    .line 56
.end method
