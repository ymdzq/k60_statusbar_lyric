.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final ensurePeopleSpaceWidgetManagerInitialized()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mRegisteredReceivers:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    new-instance v1, Landroid/content/IntentFilter;

    .line 11
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 61
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 63
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 65
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    .line 71
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 73
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v2, "package"

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 88
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 90
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    new-instance v1, Landroid/content/IntentFilter;

    .line 95
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 97
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    const/16 v2, 0x3e8

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 107
    iget-object v3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBaseBroadcastReceiver:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$2;

    .line 109
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mRegisteredReceivers:Z

    .line 115
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
    .line 121
.end method

.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string p1, "package_name"

    .line 13
    const-string p2, ""

    .line 15
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const/4 v1, -0x1

    .line 21
    const-string/jumbo v2, "user_id"

    .line 22
    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 25
    move-result v1

    .line 28
    const-string/jumbo v3, "shortcut_id"

    .line 29
    invoke-virtual {p4, v3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 35
    new-instance p4, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 36
    invoke-direct {p4, p2, v0, v1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    invoke-static {p4}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 41
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    sget-object p2, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 49
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 51
    move-result-object v1

    .line 54
    iget-object v4, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v3, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget-object p2, p2, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 73
    :cond_0
    filled-new-array {p3}, [I

    .line 76
    move-result-object p1

    .line 79
    new-instance p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    .line 80
    const/4 p3, 0x0

    .line 82
    invoke-direct {p2, p3, p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 86
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
    .line 91
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->deleteWidgets([I)V

    .line 10
    return-void
    .line 13
.end method

.method public final onRestored(Landroid/content/Context;[I[I)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    :goto_0
    array-length v2, p2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    aget v2, p2, v1

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    aget v3, p3, v1

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 41
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object p3

    .line 49
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p3

    .line 53
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 57
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mContext:Landroid/content/Context;

    .line 58
    if-eqz v1, :cond_3

    .line 60
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 91
    move-result-object v2

    .line 94
    const-string/jumbo v3, "shortcut_id"

    .line 95
    const/4 v4, 0x0

    .line 98
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 102
    const-string v5, "package_name"

    .line 103
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 108
    const-string/jumbo v5, "user_id"

    .line 109
    const/4 v6, -0x1

    .line 112
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 113
    move-result v5

    .line 116
    new-instance v6, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 117
    invoke-direct {v6, v3, v4, v5}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 122
    move-result v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 131
    move-result-object v1

    .line 134
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 142
    move-result-object p2

    .line 145
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object p2

    .line 149
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result p3

    .line 153
    if-eqz p3, :cond_4

    .line 154
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object p3

    .line 159
    check-cast p3, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 168
    move-result-object v1

    .line 171
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    move-result-object p3

    .line 175
    check-cast p3, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 176
    invoke-static {v1, p3}, Lcom/android/systemui/people/SharedPreferencesHelper;->setPeopleTileKey(Landroid/content/SharedPreferences;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 178
    goto :goto_2

    .line 181
    :cond_4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 182
    move-result-object p2

    .line 185
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 186
    move-result-object p3

    .line 189
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 190
    move-result-object p2

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 194
    move-result-object p2

    .line 197
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object p2

    .line 201
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    move-result v1

    .line 205
    const/4 v3, 0x1

    .line 206
    const-string v4, "malformed entry value: "

    .line 207
    const-string v5, "PeopleSpaceWidgetMgr"

    .line 209
    if-eqz v1, :cond_9

    .line 211
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 216
    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 219
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    invoke-static {v1}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->getEntryType(Ljava/util/Map$Entry;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 225
    move-result-object v7

    .line 228
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 229
    move-result v7

    .line 232
    if-eqz v7, :cond_8

    .line 233
    if-eq v7, v3, :cond_6

    .line 235
    const/4 v3, 0x2

    .line 237
    if-eq v7, v3, :cond_5

    .line 238
    const/4 v3, 0x3

    .line 240
    if-eq v7, v3, :cond_5

    .line 241
    goto :goto_3

    .line 243
    :cond_5
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 244
    move-result-object v3

    .line 247
    check-cast v3, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    invoke-static {v3, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNewWidgets(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    .line 250
    move-result-object v1

    .line 253
    invoke-interface {p3, v6, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 254
    goto :goto_3

    .line 257
    :catch_0
    move-exception v3

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 264
    move-result-object v1

    .line 267
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 274
    invoke-static {v5, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    invoke-interface {p3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    goto :goto_3

    .line 281
    :cond_6
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/String;

    .line 286
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    move-result v7

    .line 291
    if-eqz v7, :cond_7

    .line 292
    const-string v1, "Key is widget id without matching new id, skipping: "

    .line 294
    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto :goto_3

    .line 299
    :cond_7
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 300
    move-result-object v7

    .line 303
    check-cast v7, Ljava/lang/String;

    .line 304
    invoke-interface {p3, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    goto :goto_4

    .line 309
    :catch_1
    move-exception v3

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 319
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v1

    .line 326
    invoke-static {v5, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :goto_4
    invoke-interface {p3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    goto/16 :goto_3

    .line 333
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    const-string v3, "Key not identified:"

    .line 337
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v1

    .line 348
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto/16 :goto_3

    .line 352
    :cond_9
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    const-string/jumbo p2, "shared_follow_up"

    .line 357
    invoke-virtual {v2, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 360
    move-result-object p2

    .line 363
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 364
    move-result-object p3

    .line 367
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 368
    move-result-object p2

    .line 371
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 372
    move-result-object p2

    .line 375
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    move-result-object p2

    .line 379
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v1

    .line 383
    if-eqz v1, :cond_a

    .line 384
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v1

    .line 389
    check-cast v1, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 392
    move-result-object v6

    .line 395
    check-cast v6, Ljava/lang/String;

    .line 396
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 398
    move-result-object v7

    .line 401
    check-cast v7, Ljava/util/Set;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    invoke-static {v7, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getNewWidgets(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    .line 404
    move-result-object v1

    .line 407
    invoke-interface {p3, v6, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 408
    goto :goto_5

    .line 411
    :catch_2
    move-exception v7

    .line 412
    new-instance v8, Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 418
    move-result-object v1

    .line 421
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v1

    .line 428
    invoke-static {v5, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    invoke-interface {p3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    goto :goto_5

    .line 435
    :cond_a
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    new-instance p1, Landroid/content/ComponentName;

    .line 439
    const-class p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 441
    invoke-direct {p1, v2, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    iget-object p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 446
    invoke-virtual {p2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 448
    move-result-object p1

    .line 451
    new-instance p3, Landroid/os/Bundle;

    .line 452
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v1, "appWidgetRestoreCompleted"

    .line 457
    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    array-length v1, p1

    .line 462
    move v2, v0

    .line 463
    :goto_6
    if-ge v2, v1, :cond_b

    .line 464
    aget v3, p1, v2

    .line 466
    invoke-virtual {p2, v3, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    .line 471
    goto :goto_6

    .line 473
    :cond_b
    new-instance p2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    .line 474
    invoke-direct {p2, v0, p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 479
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 481
    return-void
    .line 484
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->ensurePeopleSpaceWidgetManagerInitialized()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;

    .line 13
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2, p0, p3}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 19
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    return-void
    .line 24
.end method

.method public setPeopleSpaceWidgetManager(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 2
    return-void
    .line 4
.end method
