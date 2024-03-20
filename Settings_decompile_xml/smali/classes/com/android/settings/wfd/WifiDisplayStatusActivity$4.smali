.class Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplayStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "WifiDisplayStatus"

    const-string v0, "Receive ACTION_WIFI_DISPLAY_STATUS_CHANGED"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 89
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/WifiDisplayStatus;

    .line 90
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p1

    if-nez p1, :cond_1

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method
