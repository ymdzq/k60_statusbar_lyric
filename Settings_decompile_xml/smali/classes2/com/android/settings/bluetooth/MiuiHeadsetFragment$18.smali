.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialogForOpenAbsVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$volumePre:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3284
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3286
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo p2, "onAbsVolumePrefClicked  set true"

    .line 3287
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->val$volumePre:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3289
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string v0, "ABSOLUTEVOLUME"

    invoke-virtual {p1, v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 3290
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    :cond_0
    return-void
.end method
