.class Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;
.super Ljava/lang/Object;
.source "MiuiSlaveWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$originalScreenBrightness:F

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1085
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$originalScreenBrightness:F

    iput-object p4, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1088
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmIsShown(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Z)V

    .line 1089
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmWifiConfig(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    .line 1090
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$originalScreenBrightness:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$window:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1092
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;->val$window:Landroid/view/Window;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
