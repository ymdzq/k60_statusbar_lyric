.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 2904
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2907
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 2908
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_switch_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2909
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$monAudioShareSwitchPrefClicked(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method
