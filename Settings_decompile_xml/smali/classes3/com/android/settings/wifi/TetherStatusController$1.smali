.class Lcom/android/settings/wifi/TetherStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TetherStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TetherStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TetherStatusController;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/settings/wifi/TetherStatusController$1;->this$0:Lcom/android/settings/wifi/TetherStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/wifi/TetherStatusController$1;->this$0:Lcom/android/settings/wifi/TetherStatusController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TetherStatusController;->updateStatus()V

    return-void
.end method
