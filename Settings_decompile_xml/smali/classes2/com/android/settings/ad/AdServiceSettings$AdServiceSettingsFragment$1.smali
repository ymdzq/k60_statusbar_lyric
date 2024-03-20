.class Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;
.super Ljava/lang/Object;
.source "AdServiceSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;->this$0:Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;->this$0:Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Ad;->setPersonalizedAdEnable(Landroid/content/ContentResolver;Z)V

    .line 52
    iget-object p0, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;->this$0:Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$Ad;->setPersonalizedAdEnableTime(Landroid/content/ContentResolver;J)V

    const-string p0, "AdServiceSettings_switch"

    .line 53
    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    const-string/jumbo p0, "setting_Passwords_sec_ad"

    .line 54
    invoke-static {p0, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
