.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->$key:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->$key:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 22
    iget v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 24
    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v1, Landroid/media/session/MediaController;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {v1, p0, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 46
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 53
    :cond_1
    return-void

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$dismissMediaData$1;->$key:Ljava/lang/String;

    .line 59
    invoke-static {v0, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->removeEntry$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 66
.end method
