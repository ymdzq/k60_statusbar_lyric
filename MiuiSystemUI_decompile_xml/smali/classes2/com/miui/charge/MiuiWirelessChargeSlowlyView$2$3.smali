.class public final Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->this$1:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->this$1:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 10
    iget-object v0, v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->this$1:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 24
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 26
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 28
    const/16 v0, 0x8

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_0
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->this$1:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;

    .line 38
    iget-object v0, v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 40
    iget-object v0, v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;->this$1:Ljava/lang/Object;

    .line 52
    check-cast p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;

    .line 54
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 56
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 60
    :cond_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 64
.end method
