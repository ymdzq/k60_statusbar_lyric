.class Lcom/android/settings/haptic/widget/HapticGridView$5;
.super Ljava/lang/Object;
.source "HapticGridView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView;->playVideo(Landroid/view/View;ILandroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/widget/HapticGridView;

.field final synthetic val$imgHolder:Landroid/view/View;

.field final synthetic val$index:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iput p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$index:I

    iput-object p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$imgHolder:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 388
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fputmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/animation/AnimatorSet;)V

    .line 389
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/widget/HapticGridView$5$1;-><init>(Lcom/android/settings/haptic/widget/HapticGridView$5;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$view:Landroid/view/View;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 409
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$view:Landroid/view/View;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string/jumbo v2, "scaleY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 411
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 413
    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f8b851f    # 1.09f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8b851f    # 1.09f
        0x3f800000    # 1.0f
    .end array-data
.end method
