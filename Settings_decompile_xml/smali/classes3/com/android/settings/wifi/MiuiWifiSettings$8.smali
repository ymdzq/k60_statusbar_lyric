.class Lcom/android/settings/wifi/MiuiWifiSettings$8;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$originalScreenBrightness:F

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1967
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$originalScreenBrightness:F

    iput-object p4, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1970
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsShown(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 1971
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmSharedDialog(Lcom/android/settings/wifi/MiuiWifiSettings;Lmiuix/appcompat/app/AlertDialog;)V

    .line 1972
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmWifiConfig(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    .line 1973
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$originalScreenBrightness:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1974
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$window:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1975
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$8;->val$window:Landroid/view/Window;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
