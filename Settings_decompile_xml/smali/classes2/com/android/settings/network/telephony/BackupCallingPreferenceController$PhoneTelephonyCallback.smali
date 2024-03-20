.class Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "BackupCallingPreferenceController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Ljava/lang/Integer;)V

    .line 198
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Ljava/lang/Integer;)V

    .line 206
    iget-object p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p2}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Ljava/lang/Integer;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_0
    return-void
.end method
