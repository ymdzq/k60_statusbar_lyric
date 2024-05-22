.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

.field public mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

.field public mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

.field public mInflationTask:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Bubble{k=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 9
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "\', pkg=\'"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 21
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "\', uid="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 33
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", mFreeformMode=\'"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p0, "\'}"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    return-object p0
    .line 61
.end method

.method public final updateEntryData(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto/16 :goto_3

    .line 7
    :cond_0
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 9
    invoke-direct {v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;-><init>()V

    .line 11
    iput-object v0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 14
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object v0

    .line 19
    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 20
    const-string v4, "android.title"

    .line 22
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 24
    move-result-object v3

    .line 27
    iput-object v3, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->title:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 34
    move-result-object v5

    .line 37
    iput-object v5, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    .line 38
    :try_start_0
    const-class v5, Landroid/app/Notification$BigTextStyle;

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v6, "android.text"

    .line 46
    if-eqz v5, :cond_2

    .line 48
    :try_start_1
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 50
    const-string v3, "android.bigText"

    .line 52
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 65
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 67
    move-result-object v1

    .line 70
    :goto_0
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 71
    goto/16 :goto_2

    .line 73
    :cond_2
    const-class v5, Landroid/app/Notification$MessagingStyle;

    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 83
    const-string v3, "android.messages"

    .line 85
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, [Landroid/os/Parcelable;

    .line 91
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 93
    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    .line 97
    move-result-object v0

    .line 100
    if-eqz v0, :cond_8

    .line 101
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    .line 103
    move-result-object v3

    .line 106
    iput-object v3, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 109
    move-result-object v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    .line 115
    move-result-object v3

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move-object v3, v1

    .line 120
    :goto_1
    iput-object v3, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 121
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 123
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 127
    move-result-object v1

    .line 130
    :cond_4
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    .line 131
    goto :goto_2

    .line 133
    :cond_5
    const-class v1, Landroid/app/Notification$InboxStyle;

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 142
    const-string v1, "android.textLines"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 146
    move-result-object v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    array-length v1, v0

    .line 152
    if-lez v1, :cond_8

    .line 153
    array-length v1, v0

    .line 155
    add-int/lit8 v1, v1, -0x1

    .line 156
    aget-object v0, v0, v1

    .line 158
    iput-object v0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 160
    goto :goto_2

    .line 162
    :cond_6
    const-class v1, Landroid/app/Notification$MediaStyle;

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v1

    .line 168
    if-eqz v1, :cond_7

    .line 169
    goto :goto_2

    .line 171
    :cond_7
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 172
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 174
    move-result-object v1

    .line 177
    iput-object v1, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 178
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 180
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 182
    move-result-object v0

    .line 185
    iput-object v0, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 190
    :cond_8
    :goto_2
    move-object v1, v2

    .line 193
    :goto_3
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 194
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 196
    return-void
    .line 198
.end method
