.class public Lcom/android/systemui/volume/CaptionsToggleImageButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCaptionsEnabled:Z

.field public mConfirmedTapListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mGestureListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    .line 6
    new-instance p1, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;-><init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$1;

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 18
    const p2, 0x7f130c4b    # @string/volume_odi_captions_content_description 'Captions overlay'

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public getCaptionsEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final tryToSendTapConfirmedEvent()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mConfirmedTapListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 9
    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    .line 11
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 15
    const/4 v3, 0x1

    .line 17
    xor-int/2addr v1, v3

    .line 18
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    .line 22
    new-array p0, v0, [Ljava/lang/Object;

    .line 25
    const/16 v0, 0x15

    .line 27
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 29
    return v3

    .line 32
    :cond_0
    return v0
    .line 33
.end method
