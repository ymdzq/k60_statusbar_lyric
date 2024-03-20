.class Lcom/android/settings/haptic/widget/HapticGridView$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HapticGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView$5;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView$5;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 7

    .line 392
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget-object p1, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget p2, p2, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$index:I

    aget-object p1, p1, p2

    sget p2, Lcom/android/settings/R$id;->vv_item:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget-object p1, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$imgHolder:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget-object p1, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 395
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget-object p1, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 396
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$5$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$5;

    iget v0, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->val$index:I

    if-eq p2, v0, :cond_1

    .line 397
    iget-object v1, p1, Lcom/android/settings/haptic/widget/HapticGridView$5;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object p1

    aget-object v2, p1, p2

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    invoke-static/range {v1 .. v6}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mstartAlphaAnimation(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;FFJ)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
