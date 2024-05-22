.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field public final launcherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final processNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/app/Notification$MessagingStyle;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/app/Notification$MessagingStyle;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 17
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    const/4 v1, 0x2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationType(I)Landroid/app/Notification$MessagingStyle;

    .line 32
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 35
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 37
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/pm/LauncherApps;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    .line 45
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/app/Notification$MessagingStyle;->setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;

    .line 49
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 52
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;

    .line 65
    invoke-direct {v2, p1, p0, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;)V

    .line 67
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    check-cast p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    .line 79
    iget p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    .line 81
    invoke-virtual {v0, p0}, Landroid/app/Notification$MessagingStyle;->setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;

    .line 83
    return-void
    .line 86
.end method
