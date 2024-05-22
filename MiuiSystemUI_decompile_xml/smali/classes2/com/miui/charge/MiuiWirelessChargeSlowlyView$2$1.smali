.class public final Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 2
    iget-object p1, p1, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 4
    iget-object p1, p1, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;-><init>(ILjava/lang/Object;)V

    .line 11
    const-wide/16 v1, 0x3e8

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    return-void
    .line 19
.end method
