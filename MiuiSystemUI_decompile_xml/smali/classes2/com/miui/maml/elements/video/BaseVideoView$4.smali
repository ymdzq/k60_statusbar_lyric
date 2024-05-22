.class Lcom/miui/maml/elements/video/BaseVideoView$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    const-string p1, "Error: "

    .line 2
    const-string v0, ","

    .line 4
    const-string v1, "BaseVideoView"

    .line 6
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 11
    const/4 p2, -0x1

    .line 13
    invoke-static {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 17
    invoke-static {p0, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 19
    const/4 p0, 0x1

    .line 22
    return p0
    .line 23
.end method
