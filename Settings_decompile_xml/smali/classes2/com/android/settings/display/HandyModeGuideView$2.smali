.class Lcom/android/settings/display/HandyModeGuideView$2;
.super Ljava/lang/Object;
.source "HandyModeGuideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/HandyModeGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings/display/HandyModeGuideView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView$2;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView$2;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    iget p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
