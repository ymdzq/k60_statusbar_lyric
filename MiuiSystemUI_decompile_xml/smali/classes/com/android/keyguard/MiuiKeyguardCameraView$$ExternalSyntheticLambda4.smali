.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 16
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreView:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    move-result v1

    .line 28
    if-lez v1, :cond_0

    .line 29
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreView:Landroid/widget/ImageView;

    .line 31
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 43
    move-result p0

    .line 46
    int-to-float p0, p0

    .line 47
    div-float/2addr v1, p0

    .line 48
    iput v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeightWidthRatio:F

    .line 49
    :cond_0
    return-void

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 52
    check-cast v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;

    .line 54
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 56
    check-cast p0, Landroid/content/ComponentName;

    .line 58
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;->this$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 60
    iget-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsCameraShowing:Z

    .line 62
    if-eqz v1, :cond_3

    .line 64
    if-eqz p0, :cond_2

    .line 66
    const-string v1, "com.android.camera"

    .line 68
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    const/4 p0, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 83
    :goto_2
    if-eqz p0, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->clearCameraShow()V

    .line 86
    :cond_3
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
