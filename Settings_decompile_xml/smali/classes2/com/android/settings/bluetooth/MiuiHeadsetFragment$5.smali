.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1840
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1843
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1845
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p1, :cond_0

    .line 1846
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 1848
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1849
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 1851
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {p2, p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshProfilePreference(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_1
    return-void
.end method
