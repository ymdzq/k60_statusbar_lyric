.class Lcom/android/settings/NotchStatusBarSettings$5;
.super Ljava/lang/Object;
.source "NotchStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotchStatusBarSettings;->setupBatteryIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotchStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotchStatusBarSettings;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/settings/NotchStatusBarSettings$5;->this$0:Lcom/android/settings/NotchStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 330
    iget-object p1, p0, Lcom/android/settings/NotchStatusBarSettings$5;->this$0:Lcom/android/settings/NotchStatusBarSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    .line 331
    invoke-static {p2}, Lcom/android/settings/utils/Utils;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "battery_indicator_style"

    .line 330
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    iget-object p0, p0, Lcom/android/settings/NotchStatusBarSettings$5;->this$0:Lcom/android/settings/NotchStatusBarSettings;

    invoke-static {p0}, Lcom/android/settings/NotchStatusBarSettings;->-$$Nest$mupdateBatteryIndicator(Lcom/android/settings/NotchStatusBarSettings;)V

    const/4 p0, 0x1

    return p0
.end method
