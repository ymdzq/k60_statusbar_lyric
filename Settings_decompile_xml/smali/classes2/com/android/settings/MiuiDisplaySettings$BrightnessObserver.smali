.class Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "MiuiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_SUNLIGHT_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    .line 979
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "screen_brightness_mode"

    .line 970
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness"

    .line 972
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_float"

    .line 974
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "sunlight_mode"

    .line 976
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->SCREEN_SUNLIGHT_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 992
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 993
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateModeRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 994
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateBrightnessSeekBarRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 995
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->SCREEN_SUNLIGHT_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 996
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$misSunlightModeEnabled(Lcom/android/settings/MiuiDisplaySettings;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$mupdateSunlightMode(Lcom/android/settings/MiuiDisplaySettings;Z)V

    goto :goto_0

    .line 998
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateModeRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 999
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateBrightnessSeekBarRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 1004
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/MiuiDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1006
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1007
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1008
    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->SCREEN_SUNLIGHT_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmDisplayManager(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmDisplayListener(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiDisplaySettings;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/MiuiDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1015
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmDisplayManager(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmDisplayListener(Lcom/android/settings/MiuiDisplaySettings;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
