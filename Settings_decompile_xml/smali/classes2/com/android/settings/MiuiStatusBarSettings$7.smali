.class Lcom/android/settings/MiuiStatusBarSettings$7;
.super Ljava/lang/Object;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiStatusBarSettings;->setupBatteryIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$7;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 362
    iget-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$7;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    .line 363
    invoke-static {p2}, Lcom/android/settings/utils/Utils;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "battery_indicator_style"

    .line 362
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings$7;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiStatusBarSettings;->-$$Nest$mupdateBatteryIndicator(Lcom/android/settings/MiuiStatusBarSettings;)V

    const/4 p0, 0x1

    return p0
.end method
