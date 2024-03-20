.class Lcom/android/settings/haptic/widget/HapticGridView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HapticGridView.java"


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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iput p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fputmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->val$index:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/settings/R$id;->img_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->val$index:I

    aget-object v0, v0, v2

    sget v2, Lcom/android/settings/R$id;->vv_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 309
    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->val$index:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/settings/haptic/widget/HapticGridView$3;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v3}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v0

    aget-object v4, v0, v1

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x12c

    invoke-static/range {v3 .. v8}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mstartAlphaAnimation(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;FFJ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
