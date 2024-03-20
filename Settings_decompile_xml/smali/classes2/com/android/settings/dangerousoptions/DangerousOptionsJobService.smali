.class public Lcom/android/settings/dangerousoptions/DangerousOptionsJobService;
.super Landroid/app/job/JobService;
.source "DangerousOptionsJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    .line 10
    invoke-static {p0, p1}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->checkDangerousOptions(Landroid/content/Context;Z)V

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
