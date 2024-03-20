.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1860
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1863
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1864
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {v0, p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshProfilePreference(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_0
    return-void
.end method
