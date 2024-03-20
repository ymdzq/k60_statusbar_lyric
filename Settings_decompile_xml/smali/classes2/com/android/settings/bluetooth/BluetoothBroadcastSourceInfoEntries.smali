.class public Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;
.super Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;
.source "BluetoothBroadcastSourceInfoEntries.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 53
    check-cast p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreferenceClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothBroadcastSourceInfoEntries"

    invoke-static {p1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
