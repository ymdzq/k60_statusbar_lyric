.class Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController$1;
.super Landroid/os/Handler;
.source "BatteryStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x322

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;->-$$Nest$mnotifyBatteryStatusChanged(Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;I)V

    :goto_0
    return-void
.end method
