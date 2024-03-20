.class Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->deleteSavedConfig(Lcom/android/wifitrackerlib/WifiEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

.field final synthetic val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public static synthetic $r8$lambda$oefEA0xrTX-FJnBxYmdK3s--RSA(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->lambda$onFailure$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$seMaSMQ2ydQzqovdsOvJZKmC_J0(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fgetmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fputmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;I)V

    if-nez v1, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$mupdateUI(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fputisInActinoMode(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fgetmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fputmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;I)V

    if-gtz v1, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$mupdateUI(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted config failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiSavedAccessPointsWifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
