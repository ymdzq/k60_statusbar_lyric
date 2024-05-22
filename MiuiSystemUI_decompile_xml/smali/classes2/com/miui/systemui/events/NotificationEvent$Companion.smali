.class public final Lcom/miui/systemui/events/NotificationEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/events/NotificationEvent$Companion;-><init>()V

    return-void
.end method

.method private final getLockScreenNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "lock_screen_show_notifications"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0
    .line 16
.end method

.method private final getLockscreenAllowPrivateNotifications(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "lock_screen_allow_private_notifications"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0
    .line 16
.end method


# virtual methods
.method public final getAppInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.intent.action.MAIN"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "android.intent.category.LAUNCHER"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    move-object v2, v1

    .line 42
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 43
    if-eqz v2, :cond_1

    .line 45
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    if-eqz v2, :cond_1

    .line 49
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    if-eqz v2, :cond_1

    .line 53
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    :goto_1
    if-eqz v2, :cond_2

    .line 59
    const/4 v2, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v2, v0

    .line 63
    :goto_2
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 69
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 72
    move-result v0

    .line 75
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 82
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 93
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_3

    .line 102
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    .line 103
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p0

    .line 116
    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 126
    move-object v2, v1

    .line 127
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_4

    .line 141
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 142
    move-result-object p0

    .line 145
    return-object p0
    .line 146
.end method

.method public final getFloatShieldState(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "miui_float_notification_snooze_strategy"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final getKeyguardDisplayRule(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/systemui/events/NotificationEvent$Companion;->getLockScreenNotificationsEnabled(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/systemui/events/NotificationEvent$Companion;->getLockscreenAllowPrivateNotifications(Landroid/content/Context;)Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    :goto_0
    return p0
    .line 19
.end method
