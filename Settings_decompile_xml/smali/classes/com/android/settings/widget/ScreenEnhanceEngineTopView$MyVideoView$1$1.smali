.class Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1$1;
.super Ljava/lang/Object;
.source "ScreenEnhanceEngineTopView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1$1;->this$1:Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1$1;->this$1:Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;

    invoke-static {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;->-$$Nest$fgetmediaPlayer(Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
