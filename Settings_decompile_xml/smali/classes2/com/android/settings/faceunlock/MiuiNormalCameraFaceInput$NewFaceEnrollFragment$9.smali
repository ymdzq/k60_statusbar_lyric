.class Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$9;
.super Ljava/lang/Object;
.source "MiuiNormalCameraFaceInput.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->enterFaceSuggestionStepAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$9;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 465
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 466
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$9;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmFaceDetectView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Lcom/android/settings/faceunlock/FaceDetectView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
