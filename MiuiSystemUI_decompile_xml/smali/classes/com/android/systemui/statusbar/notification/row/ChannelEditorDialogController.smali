.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

.field public appNotificationsEnabled:Z

.field public appUid:Ljava/lang/Integer;

.field public final channelGroupList:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

.field public final dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

.field public final edits:Ljava/util/Map;

.field public final groupNameLookup:Ljava/util/HashMap;

.field public final noMan:Landroid/app/INotificationManager;

.field public onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

.field public onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field public packageName:Ljava/lang/String;

.field public final paddedChannels:Ljava/util/List;

.field public prepared:Z

.field public final providedChannels:Ljava/util/List;

.field public final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 29
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    .line 34
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    .line 51
    const/high16 p1, -0x7efc0000

    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    .line 55
    return-void
    .line 57
.end method

.method public static synthetic getGroupNameLookup$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPaddedChannels$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final apply()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    const-string v2, "ChannelDialogController"

    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 33
    check-cast v4, Landroid/app/NotificationChannel;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Number;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 42
    move-result v1

    .line 45
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    .line 46
    move-result v5

    .line 49
    if-eq v5, v1, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 60
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v5

    .line 68
    invoke-interface {v3, v1, v5, v4}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v3, "Unable to update notification importance"

    .line 74
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 101
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result p0

    .line 109
    invoke-interface {v3, v1, p0, v0}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_1

    .line 113
    :catch_1
    move-exception p0

    .line 114
    const-string v0, "Error calling NoMan"

    .line 115
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_2
    :goto_1
    return-void
    .line 120
.end method

.method public final done()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    .line 13
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 39
    if-nez p0, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, p0

    .line 44
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    return-void
    .line 48
.end method

.method public final launchSettings(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroid/app/NotificationChannel;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p0

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;

    .line 35
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;->onClick(Landroid/app/NotificationChannel;I)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public final prepareDialogForApp(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;)V
    .locals 3

    .line 1
    const-string v0, "ChannelDialogController"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 16
    const/4 p1, 0x0

    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 19
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 24
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result p3

    .line 32
    invoke-interface {v1, p2, p3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    .line 33
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p2

    .line 38
    const-string p3, "Error calling NoMan"

    .line 39
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    move p2, p1

    .line 44
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 45
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    .line 53
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    .line 55
    move-object p3, p2

    .line 57
    check-cast p3, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 60
    const/4 p5, 0x0

    .line 63
    :try_start_1
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 64
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v2

    .line 77
    invoke-interface {v1, p6, v2, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    .line 78
    move-result-object p6

    .line 81
    invoke-virtual {p6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 82
    move-result-object p6

    .line 85
    instance-of v1, p6, Ljava/util/List;

    .line 86
    if-eqz v1, :cond_0

    .line 88
    goto :goto_1

    .line 90
    :cond_0
    move-object p6, p5

    .line 91
    :goto_1
    if-nez p6, :cond_1

    .line 92
    sget-object p6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    goto :goto_2

    .line 96
    :catch_1
    move-exception p6

    .line 97
    const-string v1, "Error fetching channel groups"

    .line 98
    invoke-static {v0, v1, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    sget-object p6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 103
    :cond_1
    :goto_2
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p3

    .line 111
    :cond_2
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result p6

    .line 115
    if-eqz p6, :cond_3

    .line 116
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object p6

    .line 121
    check-cast p6, Landroid/app/NotificationChannelGroup;

    .line 122
    invoke-virtual {p6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    .line 130
    invoke-virtual {p6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 135
    invoke-virtual {p6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    .line 136
    move-result-object p6

    .line 139
    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_3

    .line 143
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 144
    check-cast p3, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 148
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->paddedChannels:Ljava/util/List;

    .line 154
    move-object p6, p3

    .line 156
    check-cast p6, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p6}, Ljava/util/ArrayList;->clear()V

    .line 159
    new-instance p6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 162
    invoke-direct {p6, p4}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 164
    const/4 p4, 0x4

    .line 167
    invoke-static {p6, p4}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 168
    move-result-object p6

    .line 171
    invoke-static {p3, p6}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 172
    new-instance p6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 175
    invoke-direct {p6, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 177
    sget-object p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1;

    .line 180
    invoke-static {p6, p2}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 182
    move-result-object p2

    .line 185
    new-instance p6, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;

    .line 186
    invoke-direct {p6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;-><init>()V

    .line 188
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    .line 191
    invoke-direct {v0, p2, p6}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/FlatteningSequence;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$$inlined$compareBy$1;)V

    .line 193
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;

    .line 196
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$padToFourChannels$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    .line 198
    new-instance p6, Lkotlin/sequences/FilteringSequence;

    .line 201
    invoke-direct {p6, v0, p1, p2}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 203
    invoke-static {p6}, Lkotlin/sequences/SequencesKt;->distinct(Lkotlin/sequences/FilteringSequence;)Lkotlin/sequences/DistinctSequence;

    .line 206
    move-result-object p2

    .line 209
    move-object p6, p3

    .line 210
    check-cast p6, Ljava/util/ArrayList;

    .line 211
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result v0

    .line 216
    sub-int/2addr p4, v0

    .line 217
    invoke-static {p2, p4}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 218
    move-result-object p2

    .line 221
    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 222
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    .line 225
    move-result p2

    .line 228
    const/4 p4, 0x1

    .line 229
    if-ne p2, p4, :cond_4

    .line 230
    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    move-result-object p2

    .line 235
    check-cast p2, Landroid/app/NotificationChannel;

    .line 236
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 238
    move-result-object p2

    .line 241
    const-string v0, "miscellaneous"

    .line 242
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    move-result p2

    .line 247
    if-eqz p2, :cond_4

    .line 248
    invoke-virtual {p6}, Ljava/util/ArrayList;->clear()V

    .line 250
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialogBuilder:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    .line 253
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    .line 255
    iput-object p6, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    .line 257
    new-instance p6, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 259
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;->context:Landroid/content/Context;

    .line 261
    if-nez p2, :cond_5

    .line 263
    move-object p2, p5

    .line 265
    :cond_5
    invoke-direct {p6, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;-><init>(Landroid/content/Context;)V

    .line 266
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 269
    invoke-virtual {p6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 271
    move-result-object p2

    .line 274
    if-eqz p2, :cond_6

    .line 275
    invoke-virtual {p2, p4}, Landroid/view/Window;->requestFeature(I)Z

    .line 277
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 280
    if-nez p2, :cond_7

    .line 282
    move-object p2, p5

    .line 284
    :cond_7
    const-string/jumbo p6, "\u00a0"

    .line 285
    invoke-virtual {p2, p6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 291
    if-nez p2, :cond_8

    .line 293
    goto :goto_4

    .line 295
    :cond_8
    move-object p5, p2

    .line 296
    :goto_4
    const p2, 0x7f0d027e    # @layout/notif_half_shelf 'res/layout/notif_half_shelf.xml'

    .line 297
    invoke-virtual {p5, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 300
    invoke-virtual {p5, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 303
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;

    .line 306
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    .line 308
    invoke-virtual {p5, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 311
    const p2, 0x7f0a03df    # @id/half_shelf_container

    .line 314
    invoke-virtual {p5, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object p2

    .line 320
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 321
    if-eqz p2, :cond_9

    .line 323
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setController(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    .line 325
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-virtual {p2, p6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    .line 333
    invoke-virtual {p2, p6}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setAppName(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->setChannels(Ljava/util/List;)V

    .line 338
    :cond_9
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;

    .line 341
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    .line 343
    invoke-virtual {p5, p3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 346
    const p2, 0x7f0a02ec    # @id/done_button

    .line 349
    invoke-virtual {p5, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 352
    move-result-object p2

    .line 355
    check-cast p2, Landroid/widget/TextView;

    .line 356
    if-eqz p2, :cond_a

    .line 358
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;

    .line 360
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;I)V

    .line 362
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_a
    const p2, 0x7f0a084d    # @id/see_more_button

    .line 368
    invoke-virtual {p5, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 371
    move-result-object p2

    .line 374
    check-cast p2, Landroid/widget/TextView;

    .line 375
    if-eqz p2, :cond_b

    .line 377
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;

    .line 379
    invoke-direct {p3, p0, p4}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;I)V

    .line 381
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_b
    invoke-virtual {p5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 387
    move-result-object p2

    .line 390
    if-eqz p2, :cond_c

    .line 391
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 393
    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 395
    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    .line 401
    invoke-virtual {p2, p1}, Landroid/view/Window;->addFlags(I)V

    .line 403
    const/16 p1, 0x7e1

    .line 406
    invoke-virtual {p2, p1}, Landroid/view/Window;->setType(I)V

    .line 408
    const p1, 0x1030056    # @android:style/Animation.InputMethod

    .line 411
    invoke-virtual {p2, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 414
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 417
    move-result-object p1

    .line 420
    const/4 p3, -0x3

    .line 421
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 422
    const-string p3, "ChannelEditorDialogController"

    .line 424
    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 426
    const/16 p3, 0x51

    .line 429
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 431
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 433
    move-result-object p3

    .line 436
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 437
    move-result p3

    .line 440
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 441
    move-result p5

    .line 444
    not-int p5, p5

    .line 445
    and-int/2addr p3, p5

    .line 446
    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 447
    const/4 p3, -0x1

    .line 450
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 451
    const/4 p3, -0x2

    .line 453
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 454
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 456
    :cond_c
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->prepared:Z

    .line 459
    return-void
    .line 461
.end method
