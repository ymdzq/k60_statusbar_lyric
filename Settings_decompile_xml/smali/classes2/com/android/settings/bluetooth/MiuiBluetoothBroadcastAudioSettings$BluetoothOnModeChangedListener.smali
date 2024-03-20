.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;
.super Ljava/lang/Object;
.source "MiuiBluetoothBroadcastAudioSettings.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothOnModeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;


# direct methods
.method public static synthetic $r8$lambda$dwfwTmBWCA_Zbvu3IsLnfj1IQw4(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;->lambda$onModeChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onModeChanged$0()V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmAuracastSourceController(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
