.class Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;
.super Landroid/database/ContentObserver;
.source "PaperModeSunTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeSunTimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherCityChangeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    iput-object p2, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 87
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 89
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSunTimeHelper;->getSunTwilightTime(Landroid/content/Context;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    move-result-object p1

    .line 90
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;-><init>(Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
