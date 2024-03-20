.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1249
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1252
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1254
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p1, :cond_0

    .line 1255
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 1257
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 1259
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v0, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez v0, :cond_1

    .line 1260
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mrefreshProfilePreference(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_1
    return-void
.end method
