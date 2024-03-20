.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->handlePreferenceEnabled(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

.field final synthetic val$pref:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 894
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->val$pref:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BluetoothAdvancedSettings"

    const-string/jumbo v1, "recover pref state from disable state"

    .line 897
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAudioManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 901
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAudioManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 903
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 907
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$misHearingAidConnected(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mgetBroadcastStatus(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 909
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$11;->val$pref:Landroidx/preference/Preference;

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
