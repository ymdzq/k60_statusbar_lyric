.class Lcom/android/settings/wifi/WifiAssistantDialog$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiAssistantDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAssistantDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAssistantDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAssistantDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiAssistantDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiAssistantDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiAssistantDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiAssistantDialog;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " validated"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiAssistantDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiAssistantDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiAssistantDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiAssistantDialog;->-$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiAssistantDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiAssistantDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog$1;->this$0:Lcom/android/settings/wifi/WifiAssistantDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
