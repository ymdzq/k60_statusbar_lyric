.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleConnectMmaFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$deviceAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4798
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->val$deviceAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4802
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->val$deviceAddress:Ljava/lang/String;

    const-string v1, "MMA_CONNECTION_FAILED"

    const-string v2, ""

    .line 4803
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4804
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 4805
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4806
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 4807
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->headset_toast_tip_disconnect_others:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4806
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 4809
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v0, :cond_0

    .line 4810
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->initBatteryDefault()V

    .line 4812
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const-string v1, "-1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 4813
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmOtaIndicate(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V

    .line 4814
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportGyr(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetisSupportHeadTrackAlgo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4815
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4817
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportInear(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4818
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4820
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmShowAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4821
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4823
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4824
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4826
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4827
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "fitness_check"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4829
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4831
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4832
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string/jumbo v0, "notificationdisplay"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_6

    .line 4834
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method
