.class Lcom/android/settings/wifi/MiuiSlaveWifiSettings$2;
.super Ljava/lang/Object;
.source "MiuiSlaveWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateScanState(Z)V

    return-void
.end method
