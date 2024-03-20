.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 12
    sget v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->$r8$clinit:I

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Lcom/android/settingslib/media/MediaDevice;)V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 24
    sget v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->$r8$clinit:I

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Lcom/android/settingslib/media/MediaDevice;)V

    .line 28
    return-void

    .line 31
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 32
    check-cast p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 36
    sget v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->$r8$clinit:I

    .line 38
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Lcom/android/settingslib/media/MediaDevice;)V

    .line 40
    return-void

    .line 43
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 44
    check-cast p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 48
    sget v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->$r8$clinit:I

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->onItemClick(Lcom/android/settingslib/media/MediaDevice;)V

    .line 52
    return-void

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 56
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->tryToLaunchInAppRoutingIntent(Landroid/view/View;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 70
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/media/MediaDevice;

    .line 74
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 76
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->tryToLaunchInAppRoutingIntent(Landroid/view/View;Ljava/lang/String;)V

    .line 84
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method
