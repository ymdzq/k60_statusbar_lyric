.class Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController$1;
.super Ljava/lang/Object;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

.field final synthetic val$a2dp:Lcom/android/settingslib/bluetooth/A2dpProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController$1;->val$a2dp:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 487
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController$1;->val$a2dp:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    const/4 p0, 0x1

    return p0
.end method
