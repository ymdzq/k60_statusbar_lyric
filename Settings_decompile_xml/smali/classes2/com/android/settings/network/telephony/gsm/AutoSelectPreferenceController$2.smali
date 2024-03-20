.class Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;
.super Ljava/lang/Object;
.source "AutoSelectPreferenceController.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


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

    .line 345
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 351
    iget-object v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmExtTelephonyManager(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 352
    invoke-static {v3}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$000(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget-object v4, v4, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 351
    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fputmClient(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/qti/extphone/Client;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExtTelManagerServiceCallback: service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmClient(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/qti/extphone/Client;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoSelectPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "AutoSelectPreferenceController"

    const-string v1, "mExtTelManagerServiceCallback: service disconnected"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fgetmServiceConnected(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Z)V

    .line 361
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->-$$Nest$fputmClient(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/qti/extphone/Client;)V

    :cond_0
    return-void
.end method
