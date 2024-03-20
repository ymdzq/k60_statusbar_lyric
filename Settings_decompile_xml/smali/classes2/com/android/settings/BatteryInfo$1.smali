.class Lcom/android/settings/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/BatteryInfo$1;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BatteryInfo$1;->this$0:Lcom/android/settings/BatteryInfo;

    invoke-static {p1}, Lcom/android/settings/BatteryInfo;->-$$Nest$mupdateBatteryStats(Lcom/android/settings/BatteryInfo;)V

    const-wide/16 v1, 0x3e8

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
