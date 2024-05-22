.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 10
    iput-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoReady:Z

    .line 12
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mediaRightPlayer:Landroid/media/MediaPlayer;

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoReady:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mediaLeftPlayer:Landroid/media/MediaPlayer;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 26
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoReady:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoReady:Z

    .line 36
    :cond_0
    return-void

    .line 38
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoReady:Z

    .line 41
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mediaLeftPlayer:Landroid/media/MediaPlayer;

    .line 43
    iget-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoReady:Z

    .line 45
    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mediaRightPlayer:Landroid/media/MediaPlayer;

    .line 49
    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoReady:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoReady:Z

    .line 65
    :cond_1
    return-void

    .line 67
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 70
    invoke-virtual {v0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 72
    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda9;

    .line 75
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 80
    return-void

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 88
    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda9;

    .line 91
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 96
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 100
.end method
