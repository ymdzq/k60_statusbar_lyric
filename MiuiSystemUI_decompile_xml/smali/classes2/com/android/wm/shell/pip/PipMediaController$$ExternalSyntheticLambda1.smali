.class public final synthetic Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/media/session/MediaSession$Token;

    .line 10
    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;

    .line 12
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 14
    iput-object p0, p1, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 18
    return-void

    .line 21
    :pswitch_1
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 22
    const/4 p0, 0x0

    .line 25
    throw p0

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 27
    check-cast p0, Ljava/util/List;

    .line 29
    check-cast p1, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    .line 31
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 33
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 38
.end method
