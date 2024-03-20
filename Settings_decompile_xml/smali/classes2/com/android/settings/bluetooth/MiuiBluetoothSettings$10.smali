.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 1241
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1244
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothReceiver.onReceive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 1248
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 1251
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eqz p2, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    move-result-object v2

    .line 1255
    invoke-virtual {v2, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    .line 1254
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1259
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1260
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1261
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_3

    const/16 p2, 0xc

    .line 1262
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 1263
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmHalfClosePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1265
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p2, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1267
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmHalfClosePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1269
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmHalfClosePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1273
    :cond_3
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothReceiver mLocalAdapter is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmHalfClosePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1278
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mupdatePluginUpdatePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    :cond_5
    return-void
.end method
