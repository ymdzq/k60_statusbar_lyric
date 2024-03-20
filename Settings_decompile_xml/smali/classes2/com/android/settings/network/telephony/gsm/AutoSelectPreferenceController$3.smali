.class Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;
.super Lcom/qti/extphone/ExtPhoneCallbackListener;
.source "AutoSelectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 1

    const-string p2, "AutoSelectPreferenceController"

    const-string v0, "ExtPhoneCallback: getNetworkSelectionModeResponse"

    .line 370
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 373
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getIsManual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p3, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p3}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/telephony/TelephonyManager;

    const/4 p3, 0x2

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/telephony/TelephonyManager;

    :goto_0
    invoke-static {p2, p3}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fputmCacheOfModeStatus(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V

    .line 376
    iget-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$100(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getAccessMode()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setAccessMode(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmLock(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 382
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmLock(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 383
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
