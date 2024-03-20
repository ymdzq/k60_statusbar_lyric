.class public Lcom/android/settings/JobDispatcher;
.super Ljava/lang/Object;
.source "JobDispatcher.java"


# static fields
.field private static final JOB_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_VERSION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/android/settings/JobDispatcher$1;

    invoke-direct {v0}, Lcom/android/settings/JobDispatcher$1;-><init>()V

    sput-object v0, Lcom/android/settings/JobDispatcher;->SERVICE_VERSION:Ljava/util/HashMap;

    .line 73
    new-instance v0, Lcom/android/settings/JobDispatcher$2;

    invoke-direct {v0}, Lcom/android/settings/JobDispatcher$2;-><init>()V

    sput-object v0, Lcom/android/settings/JobDispatcher;->JOB_IDS:Ljava/util/Set;

    return-void
.end method

.method public static addJobToSchedule(I)V
    .locals 2

    .line 113
    sget-object v0, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static cancelOldJobs(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 96
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/JobDispatcher;->JOB_IDS:Ljava/util/Set;

    .line 98
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOldJobs(): jobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static commit(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "jobscheduler"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 136
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-static {p0, v0, v1}, Lcom/android/settings/JobDispatcher;->cancelOldJobs(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/util/List;)V

    .line 141
    sget-object v2, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_0
    sget-object v3, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/settings/JobDispatcher;->isJobExist(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/settings/JobDispatcher;->createJobInfo(Landroid/content/Context;I)Landroid/app/job/JobInfo;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "JobDispatcher"

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleJob(): fail to create job info for jobId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    const-string v7, "JOB_VERSION"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/JobDispatcher;->getJobVersion(I)I

    move-result v4

    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-static {p0, v0, v5}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;Landroid/app/job/JobScheduler;Landroid/app/job/JobInfo;)V

    goto :goto_0

    .line 156
    :cond_2
    sget-object p0, Lcom/android/settings/JobDispatcher;->QUEUE_JOBS_TO_SCHEDULE:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 157
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createJobInfo(Landroid/content/Context;I)Landroid/app/job/JobInfo;
    .locals 5

    const v0, 0xabe4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const-wide/32 v2, 0x5265c00

    packed-switch p1, :pswitch_data_0

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createJobInfo(): unknown jobId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobDispatcher"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 220
    :pswitch_0
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/stat/StatRecordJobService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xabed

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 222
    invoke-virtual {p1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 223
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 213
    :pswitch_1
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/bootloader/HeartbeatJobService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xabec

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 215
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 208
    :pswitch_2
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/dangerousoptions/DangerousOptionsJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xabeb

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v0, 0x2932e00

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 202
    :pswitch_3
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xabea

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p0, 0x2

    .line 204
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v0, 0x240c8400

    .line 205
    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 196
    :pswitch_4
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/display/PaperModeLocateService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xabe9

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 183
    :cond_0
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/settings/credentials/CredentialsUpdateService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide v2, 0x9a7ec800L

    .line 185
    invoke-virtual {p1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xabe9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getJobVersion(I)I
    .locals 1

    .line 258
    sget-object v0, Lcom/android/settings/JobDispatcher;->SERVICE_VERSION:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJobExist(Landroid/app/job/JobScheduler;I)Z
    .locals 0

    .line 239
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/JobDispatcher;->isJobExist(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method private static isJobExist(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 245
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "JOB_VERSION"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 248
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->getJobVersion(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static scheduleJob(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    invoke-static {p0, p1, v0}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;IZ)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz p2, :cond_0

    .line 167
    invoke-static {v0, p1}, Lcom/android/settings/JobDispatcher;->isJobExist(Landroid/app/job/JobScheduler;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/JobDispatcher;->createJobInfo(Landroid/content/Context;I)Landroid/app/job/JobInfo;

    move-result-object p2

    if-nez p2, :cond_1

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scheduleJob(): fail to create job info for jobId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobDispatcher"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "JOB_VERSION"

    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->getJobVersion(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-static {p0, p2}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;Landroid/app/job/JobInfo;)V
    .locals 1

    const-string v0, "jobscheduler"

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-static {p0, v0, p1}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;Landroid/app/job/JobScheduler;Landroid/app/job/JobInfo;)V

    return-void
.end method

.method private static scheduleJob(Landroid/content/Context;Landroid/app/job/JobScheduler;Landroid/app/job/JobInfo;)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " scheduleJob jobInfo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/android/settings/JobDispatcher;->getJobVersion(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobDispatcher"

    .line 268
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
