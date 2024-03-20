.class public Lcom/android/settings/notification/MiuiNotificationBackend;
.super Ljava/lang/Object;
.source "MiuiNotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;,
        Lcom/android/settings/notification/MiuiNotificationBackend$Row;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_3

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 84
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ":"

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 89
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    iput-object v3, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iput-boolean v6, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v6, p1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->systemApp:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getBubblePreference(Ljava/lang/String;I)I
    .locals 0

    .line 218
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationManagerServiceCompat;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MiuiNotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 220
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/notification/NotificationManagerServiceCompat;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 165
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getChannel "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MiuiNotificationBackend"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getChannelGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 184
    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/android/server/notification/NotificationManagerServiceCompat;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getChannelGroups "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getPriority(Ljava/lang/String;I)I
    .locals 1

    .line 128
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationManagerServiceCompat;->getPriority(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getPriority "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 1

    .line 101
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationManagerServiceCompat;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getVisibilityOverride "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3e8

    return p0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 4

    .line 44
    new-instance v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;-><init>()V

    .line 45
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 46
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    .line 48
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading application label for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiNotificationBackend"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    iget-object v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 53
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-static {p2, v1}, Lcom/android/settings/notification/NotificationSettingsHelper;->isNotificationsBanned(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    .line 55
    iget-object p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/notification/MiuiNotificationBackend;->getVisibilityOverride(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->appVisOverride:I

    .line 56
    iget-object p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationSettingsHelper;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    .line 57
    iget-object p1, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/MiuiNotificationBackend;->getBubblePreference(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->bubblePreference:I

    .line 58
    iget p0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    iput p0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->userId:I

    .line 59
    iget p0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->targetSdkVersion:I

    return-object v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 3

    .line 64
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/MiuiNotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    move-result-object p0

    .line 65
    iget p2, p0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->uid:I

    invoke-static {p2}, Lcom/android/settings/notification/NotificationSettingsHelper;->isUidSystem(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v0, "com.xiaomi.aiasst.service"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->systemApp:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "array"

    const-string v1, "android"

    const-string v2, "config_nonBlockableNotificationPackages"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p0, v0}, Lcom/android/settings/notification/MiuiNotificationBackend;->markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107008b    # @android:array/config_network_type_tcp_buffers

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object p2, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/android/settings/notification/MiuiNotificationBackend;->markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;Ljava/lang/String;)V

    return-object p0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    .line 209
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationManagerServiceCompat;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error onlyHasDefaultChannel "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setPriority(Ljava/lang/String;II)V
    .locals 0

    .line 120
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerServiceCompat;->setPriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error setPriority "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setShowBadge(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 0

    .line 150
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/android/server/notification/NotificationManagerServiceCompat;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error setShowBadge "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 1

    .line 193
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerServiceCompat;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error updateChannel "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 1

    .line 201
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerServiceCompat;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error updateChannelGroup "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiNotificationBackend"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
