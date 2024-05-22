.class public final Lcom/miui/charge/MiuiChargeController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$4;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController$4;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 2
    iget-boolean p2, p1, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 4
    if-eqz p2, :cond_0

    .line 6
    const-string p2, "onTouch"

    .line 8
    invoke-virtual {p1, p2}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$4;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 13
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 15
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 17
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
    .line 25
.end method
