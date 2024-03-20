.class Lcom/android/settings/wifi/MiuiWifiSettings$11;
.super Landroid/os/Handler;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->initDppHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 2187
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x5001

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$000(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2188
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$102(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z

    .line 2189
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const-class p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    const/4 v7, 0x0

    sget v8, Lcom/android/settings/R$string;->dpp_theme_title:I

    move-object v3, v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 2191
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x5002

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$200(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2192
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$302(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z

    .line 2193
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWifiQrcode(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2196
    :cond_1
    new-instance p1, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;-><init>(Landroid/content/Context;)V

    .line 2197
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWifiQrcode(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->setWifiQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 2198
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$11;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    .line 2199
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->showWifiShareDialog()V

    nop

    :cond_2
    :goto_0
    return-void
.end method
