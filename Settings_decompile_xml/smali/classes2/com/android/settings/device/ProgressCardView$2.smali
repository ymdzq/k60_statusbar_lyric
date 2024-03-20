.class Lcom/android/settings/device/ProgressCardView$2;
.super Ljava/lang/Object;
.source "ProgressCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/ProgressCardView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/ProgressCardView;


# direct methods
.method constructor <init>(Lcom/android/settings/device/ProgressCardView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fputmWaveOffset(Lcom/android/settings/device/ProgressCardView;I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {p1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmFinalWaterHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v0}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmViewHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {p1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmWaveHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmViewHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v2}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmCurrentWaterHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmViewHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v2}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmFinalWaterHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmWaveHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v2}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmWaveOffset(Lcom/android/settings/device/ProgressCardView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {v2}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmWaveWidth(Lcom/android/settings/device/ProgressCardView;)I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fputmCurrentWaveHeight(Lcom/android/settings/device/ProgressCardView;I)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-static {p1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fgetmCurrentWaveHeight(Lcom/android/settings/device/ProgressCardView;)I

    move-result p1

    if-gez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fputmCurrentWaveHeight(Lcom/android/settings/device/ProgressCardView;I)V

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/android/settings/device/ProgressCardView$2;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
