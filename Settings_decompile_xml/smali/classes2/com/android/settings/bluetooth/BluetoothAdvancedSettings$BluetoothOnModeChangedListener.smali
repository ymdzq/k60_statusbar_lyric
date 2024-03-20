.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothOnModeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method public static synthetic $r8$lambda$-2yWGi_N8D3lxNEe_hEH-SSxQac(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->lambda$onModeChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$g1gqVXGIn86vw39fqPVYTZVsXN8(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->lambda$onModeChanged$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qaMc0N6kcb4JG7sbUvpECfASXDY(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->lambda$onModeChanged$2(Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onModeChanged$0(Z)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onModeChanged$1(Z)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onModeChanged$2(Z)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.bluetooth.disableinbandringing"

    .line 143
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 145
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 150
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 151
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hfp_device_status"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 152
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lea_device_status"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 159
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 167
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 169
    :goto_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 173
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$misHearingAidConnected(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mgetBroadcastStatus(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    move v3, v4

    .line 175
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
