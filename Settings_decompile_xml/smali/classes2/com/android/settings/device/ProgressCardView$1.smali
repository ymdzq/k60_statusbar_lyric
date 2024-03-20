.class Lcom/android/settings/device/ProgressCardView$1;
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

    .line 117
    iput-object p1, p0, Lcom/android/settings/device/ProgressCardView$1;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView$1;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/device/ProgressCardView;->-$$Nest$fputmCurrentWaterHeight(Lcom/android/settings/device/ProgressCardView;I)V

    .line 121
    iget-object p0, p0, Lcom/android/settings/device/ProgressCardView$1;->this$0:Lcom/android/settings/device/ProgressCardView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
