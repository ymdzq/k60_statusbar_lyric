.class public Lcom/android/settings/stat/StatRecordJobService;
.super Landroid/app/job/JobService;
.source "StatRecordJobService.java"


# direct methods
.method public static synthetic $r8$lambda$QAmeudAJrh2WN4njIWdvc-mWtuM(Lcom/android/settings/stat/StatRecordJobService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stat/StatRecordJobService;->lambda$onStartJob$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0()V
    .locals 3

    .line 25
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stat/commonpreference/PreferenceStatHelper;->tracePreferenceEvent(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stat/commonswitch/SwitchStatHelper;->traceSwitchEvent(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->traceMiPrintEvent(Z)V

    .line 28
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stat/darkmode/DarkmodeStatHelper;->traceDarkModeEvent(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;

    sget-object v1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->GESTURE_PAGE_KEY:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->PAGE_INIT:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->traceVisitPageEvent(Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 24
    new-instance p1, Lcom/android/settings/stat/StatRecordJobService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/stat/StatRecordJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/stat/StatRecordJobService;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
