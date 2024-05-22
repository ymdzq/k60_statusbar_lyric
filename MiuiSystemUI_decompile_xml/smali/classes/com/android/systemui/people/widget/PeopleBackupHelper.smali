.class public final Lcom/android/systemui/people/widget/PeopleBackupHelper;
.super Landroid/app/backup/SharedPreferencesBackupHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mContext:Landroid/content/Context;

.field public final mIPeopleManager:Landroid/app/people/IPeopleManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "people"

    .line 5
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 7
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/app/people/IPeopleManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p3}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    iput-object p5, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 13
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public static getEntryType(Ljava/util/Map$Entry;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    .locals 6

    .line 1
    const-string v0, "PeopleBackupHelper"

    .line 2
    const-string v1, "Malformed value, skipping:"

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->UNKNOWN:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 12
    if-nez v2, :cond_0

    .line 14
    return-object v3

    .line 16
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 23
    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :try_start_2
    sget-object p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->WIDGET_ID:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 26
    return-object p0

    .line 28
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 44
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    return-object v3

    .line 48
    :catch_1
    :try_start_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 52
    check-cast v4, Ljava/util/Set;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 53
    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->fromString(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 55
    move-result-object p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    sget-object p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->PEOPLE_TILE_KEY:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 61
    return-object p0

    .line 63
    :cond_1
    :try_start_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    sget-object p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->CONTACT_URI:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 67
    return-object p0

    .line 69
    :catch_2
    return-object v3

    .line 70
    :catch_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v3
    .line 90
.end method

.method public static updateWidgets(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    .line 6
    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 8
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    array-length v1, v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Landroid/content/Intent;

    .line 22
    const-class v2, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 24
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v2, "appWidgetIds"

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method


# virtual methods
.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 19
    const-string/jumbo v2, "shared_backup"

    .line 21
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 36
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    move-result v2

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v5, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 47
    new-instance v6, Landroid/content/ComponentName;

    .line 49
    iget-object v7, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 51
    const-class v8, Lcom/android/systemui/people/widget/PeopleSpaceWidgetProvider;

    .line 53
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 58
    move-result-object v5

    .line 61
    array-length v6, v5

    .line 62
    move v7, v3

    .line 63
    :goto_0
    if-ge v7, v6, :cond_2

    .line 64
    aget v8, v5, v7

    .line 66
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    move-result-object v8

    .line 71
    iget-object v9, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v9, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 74
    move-result-object v9

    .line 77
    const-string/jumbo v10, "user_id"

    .line 78
    const/4 v11, -0x1

    .line 81
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 82
    move-result v9

    .line 85
    if-ne v9, v2, :cond_1

    .line 86
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    return-void

    .line 100
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 101
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 105
    move-result-object v0

    .line 108
    new-instance v2, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;

    .line 109
    invoke-direct {v2, p0, v1, v4}, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/PeopleBackupHelper;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    .line 111
    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/SharedPreferencesBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 120
    return-void
    .line 123
.end method

.method public final restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/backup/SharedPreferencesBackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "shared_backup"

    .line 7
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo v3, "shared_follow_up"

    .line 27
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object v2

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 38
    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 42
    move-result-object v3

    .line 45
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v3

    .line 49
    move v4, v1

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v5

    .line 54
    if-eqz v5, :cond_b

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 60
    check-cast v5, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    invoke-static {v5}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->getEntryType(Ljava/util/Map$Entry;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 69
    move-result-object v7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    const-string v9, "add_user_id_to_uri_"

    .line 75
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v8

    .line 86
    const/4 v9, -0x1

    .line 87
    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result v8

    .line 91
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v7

    .line 95
    const/4 v10, 0x1

    .line 96
    if-eq v7, v10, :cond_8

    .line 97
    const/4 v11, 0x2

    .line 99
    if-eq v7, v11, :cond_3

    .line 100
    const/4 v11, 0x3

    .line 102
    if-eq v7, v11, :cond_1

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    const-string v7, "Key not identified, skipping:"

    .line 107
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 118
    const-string v6, "PeopleBackupHelper"

    .line 119
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    goto/16 :goto_3

    .line 124
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    move-result-object v5

    .line 129
    check-cast v5, Ljava/util/Set;

    .line 130
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    move-result-object v6

    .line 135
    if-eq v8, v9, :cond_2

    .line 136
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 138
    move-result-object v7

    .line 141
    invoke-static {v6, v7}, Landroid/content/ContentProvider;->createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    .line 142
    move-result-object v6

    .line 145
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 149
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 150
    goto/16 :goto_3

    .line 153
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 158
    check-cast v5, Ljava/util/Set;

    .line 159
    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->fromString(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 161
    move-result-object v6

    .line 164
    if-nez v6, :cond_4

    .line 165
    goto/16 :goto_3

    .line 167
    :cond_4
    iget-object v7, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 169
    iget-object v8, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 171
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 173
    move-result v8

    .line 176
    iput v8, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 177
    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 179
    move-result v8

    .line 182
    if-nez v8, :cond_5

    .line 183
    goto :goto_3

    .line 185
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 186
    iget-object v9, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 188
    invoke-static {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 190
    move-result v11

    .line 193
    if-nez v11, :cond_6

    .line 194
    move v7, v10

    .line 196
    goto :goto_1

    .line 197
    :cond_6
    :try_start_0
    iget v11, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 198
    invoke-virtual {v9, v7, v1, v11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    iget v9, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 203
    iget-object v11, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 205
    invoke-interface {v8, v7, v9, v11}, Landroid/app/people/IPeopleManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    .line 207
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    goto :goto_1

    .line 211
    :catch_0
    move v7, v1

    .line 212
    :goto_1
    if-nez v7, :cond_7

    .line 213
    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 215
    move-result-object v8

    .line 218
    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 219
    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 222
    move-result-object v8

    .line 225
    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v8, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 229
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object v5

    .line 234
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v9

    .line 238
    if-eqz v9, :cond_a

    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v9

    .line 244
    check-cast v9, Ljava/lang/String;

    .line 245
    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 247
    move-result-object v9

    .line 250
    invoke-static {v9, v6}, Lcom/android/systemui/people/SharedPreferencesHelper;->setPeopleTileKey(Landroid/content/SharedPreferences;Lcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 251
    goto :goto_2

    .line 254
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 255
    move-result-object v5

    .line 258
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    move-result-object v5

    .line 262
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 263
    move-result-object v5

    .line 266
    if-eq v8, v9, :cond_9

    .line 267
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 269
    move-result-object v7

    .line 272
    invoke-static {v5, v7}, Landroid/content/ContentProvider;->createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    .line 273
    move-result-object v5

    .line 276
    :cond_9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 280
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    :goto_3
    move v7, v10

    .line 284
    :cond_a
    if-nez v7, :cond_0

    .line 285
    move v4, v10

    .line 287
    goto/16 :goto_0

    .line 288
    :cond_b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 296
    move-result-object p1

    .line 299
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    if-eqz v4, :cond_c

    .line 306
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 308
    sget v0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->$r8$clinit:I

    .line 310
    const-class v0, Landroid/app/job/JobScheduler;

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    move-result-object v0

    .line 317
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 318
    new-instance v1, Landroid/os/PersistableBundle;

    .line 320
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 322
    const-string/jumbo v2, "start_date"

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 328
    move-result-wide v3

    .line 331
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 332
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 335
    new-instance v3, Landroid/content/ComponentName;

    .line 337
    const-class v4, Lcom/android/systemui/people/PeopleBackupFollowUpJob;

    .line 339
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const p1, 0x475b8c1

    .line 344
    invoke-direct {v2, p1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 347
    sget-wide v3, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->JOB_PERIODIC_DURATION:J

    .line 350
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 352
    move-result-object p1

    .line 355
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 356
    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 360
    move-result-object p1

    .line 363
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 364
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mContext:Landroid/content/Context;

    .line 367
    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->updateWidgets(Landroid/content/Context;)V

    .line 369
    return-void
    .line 372
.end method
