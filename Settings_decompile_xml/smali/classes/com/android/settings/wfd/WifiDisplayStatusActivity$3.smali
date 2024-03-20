.class Lcom/android/settings/wfd/WifiDisplayStatusActivity$3;
.super Ljava/lang/Object;
.source "WifiDisplayStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplayStatusActivity;->showWifiDisplayStatusDialog()V
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

    .line 74
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$3;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "WifiDisplayStatus"

    const-string p2, "Dialog negative button onClick"

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$3;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
