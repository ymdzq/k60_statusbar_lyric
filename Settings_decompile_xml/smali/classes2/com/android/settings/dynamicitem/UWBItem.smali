.class public Lcom/android/settings/dynamicitem/UWBItem;
.super Lcom/android/settings/dynamicitem/DynamicItem;
.source "UWBItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/dynamicitem/DynamicItem;-><init>()V

    return-void
.end method

.method private getLauncherIntent()Landroid/content/Intent;
    .locals 2

    .line 19
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.smarthomeplus"

    const-string v1, "com.miui.smarthomeplus.settings.uwb.UwbSettingsActivity"

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "source"

    const-string/jumbo v1, "systemSettings"

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public setDetail(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 0

    .line 33
    sget p1, Lcom/android/settings/R$string;->launch_smarthome:I

    iput p1, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->titleRes:I

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dynamicitem/UWBItem;->getLauncherIntent()Landroid/content/Intent;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    return-void
.end method

.method public shouldShow(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "support_show_in_main_settings"

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 28
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isUWBSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
