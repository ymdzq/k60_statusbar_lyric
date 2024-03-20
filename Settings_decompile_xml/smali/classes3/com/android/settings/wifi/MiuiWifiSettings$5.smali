.class Lcom/android/settings/wifi/MiuiWifiSettings$5;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1070
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateScanState(Z)V

    return-void
.end method
