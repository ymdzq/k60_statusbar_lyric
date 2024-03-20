.class Lcom/android/settings/wfd/MiuiWifiDisplaySettings$2;
.super Ljava/lang/Object;
.source "MiuiWifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/MiuiWifiDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/wfd/MiuiWifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/android/settings/wfd/MiuiWifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    iget-object p1, p1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 88
    iget-object p0, p0, Lcom/android/settings/wfd/MiuiWifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    invoke-static {p0, p2}, Lcom/android/settings/wfd/MiuiWifiDisplaySettings;->-$$Nest$menableWifiDisplay(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;Z)V

    return-void
.end method
