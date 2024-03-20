.class public final Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationRankingManagerExKt$miuiRankingComparator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "MiuiComparator"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object p0, p1

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    move-result-object p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    move-object p2, p1

    .line 22
    :goto_1
    const-string v0, "miui.showAtTail"

    .line 23
    const/4 v1, 0x0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 28
    move-result-object v2

    .line 31
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 32
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v2, p1

    .line 43
    :goto_2
    if-eqz p2, :cond_3

    .line 44
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 46
    move-result-object p1

    .line 49
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object p1

    .line 59
    :cond_3
    const-string v0, "miui.systemWarnings"

    .line 60
    const/4 v3, 0x1

    .line 62
    if-eqz p0, :cond_5

    .line 63
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 65
    if-eqz v4, :cond_4

    .line 67
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    move-result-object v4

    .line 72
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 73
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    move v4, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v4, v1

    .line 83
    :goto_3
    if-ne v4, v3, :cond_5

    .line 84
    move v4, v3

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move v4, v1

    .line 88
    :goto_4
    if-nez v4, :cond_8

    .line 89
    if-eqz p0, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 93
    move-result p0

    .line 96
    if-ne p0, v3, :cond_6

    .line 97
    move p0, v3

    .line 99
    goto :goto_5

    .line 100
    :cond_6
    move p0, v1

    .line 101
    :goto_5
    if-eqz p0, :cond_7

    .line 102
    goto :goto_6

    .line 104
    :cond_7
    move p0, v1

    .line 105
    goto :goto_7

    .line 106
    :cond_8
    :goto_6
    move p0, v3

    .line 107
    :goto_7
    if-eqz p2, :cond_a

    .line 108
    iget-boolean v4, p2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 110
    if-eqz v4, :cond_9

    .line 112
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 114
    move-result-object v4

    .line 117
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 118
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 120
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    move v0, v3

    .line 126
    goto :goto_8

    .line 127
    :cond_9
    move v0, v1

    .line 128
    :goto_8
    if-ne v0, v3, :cond_a

    .line 129
    move v0, v3

    .line 131
    goto :goto_9

    .line 132
    :cond_a
    move v0, v1

    .line 133
    :goto_9
    if-nez v0, :cond_d

    .line 134
    if-eqz p2, :cond_b

    .line 136
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 138
    move-result p2

    .line 141
    if-ne p2, v3, :cond_b

    .line 142
    move p2, v3

    .line 144
    goto :goto_a

    .line 145
    :cond_b
    move p2, v1

    .line 146
    :goto_a
    if-eqz p2, :cond_c

    .line 147
    goto :goto_b

    .line 149
    :cond_c
    move p2, v1

    .line 150
    goto :goto_c

    .line 151
    :cond_d
    :goto_b
    move p2, v3

    .line 152
    :goto_c
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    move-result v0

    .line 156
    if-nez v0, :cond_e

    .line 157
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result p0

    .line 164
    if-eqz p0, :cond_f

    .line 165
    goto :goto_d

    .line 167
    :cond_e
    if-eq p0, p2, :cond_10

    .line 168
    if-ne p0, v3, :cond_f

    .line 170
    :goto_d
    const/4 v1, -0x1

    .line 172
    goto :goto_e

    .line 173
    :cond_f
    move v1, v3

    .line 174
    :cond_10
    :goto_e
    return v1
    .line 175
.end method
