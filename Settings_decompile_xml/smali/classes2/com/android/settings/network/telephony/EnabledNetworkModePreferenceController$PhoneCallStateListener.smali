.class Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 1024
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1031
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p2, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;I)V

    .line 1032
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    .line 1036
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1037
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1038
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1040
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 p2, 0x20

    invoke-virtual {p1, p0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;I)V

    .line 1046
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
