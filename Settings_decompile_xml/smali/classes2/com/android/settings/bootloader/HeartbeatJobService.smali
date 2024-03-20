.class public Lcom/android/settings/bootloader/HeartbeatJobService;
.super Landroid/app/job/JobService;
.source "HeartbeatJobService.java"


# direct methods
.method static bridge synthetic -$$Nest$mcanSendHeartbeat(Lcom/android/settings/bootloader/HeartbeatJobService;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bootloader/HeartbeatJobService;->canSendHeartbeat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private canSendHeartbeat(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "ro.secureboot.lockstate"

    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locked"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bootloader/Utils;->getAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/bootloader/HeartbeatJobService;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "bootloader_account"

    const-string v2, ""

    .line 92
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static cancelHeartbeatJob(Landroid/content/Context;)V
    .locals 1

    const-string v0, "jobscheduler"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const v0, 0xabec

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 36
    new-instance v0, Lcom/android/settings/bootloader/HeartbeatJobService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bootloader/HeartbeatJobService$1;-><init>(Lcom/android/settings/bootloader/HeartbeatJobService;Landroid/app/job/JobParameters;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
