.class public Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/WifiInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiScanBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/WifiInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo p1, "resultsUpdated"

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$mscanSuccess(Lcom/android/settings/bluetooth/WifiInfoService;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$mscanFailure(Lcom/android/settings/bluetooth/WifiInfoService;)V

    :cond_1
    :goto_0
    return-void
.end method
