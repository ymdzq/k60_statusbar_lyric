.class public final Lcom/android/wm/shell/bubbles/BubbleEntry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIsDismissable:Z

.field public final mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field public final mSbn:Landroid/service/notification/StatusBarNotification;

.field public final mShouldSuppressNotificationDot:Z

.field public final mShouldSuppressNotificationList:Z

.field public final mShouldSuppressPeek:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mIsDismissable:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationDot:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    .line 13
    iput-boolean p6, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressPeek:Z

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isBubble()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 8
    and-int/lit16 p0, p0, 0x1000

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final setFlagBubble(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    move-result-object p1

    .line 12
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 13
    and-int/lit16 v0, v0, -0x1001

    .line 15
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 20
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 26
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 34
    move-result-object p1

    .line 37
    iget v0, p1, Landroid/app/Notification;->flags:I

    .line 38
    or-int/lit16 v0, v0, 0x1000

    .line 40
    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    .line 44
    return-void
    .line 47
.end method
