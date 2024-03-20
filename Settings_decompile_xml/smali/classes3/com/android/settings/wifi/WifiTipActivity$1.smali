.class Lcom/android/settings/wifi/WifiTipActivity$1;
.super Ljava/lang/Object;
.source "WifiTipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTipActivity;->showWifiTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTipActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTipActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTipActivity$1;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 51
    iget-object p2, p0, Lcom/android/settings/wifi/WifiTipActivity$1;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiTipActivity;->-$$Nest$fgetmDialogType(Lcom/android/settings/wifi/WifiTipActivity;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 52
    iget-object p2, p0, Lcom/android/settings/wifi/WifiTipActivity$1;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 53
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 55
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTipActivity$1;->this$0:Lcom/android/settings/wifi/WifiTipActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
