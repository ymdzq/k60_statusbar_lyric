.class Lcom/android/settings/vpn2/MiuiVpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiVpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/MiuiVpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo p1, "vpn_on"

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 89
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->-$$Nest$mupdateVpnState(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    return-void
.end method
