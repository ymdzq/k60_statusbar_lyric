.class Lcom/android/settings/display/HandyModeGuideView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HandyModeGuideView.java"


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

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/android/settings/display/HandyModeGuideView$1;->this$0:Lcom/android/settings/display/HandyModeGuideView;

    new-instance v0, Lcom/android/settings/display/HandyModeGuideView$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/HandyModeGuideView$1$1;-><init>(Lcom/android/settings/display/HandyModeGuideView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
