.class Lcom/android/settings/network/NetworkProviderSettings$9;
.super Ljava/lang/Object;
.source "NetworkProviderSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;

.field final synthetic val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2111
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2114
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p1}, Lcom/android/settings/network/NetworkProviderSettings;->access$200(Lcom/android/settings/network/NetworkProviderSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/passpoint/PasspointConfigureReceiver;->enablePasspointWifiReceiver(Landroid/content/Context;)V

    .line 2115
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    .line 2116
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$9;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->-$$Nest$fputmClickedConnect(Lcom/android/settings/network/NetworkProviderSettings;Z)V

    return-void
.end method
