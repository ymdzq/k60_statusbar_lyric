.class Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;
.super Ljava/lang/Object;
.source "SlaveWifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 395
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmDeviceNameText(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 397
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 398
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_p2p_failed_rename_message:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setDeviceName bingo : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmDeviceNameText(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlaveWifiP2pSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmDeviceNameText(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5$1;-><init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$5;)V

    .line 409
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->setDeviceName(Ljava/lang/Object;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    return-void
.end method
