.class public final Lcom/android/settingslib/applications/ServiceListing;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAddDeviceLockedFlags:Z

.field public final mCallbacks:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEnabledServices:Ljava/util/HashSet;

.field public final mIntentAction:Ljava/lang/String;

.field public mListening:Z

.field public final mNoun:Ljava/lang/String;

.field public final mPackageReceiver:Lcom/android/settingslib/applications/ServiceListing$2;

.field public final mPermission:Ljava/lang/String;

.field public final mServices:Ljava/util/List;

.field public final mSetting:Ljava/lang/String;

.field public final mSettingsObserver:Lcom/android/settingslib/applications/ServiceListing$1;

.field public final mTag:Ljava/lang/String;

.field public final mValidator:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$1;

    .line 26
    new-instance v1, Landroid/os/Handler;

    .line 28
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/applications/ServiceListing$1;-><init>(Lcom/android/settingslib/applications/ServiceListing;Landroid/os/Handler;)V

    .line 33
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Lcom/android/settingslib/applications/ServiceListing$1;

    .line 36
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$2;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$2;-><init>(Lcom/android/settingslib/applications/ServiceListing;)V

    .line 40
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Lcom/android/settingslib/applications/ServiceListing$2;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    .line 61
    iput-boolean p7, p0, Lcom/android/settingslib/applications/ServiceListing;->mAddDeviceLockedFlags:Z

    .line 63
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mValidator:Ljava/util/function/Predicate;

    .line 66
    return-void
    .line 68
.end method


# virtual methods
.method public final reload()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    .line 9
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    const-string v2, ""

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    const-string v2, ":"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    array-length v2, v1

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_1

    .line 33
    aget-object v4, v1, v3

    .line 35
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 37
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    .line 49
    check-cast v0, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 56
    move-result v1

    .line 59
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mAddDeviceLockedFlags:Z

    .line 60
    if-eqz v2, :cond_2

    .line 62
    const v2, 0xc0084

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    const/16 v2, 0x84

    .line 68
    :goto_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    move-result-object v3

    .line 75
    new-instance v4, Landroid/content/Intent;

    .line 76
    iget-object v5, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    .line 78
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 83
    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v1

    .line 90
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 103
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 105
    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v3

    .line 112
    if-nez v3, :cond_3

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    const-string v5, "Skipping "

    .line 117
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v5, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v5, " service "

    .line 127
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v5, "/"

    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 142
    const-string v5, ": it does not require the permission "

    .line 144
    invoke-static {v3, v2, v5, v4}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    .line 150
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_2

    .line 155
    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mValidator:Ljava/util/function/Predicate;

    .line 156
    if-eqz v3, :cond_4

    .line 158
    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 163
    if-nez v3, :cond_4

    .line 164
    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_2

    .line 170
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 171
    check-cast p0, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object p0

    .line 178
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 188
    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    const-string v4, "ServiceConfig reloaded, count: "

    .line 200
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 211
    const-string v3, "ControlsListingControllerImpl"

    .line 212
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    .line 217
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 219
    move-result v3

    .line 222
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v3

    .line 229
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v4

    .line 233
    iget-object v5, v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 234
    if-eqz v4, :cond_6

    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v4

    .line 241
    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 242
    new-instance v6, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 244
    iget-object v5, v5, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 246
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 248
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 250
    move-result-object v5

    .line 253
    invoke-direct {v6, v5, v4}, Lcom/android/systemui/controls/ControlsServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 254
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    goto :goto_4

    .line 260
    :cond_6
    iget-object v1, v5, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 261
    new-instance v3, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;

    .line 263
    const/4 v4, 0x1

    .line 265
    invoke-direct {v3, v5, v2, v4}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/lang/Object;I)V

    .line 266
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 269
    goto :goto_3

    .line 272
    :cond_7
    return-void
    .line 273
.end method

.method public final setListening(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    .line 7
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Lcom/android/settingslib/applications/ServiceListing$1;

    .line 9
    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 11
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Lcom/android/settingslib/applications/ServiceListing$2;

    .line 13
    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    new-instance p1, Landroid/content/IntentFilter;

    .line 19
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 24
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 29
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 34
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 39
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v4, "package"

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    .line 52
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    move-result-object p0

    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {v1, p0, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 66
    :goto_0
    return-void
    .line 69
.end method
