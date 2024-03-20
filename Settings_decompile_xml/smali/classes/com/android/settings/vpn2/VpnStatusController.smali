.class public Lcom/android/settings/vpn2/VpnStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "VpnStatusController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mVpnManager:Lcom/android/settings/vpn2/VpnManager;


# direct methods
.method private setVpnTitle(I)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVpnTitle, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 39
    sget p1, Lcom/android/settings/R$string;->vpn_off:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 33
    :cond_1
    sget p1, Lcom/android/settings/R$string;->vpn_on:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 36
    :cond_2
    sget p1, Lcom/android/settings/R$string;->connecting_to_vpn:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnStatusController;->mVpnManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->getVpnConnectionStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/VpnStatusController;->setVpnTitle(I)V

    return-void
.end method

.method public updateStatus()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnStatusController;->mVpnManager:Lcom/android/settings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->getVpnConnectionStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/VpnStatusController;->setVpnTitle(I)V

    return-void
.end method
