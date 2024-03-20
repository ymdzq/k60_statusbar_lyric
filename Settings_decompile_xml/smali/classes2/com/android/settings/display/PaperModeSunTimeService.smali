.class public Lcom/android/settings/display/PaperModeSunTimeService;
.super Landroid/app/Service;
.source "PaperModeSunTimeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHT:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PaperMode city change..."

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mHT:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeSunTimeService;->registerObserver(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PaperModeSunTimeService"

    const-string/jumbo v1, "onDestroy: destroy..."

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeSunTimeService;->registerObserver(Z)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mHT:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "PaperModeSunTimeService"

    const-string/jumbo v1, "onStartCommand: start..."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public registerObserver(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    new-instance v0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mHT:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mContentObserver:Landroid/database/ContentObserver;

    .line 37
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://weather/selected_city"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSunTimeService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PaperModeSunTimeService"

    const-string/jumbo v2, "registerObserver: "

    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    :goto_0
    return-void
.end method
