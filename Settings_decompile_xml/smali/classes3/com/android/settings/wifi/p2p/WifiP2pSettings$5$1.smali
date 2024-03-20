.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 427
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_p2p_failed_rename_message:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 0
    return-void
.end method
