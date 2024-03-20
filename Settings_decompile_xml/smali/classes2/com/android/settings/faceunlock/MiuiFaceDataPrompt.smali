.class public Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiFaceDataPrompt.java"


# instance fields
.field private mBackImage:Landroid/view/View;

.field private mFaceInputPromptVideo:Landroid/view/TextureView;

.field private mFacePromptTitle:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)Landroid/media/MediaPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 96
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$2;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$2;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreenAndNoCamera(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget p1, Lcom/android/settings/R$layout;->miui_face_largescreen_prompt:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 39
    :cond_0
    sget p1, Lcom/android/settings/R$id;->miui_face_input_prompt_video:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mFaceInputPromptVideo:Landroid/view/TextureView;

    .line 40
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 41
    sget p1, Lcom/android/settings/R$id;->miui_face_input_prompt_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mFacePromptTitle:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/android/settings/R$string;->face_unlock_prompt:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 43
    sget p1, Lcom/android/settings/R$id;->back_image:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mBackImage:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$1;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$1;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->setFaceEnrollViewStatus(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 73
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3302

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public playVideo()V
    .locals 3

    .line 114
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sget v0, Lcom/android/settings/R$raw;->miui_face_prompt:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 115
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mFaceInputPromptVideo:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$3;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$3;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method
