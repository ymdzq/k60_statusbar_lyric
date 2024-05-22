.class public final synthetic Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/view/TextureVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/view/TextureVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    sget p1, Lcom/android/systemui/toast/view/TextureVideoView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "onInfo, what="

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, ", extra="

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    const-string p1, "TextureVideoView"

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 p0, 0x1

    .line 36
    return p0
    .line 37
.end method
