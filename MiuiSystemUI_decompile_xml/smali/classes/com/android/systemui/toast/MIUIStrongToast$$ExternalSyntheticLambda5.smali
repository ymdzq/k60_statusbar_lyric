.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const-string v1, "MIUIStrongToast"

    .line 5
    const-string v2, " i1 :"

    .line 7
    const-string v3, "onError: video play is error :  i: "

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 15
    sget p1, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->stopPlayback()V

    .line 45
    return v0

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 49
    sget p1, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->stopPlayback()V

    .line 79
    return v0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 84
.end method
