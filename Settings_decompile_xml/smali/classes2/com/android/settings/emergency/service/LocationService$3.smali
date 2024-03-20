.class Lcom/android/settings/emergency/service/LocationService$3;
.super Landroid/telephony/PhoneStateListener;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->initPhoneState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 5

    .line 389
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOS-LocationService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmIsDialingState(Lcom/android/settings/emergency/service/LocationService;Z)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$misCdmaSim(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmLastCallState(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$mplayAudioAfterCallConnected(Lcom/android/settings/emergency/service/LocationService;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    if-ne v0, p1, :cond_4

    .line 406
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCallSuccess(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCallSuccess(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/AudioTrackManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/emergency/service/AudioTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/emergency/service/AudioTrackManager;->cancelPlay()V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmIsDialingState(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCallSuccess(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    const-string/jumbo v0, "start sos call next!"

    .line 413
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCurrentSubInfo(Lcom/android/settings/emergency/service/LocationService;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v0, v0, v1, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$mstartCallIntentDelay(Lcom/android/settings/emergency/service/LocationService;Landroid/content/Context;Ljava/lang/String;I)V

    .line 420
    :cond_4
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0, p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmLastCallState(Lcom/android/settings/emergency/service/LocationService;I)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$3;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getMiuiLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmSignalStrength(Lcom/android/settings/emergency/service/LocationService;I)V

    return-void
.end method
