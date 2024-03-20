.class Lcom/android/settings/haptic/widget/HapticGridView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HapticGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView$2;->playVideoAnimator(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/haptic/widget/HapticGridView$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView$2;Landroid/view/View;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$2;

    iput-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 6

    .line 259
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$2;

    iget-object v0, p1, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2$1;->val$view:Landroid/view/View;

    iget v2, p1, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    iget-object v3, p1, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$imgHolder:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mplayVideo(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;ILandroid/view/View;ZI)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
