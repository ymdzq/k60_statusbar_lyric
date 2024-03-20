.class Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$1;
.super Ljava/lang/Object;
.source "MiuiAddDeviceToBlockList.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$1;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

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

    .line 131
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$1;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$mupdateStaConnectStatus(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 0

    .line 0
    return-void
.end method
