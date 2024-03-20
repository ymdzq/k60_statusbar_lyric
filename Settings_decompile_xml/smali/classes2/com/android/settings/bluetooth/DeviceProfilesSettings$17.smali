.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForOpenAbsVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$volumePre:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2726
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2728
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo p2, "onAbsVolumePrefClicked  set true"

    .line 2729
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2731
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string v0, "ABSOLUTEVOLUME"

    invoke-virtual {p1, v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2732
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    :cond_0
    return-void
.end method
