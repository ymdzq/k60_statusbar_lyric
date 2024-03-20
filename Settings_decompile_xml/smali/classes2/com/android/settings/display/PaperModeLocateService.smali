.class public Lcom/android/settings/display/PaperModeLocateService;
.super Landroid/app/job/JobService;
.source "PaperModeLocateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PaperModeLocateService$LocationListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mJobParameters:Landroid/app/job/JobParameters;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lcom/android/settings/display/PaperModeLocateService$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/display/PaperModeLocateService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJobParameters(Lcom/android/settings/display/PaperModeLocateService;)Landroid/app/job/JobParameters;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService;->mJobParameters:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocation(Lcom/android/settings/display/PaperModeLocateService;)Landroid/location/Location;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocation(Lcom/android/settings/display/PaperModeLocateService;Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastLocationChanged(Lcom/android/settings/display/PaperModeLocateService;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeLocateService;->broadcastLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastSunTime(Lcom/android/settings/display/PaperModeLocateService;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeLocateService;->broadcastSunTime(Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveLocationUpdates(Lcom/android/settings/display/PaperModeLocateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeLocateService;->removeLocationUpdates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestLocation(Lcom/android/settings/display/PaperModeLocateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeLocateService;->requestLocation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private broadcastLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSunTimeHelper;->calculateTwilightTime(Landroid/location/Location;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeLocateService;->broadcastSunTime(Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    return-void
.end method

.method private broadcastSunTime(Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/display/PaperModeSunTimeHelper;->broadcastSunTime(Landroid/content/Context;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    return-void
.end method

.method private obtainTwilightTime()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/settings/display/PaperModeLocateService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperModeLocateService$1;-><init>(Lcom/android/settings/display/PaperModeLocateService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeLocationUpdates()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationListener:Lcom/android/settings/display/PaperModeLocateService$LocationListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationListener:Lcom/android/settings/display/PaperModeLocateService$LocationListener;

    :cond_0
    return-void
.end method

.method private requestLocation()V
    .locals 6

    const-string v0, "PaperModeLocateService"

    .line 74
    iget-object v1, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "requestLocationUpdates"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    .line 77
    invoke-static {v2, v4, v5, v1, v3}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationListener:Lcom/android/settings/display/PaperModeLocateService$LocationListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/display/PaperModeLocateService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/display/PaperModeLocateService$2;

    invoke-direct {v3, p0}, Lcom/android/settings/display/PaperModeLocateService$2;-><init>(Lcom/android/settings/display/PaperModeLocateService;)V

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register location listener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeLocateService;->broadcastLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "PaperModeLocateService"

    const-string v1, "PaperModeLocateService start"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService;->mJobParameters:Landroid/app/job/JobParameters;

    const-string p1, "location"

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationManager:Landroid/location/LocationManager;

    .line 41
    new-instance p1, Lcom/android/settings/display/PaperModeLocateService$LocationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/PaperModeLocateService$LocationListener;-><init>(Lcom/android/settings/display/PaperModeLocateService;Lcom/android/settings/display/PaperModeLocateService$LocationListener-IA;)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService;->mLocationListener:Lcom/android/settings/display/PaperModeLocateService$LocationListener;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeLocateService;->obtainTwilightTime()V

    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
