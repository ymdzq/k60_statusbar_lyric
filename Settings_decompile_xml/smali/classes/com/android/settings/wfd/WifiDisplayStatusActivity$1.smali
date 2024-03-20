.class Lcom/android/settings/wfd/WifiDisplayStatusActivity$1;
.super Ljava/lang/Object;
.source "WifiDisplayStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 57
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$1;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "WifiDisplayStatus"

    const-string v0, "Dialog onDismiss"

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$1;->this$0:Lcom/android/settings/wfd/WifiDisplayStatusActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
