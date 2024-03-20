.class Lcom/android/settings/wifi/MiuiTetherDeviceSettings$1;
.super Ljava/lang/Object;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$1;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$1;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$mupdateStaConnectStatus(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 0

    .line 0
    return-void
.end method
