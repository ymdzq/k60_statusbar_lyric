.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controller:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/media/session/MediaController;

    .line 10
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 20
    check-cast p0, Landroid/media/session/MediaController;

    .line 22
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 28
    return-void

    .line 31
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 32
    check-cast p0, Landroid/media/session/MediaController;

    .line 34
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 40
    return-void

    .line 43
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 44
    check-cast p0, Landroid/media/session/MediaController;

    .line 46
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 52
    return-void

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$getStandardAction$1;->$controller:Ljava/lang/Object;

    .line 56
    check-cast p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 60
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 62
    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    .line 65
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
