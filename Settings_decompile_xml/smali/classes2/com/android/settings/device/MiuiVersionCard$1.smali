.class Lcom/android/settings/device/MiuiVersionCard$1;
.super Landroid/os/Handler;
.source "MiuiVersionCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiVersionCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/MiuiVersionCard;


# direct methods
.method constructor <init>(Lcom/android/settings/device/MiuiVersionCard;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-static {p1}, Lcom/android/settings/device/MiuiVersionCard;->-$$Nest$mcheckUpdate(Lcom/android/settings/device/MiuiVersionCard;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-static {p1}, Lcom/android/settings/device/MiuiVersionCard;->-$$Nest$fgetmNeedUpdate(Lcom/android/settings/device/MiuiVersionCard;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-static {p0}, Lcom/android/settings/device/MiuiVersionCard;->-$$Nest$fgetmHandler(Lcom/android/settings/device/MiuiVersionCard;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/settings/device/MiuiVersionCard;->-$$Nest$fputmNeedStartAnim(Lcom/android/settings/device/MiuiVersionCard;Z)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard$1;->this$0:Lcom/android/settings/device/MiuiVersionCard;

    invoke-static {p0, v0}, Lcom/android/settings/device/MiuiVersionCard;->-$$Nest$mperformLogoAnimation(Lcom/android/settings/device/MiuiVersionCard;Z)V

    :goto_0
    return-void
.end method
