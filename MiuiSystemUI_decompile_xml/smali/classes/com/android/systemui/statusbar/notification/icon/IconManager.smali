.class public Lcom/android/systemui/statusbar/notification/icon/IconManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

.field public final iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

.field public final launcherApps:Landroid/content/pm/LauncherApps;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

.field public unimportantConversationKeys:Ljava/util/Set;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    .line 11
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    .line 15
    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    .line 17
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    .line 22
    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->entryListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 8
    return-void
    .line 11
.end method

.method public final createIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->createIconView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4
    move-result-object v1

    .line 7
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/app/Notification;->isMediaNotification()Z

    .line 19
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->createIconView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 26
    move-result-object v0

    .line 29
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v3

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    .line 38
    move-result-object v4

    .line 41
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 42
    const/4 v6, 0x1

    .line 44
    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    .line 47
    move-result-object v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v5, v4

    .line 52
    :goto_1
    new-instance v7, Lkotlin/Pair;

    .line 53
    invoke-direct {v7, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 62
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 68
    :try_start_0
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 70
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, v4, v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 75
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 78
    new-instance v4, Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 80
    invoke-direct {v4, v6, v1, v0, p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;-><init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V

    .line 82
    iput-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 87
    :catch_0
    move-exception p0

    .line 88
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 91
    invoke-direct {v1, v2, v3, v3, v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;-><init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V

    .line 93
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 96
    throw p0
    .line 98
.end method

.method public final getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    if-nez p2, :cond_0

    .line 15
    const/4 p2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p2, v2

    .line 19
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 20
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 22
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 24
    if-eqz p2, :cond_1

    .line 26
    if-eqz v3, :cond_1

    .line 28
    return-object v3

    .line 30
    :cond_1
    if-nez p2, :cond_2

    .line 31
    if-eqz v1, :cond_2

    .line 33
    return-object v1

    .line 35
    :cond_2
    const-string v1, "No icon in notification from "

    .line 36
    if-eqz p2, :cond_a

    .line 38
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 40
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 42
    move-result-object v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 48
    invoke-virtual {v3, v2}, Landroid/content/pm/LauncherApps;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    .line 50
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v2, 0x0

    .line 55
    :goto_1
    if-nez v2, :cond_6

    .line 56
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 58
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 60
    move-result-object v3

    .line 63
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 64
    const-string v4, "android.messages"

    .line 66
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 68
    move-result-object v4

    .line 71
    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 72
    move-result-object v4

    .line 75
    const-string v5, "android.messagingUser"

    .line 76
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    move-result-object v3

    .line 81
    check-cast v3, Landroid/app/Person;

    .line 82
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 84
    move-result v5

    .line 87
    add-int/lit8 v5, v5, -0x1

    .line 88
    if-ltz v5, :cond_6

    .line 90
    :goto_2
    add-int/lit8 v6, v5, -0x1

    .line 92
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 97
    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    .line 98
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 100
    move-result-object v7

    .line 103
    if-eqz v7, :cond_4

    .line 104
    if-eq v7, v3, :cond_4

    .line 106
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 108
    move-result-object v2

    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 115
    move-result-object v2

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    if-gez v6, :cond_5

    .line 120
    goto :goto_3

    .line 122
    :cond_5
    move v5, v6

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 125
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 127
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 129
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 133
    move-result-object v2

    .line 136
    :cond_7
    if-nez v2, :cond_8

    .line 137
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 139
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 141
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 145
    move-result-object v2

    .line 148
    :cond_8
    if-eqz v2, :cond_9

    .line 149
    goto :goto_4

    .line 151
    :cond_9
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    .line 152
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 154
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 156
    invoke-static {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0

    .line 165
    :cond_a
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 168
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 170
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 172
    move-result v4

    .line 175
    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;IZ)Landroid/graphics/drawable/Icon;

    .line 176
    move-result-object v2

    .line 179
    :goto_4
    move-object v6, v2

    .line 180
    if-eqz v6, :cond_d

    .line 181
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 183
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 185
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 187
    move-result-object v4

    .line 190
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 191
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 193
    iget v7, v0, Landroid/app/Notification;->iconLevel:I

    .line 195
    iget v8, v0, Landroid/app/Notification;->number:I

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->iconBuilder:Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    .line 199
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;->context:Landroid/content/Context;

    .line 201
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/app/Notification;Landroid/content/Context;)Ljava/lang/String;

    .line 203
    move-result-object v9

    .line 206
    move-object v3, v1

    .line 207
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 211
    move-result p0

    .line 214
    if-eqz p0, :cond_c

    .line 215
    if-eqz p2, :cond_b

    .line 217
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 219
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 221
    goto :goto_5

    .line 223
    :cond_b
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 224
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 226
    :cond_c
    :goto_5
    return-object v1

    .line 228
    :cond_d
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    .line 229
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 231
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 233
    invoke-static {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 238
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    .line 239
    throw p0
    .line 242
.end method

.method public final isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 10
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->unimportantConversationKeys:Ljava/util/Set;

    .line 22
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 24
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final recalculateForImportantConversationChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 26
    move-result v2

    .line 29
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 30
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    .line 32
    if-eqz v4, :cond_0

    .line 34
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    .line 36
    if-eq v2, v3, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIconsSafe(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 40
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 43
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    return-void
    .line 48
.end method

.method public final setIcon(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 2
    iget-object v1, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 18
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    if-nez v0, :cond_0

    .line 26
    iget-boolean p0, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 28
    if-nez p0, :cond_0

    .line 30
    move p0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p0, v2

    .line 34
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setShowsConversation(Z)V

    .line 35
    iget p0, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    .line 38
    const/16 p3, 0x15

    .line 40
    if-ge p0, p3, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move v1, v2

    .line 45
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object p0

    .line 49
    const p3, 0x7f0a0420    # @id/icon_is_pre_L

    .line 50
    invoke-virtual {p2, p3, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 53
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 56
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    return-void

    .line 62
    :cond_2
    new-instance p0, Lcom/android/systemui/statusbar/notification/InflationException;

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    const-string p3, "Couldn\'t create icon "

    .line 67
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0
    .line 82
.end method

.method public final updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    .line 15
    move-result-object v0

    .line 18
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 19
    if-eqz v1, :cond_1

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->getIconDescriptor(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/StatusBarIcon;

    .line 24
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v0

    .line 29
    :goto_0
    new-instance v2, Lkotlin/Pair;

    .line 30
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 39
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 45
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 47
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 49
    if-eqz v2, :cond_2

    .line 51
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 55
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 58
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mCenteredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 63
    if-eqz v0, :cond_3

    .line 65
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 69
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 72
    :cond_3
    return-void
    .line 75
.end method

.method public final updateIconsSafe(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "IconManager"

    .line 7
    const-string v0, "Unable to update icon"

    .line 9
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_0
    return-void
    .line 14
.end method
