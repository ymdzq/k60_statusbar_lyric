.class public final Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAction:I

.field public final mAppPkg:Ljava/lang/String;

.field public final mAppUid:I

.field public final mChannelToUpdate:Landroid/app/NotificationChannel;

.field public final mINotificationManager:Landroid/app/INotificationManager;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 13
    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    .line 2
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_3

    .line 9
    const/4 v4, 0x4

    .line 11
    if-eq v0, v4, :cond_0

    .line 12
    goto/16 :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 16
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    .line 18
    move-result v0

    .line 21
    const/16 v4, -0x3e8

    .line 22
    if-eq v0, v4, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 26
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    .line 28
    move-result v0

    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 34
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 39
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 54
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 58
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 64
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 72
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 77
    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mAppBubble:I

    .line 79
    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 83
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 85
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 87
    invoke-interface {v0, v4, v5, v3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 92
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 94
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 96
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 102
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda2;

    .line 104
    invoke-direct {v3, v2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 112
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    .line 114
    move-result v2

    .line 117
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 122
    goto :goto_0

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 126
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    .line 128
    move-result v3

    .line 131
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 132
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 139
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 141
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 154
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 159
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 163
    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_1

    .line 168
    :catch_0
    move-exception p0

    .line 169
    const-string v0, "ConversationGuts"

    .line 170
    const-string v1, "Unable to update notification channel"

    .line 172
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_1
    return-void
    .line 177
.end method
