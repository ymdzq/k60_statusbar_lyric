.class public Lcom/android/settings/dynamicitem/SubScreenItem;
.super Lcom/android/settings/dynamicitem/DynamicItem;
.source "SubScreenItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/settings/dynamicitem/DynamicItem;-><init>()V

    return-void
.end method


# virtual methods
.method public setDetail(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 1

    const-string p0, "com.android.settings"

    const-string/jumbo v0, "subscreen_title"

    .line 22
    invoke-static {p1, p0, v0}, Lcom/android/settings/MiuiUtils;->getStringByResName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 23
    iget-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string p1, "com.xiaomi.misubscreenui"

    const-string v0, "com.xiaomi.misubscreenui.SubscreenSettingsActivity"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    sget p0, Lcom/android/settings/R$drawable;->ic_rear_display:I

    iput p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    return-void
.end method

.method public shouldShow(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "star"

    .line 17
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
