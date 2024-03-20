.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    iput-boolean p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$1:Z

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
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 10
    iget-boolean p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$1:Z

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 14
    iget-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mDarkStyle:Z

    .line 16
    if-eq v1, p0, :cond_1

    .line 18
    iput-boolean p0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mDarkStyle:Z

    .line 20
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 22
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    const p0, 0x7f08122e    # @drawable/keyguard_bottom_camera_img_dark 'res/drawable/keyguard_bottom_camera_img_dark.xml'

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    const p0, 0x7f08122d    # @drawable/keyguard_bottom_camera_img 'res/drawable/keyguard_bottom_camera_img.xml'

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_1
    return-void

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 43
    check-cast v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 45
    iget-boolean p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;->f$1:Z

    .line 47
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 49
    invoke-interface {v0, p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;->onVisibilityChanged(Z)V

    .line 51
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
