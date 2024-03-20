.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setHDAudioEnableForLhdc4Changed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$enable:Z

.field final synthetic val$prefHdAudio:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;ZLandroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1638
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$enable:Z

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$prefHdAudio:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1641
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$enable:Z

    if-eqz v0, :cond_0

    .line 1642
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$prefHdAudio:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$prefHdAudio:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1645
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->val$prefHdAudio:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1646
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1647
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "STORE_DEVICE_CODEC_HD_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/BluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
