.class public Lcom/android/settings/hovermode/HoverModeGuideVideo;
.super Landroid/widget/FrameLayout;
.source "HoverModeGuideVideo.java"


# instance fields
.field private final RES_VIDEO_ID:I

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaSurface:Landroid/view/Surface;

.field private mVideoTextureView:Landroid/view/TextureView;

.field private mVideoUri:Landroid/net/Uri;

.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLayoutParams(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/media/MediaPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaSurface(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/view/Surface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mMediaSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoTextureView(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoUri(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFlipper(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/ViewFlipper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaSurface(Lcom/android/settings/hovermode/HoverModeGuideVideo;Landroid/view/Surface;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mMediaSurface:Landroid/view/Surface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    sget p1, Lcom/android/settings/R$raw;->hover_mode_guide_video:I

    iput p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->RES_VIDEO_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget p1, Lcom/android/settings/R$raw;->hover_mode_guide_video:I

    iput p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->RES_VIDEO_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget p1, Lcom/android/settings/R$raw;->hover_mode_guide_video:I

    iput p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->RES_VIDEO_ID:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 42
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoTextureView:Landroid/view/TextureView;

    .line 43
    sget v0, Lcom/android/settings/R$id;->hover_mode_view_flipper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->RES_VIDEO_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoUri:Landroid/net/Uri;

    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    new-instance v1, Lcom/android/settings/hovermode/HoverModeGuideVideo$1;

    invoke-direct {v1, p0}, Lcom/android/settings/hovermode/HoverModeGuideVideo$1;-><init>(Lcom/android/settings/hovermode/HoverModeGuideVideo;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/android/settings/hovermode/HoverModeGuideVideo$2;

    invoke-direct {v1, p0}, Lcom/android/settings/hovermode/HoverModeGuideVideo$2;-><init>(Lcom/android/settings/hovermode/HoverModeGuideVideo;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo;->mViewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;

    invoke-direct {v1, p0}, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;-><init>(Lcom/android/settings/hovermode/HoverModeGuideVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
