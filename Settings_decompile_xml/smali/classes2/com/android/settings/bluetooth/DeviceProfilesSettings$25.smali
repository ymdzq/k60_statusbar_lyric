.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$25;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 3726
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$25;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3727
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$25;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mcreateDialogForOpenAudioRepair(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "onAudioRepairClicked failed "

    .line 3730
    invoke-static {p1, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
