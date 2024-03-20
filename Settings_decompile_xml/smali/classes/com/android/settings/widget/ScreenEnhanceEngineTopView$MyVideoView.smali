.class Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;
.super Landroid/view/TextureView;
.source "ScreenEnhanceEngineTopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ScreenEnhanceEngineTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyVideoView"
.end annotation


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgeturi(Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->uri:Landroid/net/Uri;

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->uri:Landroid/net/Uri;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;->uri:Landroid/net/Uri;

    return-void
.end method

.method private mInit()V
    .locals 1

    .line 194
    new-instance v0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView$1;-><init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
