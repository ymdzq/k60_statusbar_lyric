.class Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "connected"

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->-$$Nest$fgetmUsbManager(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;

    const-string/jumbo p1, "none"

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->-$$Nest$mupdateToggles(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V

    return-void
.end method
