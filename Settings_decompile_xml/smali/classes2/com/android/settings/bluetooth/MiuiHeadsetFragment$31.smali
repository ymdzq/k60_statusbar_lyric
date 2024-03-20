.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshGyrStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 4395
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 4398
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetissupportimmerviseaudio(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4399
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spatial_audio_feature_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    goto :goto_1

    .line 4401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 4402
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$misOffloadCodecInUse(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v4

    and-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 4403
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetimmersionAudioCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetissupportimmerviseaudio(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4404
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetimmersionAudioCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4405
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetimmersionAudioCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4407
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportGyr(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4408
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    const-string v3, "MiuiHeadsetFragment"

    if-eqz v0, :cond_4

    .line 4410
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/16 v6, 0x70

    invoke-interface {v0, v6, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 4411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get gyr stat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v3, "1"

    .line 4412
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4413
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 4415
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4418
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "refreshGyrStatus but mService is null"

    .line 4421
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method
