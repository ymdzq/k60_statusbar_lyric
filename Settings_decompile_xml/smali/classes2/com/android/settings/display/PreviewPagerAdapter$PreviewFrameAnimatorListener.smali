.class Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/display/PreviewPagerAdapter;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PreviewPagerAdapter;Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-static {p1}, Lcom/android/settings/display/PreviewPagerAdapter;->-$$Nest$fgetmAnimationCounter(Lcom/android/settings/display/PreviewPagerAdapter;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/android/settings/display/PreviewPagerAdapter;->-$$Nest$fputmAnimationCounter(Lcom/android/settings/display/PreviewPagerAdapter;I)V

    .line 215
    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-static {p0}, Lcom/android/settings/display/PreviewPagerAdapter;->-$$Nest$mrunAnimationEndAction(Lcom/android/settings/display/PreviewPagerAdapter;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/display/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-static {p0}, Lcom/android/settings/display/PreviewPagerAdapter;->-$$Nest$fgetmAnimationCounter(Lcom/android/settings/display/PreviewPagerAdapter;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/display/PreviewPagerAdapter;->-$$Nest$fputmAnimationCounter(Lcom/android/settings/display/PreviewPagerAdapter;I)V

    return-void
.end method
