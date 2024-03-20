.class Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;
.super Ljava/lang/Object;
.source "PaperModeSunTimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;

.field final synthetic val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;->this$0:Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;

    iput-object p2, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;->val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;->val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;->this$0:Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;->-$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/PaperModeSunTimeService$WeatherCityChangeObserver$1;->val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    invoke-static {v0, p0}, Lcom/android/settings/display/PaperModeSunTimeHelper;->broadcastSunTime(Landroid/content/Context;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    :cond_0
    return-void
.end method
