.class Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;
.super Landroid/net/IMiuiCaptivePortal$Stub;
.source "MiuiPasspointR1Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->gotoLoginActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fqdn:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$fqdn:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/IMiuiCaptivePortal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$fqdn:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->saveRegisterState(Landroid/content/Context;Ljava/lang/String;Z)V

    if-ne p1, v2, :cond_1

    .line 58
    iget-object p1, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$fqdn:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removePasspointConfig(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils$1;->val$context:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.wifi.passpoint.action.PASSPOINT_CONNECTED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
