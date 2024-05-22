.class public Lcom/android/systemui/people/PeopleBackupFollowUpJob;
.super Landroid/app/job/JobService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final CLEAN_UP_STORAGE_AFTER_DURATION:J

.field public static final JOB_PERIODIC_DURATION:J


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIPeopleManager:Landroid/app/people/IPeopleManager;

.field public mJobScheduler:Landroid/app/job/JobScheduler;

.field public final mLock:Ljava/lang/Object;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x6

    .line 2
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 8
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->JOB_PERIODIC_DURATION:J

    .line 12
    const-wide/16 v0, 0x30

    .line 14
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 20
    move-result-wide v0

    .line 23
    sput-wide v0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->CLEAN_UP_STORAGE_AFTER_DURATION:J

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mLock:Ljava/lang/Object;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final cancelJobAndClearRemainingWidgets(Ljava/util/Map;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/android/systemui/people/widget/PeopleTileKey;->fromString(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 34
    move-result v2

    .line 37
    const-string v3, "PeopleBackupFollowUpJob"

    .line 38
    if-nez v2, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "Malformed peopleTileKey in follow-up file: "

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v1, v0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 88
    const-string v5, ""

    .line 89
    invoke-interface {p3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v5, v1, v2, v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->removeSharedPreferencesStorageForTile(Landroid/content/Context;Lcom/android/systemui/people/widget/PeopleTileKey;ILjava/lang/String;)V

    .line 97
    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    const-string v5, "Malformed widget id in follow-up file: "

    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 115
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    const-string v1, "Malformed widget ids in follow-up file: "

    .line 121
    invoke-static {v1, v0, v3}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object p0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 130
    const p1, 0x475b8c1

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 135
    return-void
    .line 138
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 19
    const-string v0, "people"

    .line 21
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    .line 27
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mContext:Landroid/content/Context;

    .line 33
    const-class v1, Landroid/app/job/JobScheduler;

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 43
    return-void
    .line 45
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 5
    move-result-object v1

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v2

    .line 12
    const-string/jumbo v3, "shared_follow_up"

    .line 13
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    move-result-object v3

    .line 20
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v5

    .line 24
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->processFollowUpFile(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Ljava/util/Map;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 29
    move-result-object p1

    .line 32
    const-string/jumbo v6, "start_date"

    .line 33
    invoke-virtual {p1, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 36
    move-result-wide v6

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v8

    .line 43
    move-object p1, v3

    .line 44
    check-cast p1, Ljava/util/HashMap;

    .line 45
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 47
    move-result p1

    .line 50
    const/4 v10, 0x1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    goto :goto_1

    .line 54
    :cond_0
    sub-long/2addr v8, v6

    .line 55
    sget-wide v6, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->CLEAN_UP_STORAGE_AFTER_DURATION:J

    .line 56
    cmp-long p1, v8, v6

    .line 58
    if-lez p1, :cond_1

    .line 60
    move p1, v10

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move p1, v4

    .line 64
    :goto_0
    if-eqz p1, :cond_2

    .line 65
    goto :goto_1

    .line 67
    :cond_2
    move v10, v4

    .line 68
    :goto_1
    if-eqz v10, :cond_3

    .line 69
    invoke-virtual {p0, v3, v5, v1}, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->cancelJobAndClearRemainingWidgets(Ljava/util/Map;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 71
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->updateWidgets(Landroid/content/Context;)V

    .line 83
    return v4

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
    .line 89
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final processFollowUpFile(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 7
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->fromString(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 37
    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 41
    iget-object v5, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    sget v6, Lcom/android/systemui/people/widget/PeopleBackupHelper;->$r8$clinit:I

    .line 45
    invoke-static {v3}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 47
    move-result v6

    .line 50
    if-nez v6, :cond_0

    .line 51
    const/4 v3, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v6, 0x0

    .line 55
    :try_start_0
    iget-object v7, v3, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 56
    iget v8, v3, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 58
    invoke-virtual {v5, v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget-object v5, v3, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 63
    iget v7, v3, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 65
    iget-object v3, v3, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 67
    invoke-interface {v4, v5, v7, v3}, Landroid/app/people/IPeopleManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    .line 69
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move v3, v6

    .line 74
    :goto_1
    if-eqz v3, :cond_1

    .line 75
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 90
    check-cast v3, Ljava/util/Set;

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    goto :goto_0

    .line 96
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "Malformed entry value: "

    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 114
    const-string v2, "PeopleBackupFollowUpJob"

    .line 115
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    return-object v0
    .line 121
.end method

.method public setManagers(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/people/IPeopleManager;Landroid/app/job/JobScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mIPeopleManager:Landroid/app/people/IPeopleManager;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/people/PeopleBackupFollowUpJob;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 8
    return-void
    .line 10
.end method
