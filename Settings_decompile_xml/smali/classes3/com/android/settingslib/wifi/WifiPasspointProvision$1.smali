.class Lcom/android/settingslib/wifi/WifiPasspointProvision$1;
.super Ljava/lang/Object;
.source "WifiPasspointProvision.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiPasspointProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiPasspointProvision;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiPasspointProvision;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiPasspointProvision$1;->this$0:Lcom/android/settingslib/wifi/WifiPasspointProvision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiPasspointProvision$1;->this$0:Lcom/android/settingslib/wifi/WifiPasspointProvision;

    invoke-static {p2}, Lcom/miui/cloudservice/IPasspointKeyInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/cloudservice/IPasspointKeyInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->-$$Nest$fputmIPasspointKeyInterface(Lcom/android/settingslib/wifi/WifiPasspointProvision;Lcom/miui/cloudservice/IPasspointKeyInterface;)V

    const-string p1, "onServiceConnected"

    const-string p2, "WifiPasspointProvision"

    .line 306
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiPasspointProvision$1;->this$0:Lcom/android/settingslib/wifi/WifiPasspointProvision;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->-$$Nest$fgetmIPasspointKeyInterface(Lcom/android/settingslib/wifi/WifiPasspointProvision;)Lcom/miui/cloudservice/IPasspointKeyInterface;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "mIPasspointKeyInterface == null"

    .line 308
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "mIPasspointKeyInterface != null"

    .line 311
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "WifiPasspointProvision"

    const-string p1, "onServiceDisconnected"

    .line 316
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
