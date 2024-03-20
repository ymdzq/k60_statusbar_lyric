.class public Lcom/android/settings/view/CornerVideoView;
.super Landroid/widget/VideoView;
.source "CornerVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/CornerVideoView;->setCornerRadiusFromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/CornerVideoView;->setCornerRadiusFromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/CornerVideoView;->setCornerRadiusFromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setCornerRadiusFromAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/android/settings/R$styleable;->CornerVideoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/android/settings/R$styleable;->CornerVideoView_cornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/settings/view/CornerVideoView;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method public play(II)V
    .locals 1

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 59
    new-instance p1, Lcom/android/settings/view/CornerVideoView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/view/CornerVideoView$1;-><init>(Lcom/android/settings/view/CornerVideoView;)V

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;-><init>(Lcom/android/settings/view/CornerVideoView;F)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setClipToOutline(Z)V

    return-void
.end method
