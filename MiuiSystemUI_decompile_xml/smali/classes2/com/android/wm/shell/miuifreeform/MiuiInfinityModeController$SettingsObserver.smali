.class Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private context:Landroid/content/Context;

.field private final gestureLineSettings:Landroid/net/Uri;

.field private final miuiDesktopModeSetting:Landroid/net/Uri;

.field private final navigationSettings:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string p1, "miui_dkt_mode"

    .line 7
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->miuiDesktopModeSetting:Landroid/net/Uri;

    .line 13
    const-string p1, "force_fsg_nav_bar"

    .line 15
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->navigationSettings:Landroid/net/Uri;

    .line 21
    const-string p1, "hide_gesture_line"

    .line 23
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->gestureLineSettings:Landroid/net/Uri;

    .line 29
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->context:Landroid/content/Context;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public observe()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->miuiDesktopModeSetting:Landroid/net/Uri;

    .line 8
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->navigationSettings:Landroid/net/Uri;

    .line 21
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->gestureLineSettings:Landroid/net/Uri;

    .line 32
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    return-void
    .line 37
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->miuiDesktopModeSetting:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->-$$Nest$mdisplayModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->navigationSettings:Landroid/net/Uri;

    .line 16
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 24
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->-$$Nest$mupdateNavBarState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->gestureLineSettings:Landroid/net/Uri;

    .line 30
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 38
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->-$$Nest$mupdateGestureLineState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 40
    :cond_2
    :goto_0
    return-void
    .line 43
.end method
