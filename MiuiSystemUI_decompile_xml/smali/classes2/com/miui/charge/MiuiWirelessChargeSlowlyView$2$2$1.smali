.class public final Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$2:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->this$2:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;

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
    iget v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->this$2:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;

    .line 8
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 10
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 12
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    return-void

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->this$2:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;

    .line 21
    iget-object v0, v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 23
    iget-object v0, v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2$1;->this$2:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;

    .line 35
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;->this$1:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 37
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 41
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
