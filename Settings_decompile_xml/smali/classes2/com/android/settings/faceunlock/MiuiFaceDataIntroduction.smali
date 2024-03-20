.class public Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;
.super Lcom/android/settings/KeyguardBaseActivity;
.source "MiuiFaceDataIntroduction.java"


# instance fields
.field private mBackImage:Landroid/widget/LinearLayout;

.field private mFaceInputIntroductiontVideo:Landroid/view/TextureView;

.field private mFaceIntroductionTitle:Landroid/widget/TextView;

.field private mIntentFromInternal:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSettingsPasswordBtn:Landroid/widget/Button;

.field private mSltObserver:Landroid/database/ContentObserver;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/media/MediaPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsPasswordBtn(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSettingsPasswordBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/KeyguardBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mIntentFromInternal:Z

    .line 156
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$3;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$3;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSltObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private registerSltChangeObserver()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->supportSlt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSltObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$5;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSltObserver:Landroid/database/ContentObserver;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->registerSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public finish()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 190
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mIntentFromInternal:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 191
    sget v1, Lcom/android/settings/R$anim;->activity_translate_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 130
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->finish()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreenAndNoCamera(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/android/settings/R$style;->Theme_Dark_Settings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 58
    invoke-direct {p0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setActivityOrientation(Landroid/app/Activity;)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    sget p1, Lcom/android/settings/R$layout;->miui_face_introduction_land:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/android/settings/R$layout;->miui_face_introduction:I

    .line 66
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    sget p1, Lcom/android/settings/R$id;->back_image:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mBackImage:Landroid/widget/LinearLayout;

    .line 69
    new-instance v2, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$1;

    invoke-direct {v2, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$1;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget p1, Lcom/android/settings/R$id;->miui_face_input_introduction_video:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mFaceInputIntroductiontVideo:Landroid/view/TextureView;

    .line 77
    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 78
    sget p1, Lcom/android/settings/R$id;->miui_face_input_introduction_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mFaceIntroductionTitle:Landroid/widget/TextView;

    .line 79
    sget v2, Lcom/android/settings/R$string;->face_data_input_title:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    sget p1, Lcom/android/settings/R$id;->miui_face_recoginition_intorduction_next:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSettingsPasswordBtn:Landroid/widget/Button;

    .line 81
    new-instance v2, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;

    invoke-direct {v2, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$2;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->setFaceEnrollViewStatus(Landroid/content/Context;Landroid/view/Window;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 99
    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "face_request_code"

    const/4 v3, -0x1

    .line 102
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mIntentFromInternal:Z

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 120
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/android/settings/KeyguardBaseActivity;->onResume()V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1302

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->registerSltChangeObserver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->unregisterSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public playVideo()V
    .locals 3

    .line 174
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sget v0, Lcom/android/settings/R$raw;->miui_face_input_suggestion_video:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 175
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mFaceInputIntroductiontVideo:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method
