.class Lcom/android/settings/MiuiSettingsReceiver$2;
.super Ljava/lang/Object;
.source "MiuiSettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cmd:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$cmd:I

    iput p3, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isWifiWakeupAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_wakeup_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 568
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsDefaultMode(Landroid/content/Context;I)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/operatorutils/Operator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 573
    iget v2, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$cmd:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$cmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiSettingsReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_2
    iget p0, p0, Lcom/android/settings/MiuiSettingsReceiver$2;->val$reason:I

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/operatorutils/Operator;->stopTethering(I)V

    goto :goto_0

    .line 578
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/wifi/operatorutils/Operator;->registerReceiver()V

    goto :goto_0

    .line 575
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/operatorutils/Operator;->updateWifiConfig()V

    :cond_5
    :goto_0
    return-void
.end method
