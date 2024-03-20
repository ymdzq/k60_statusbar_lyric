.class Lcom/android/settings/device/MiuiMyDeviceSettings$2;
.super Landroid/database/ContentObserver;
.source "MiuiMyDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/MiuiMyDeviceSettings;->onChangeMaintenancePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/device/MiuiMyDeviceSettings;Landroid/os/Handler;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;->this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 164
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;->this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-static {p1}, Lcom/android/settings/device/MiuiMyDeviceSettings;->access$000(Lcom/android/settings/device/MiuiMyDeviceSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "miui_dkt_mode"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;->this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "maintenancemode_key"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/Preference;

    if-eqz v1, :cond_1

    xor-int/2addr p1, v0

    .line 169
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;->this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;->this$0:Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_2
    return-void
.end method
