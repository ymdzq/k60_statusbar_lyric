.class public final Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

.field public final synthetic val$back:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    const p1, 0x7f0101a7    # @anim/activity_close_enter 'res/anim/activity_close_enter.xml'

    .line 14
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 17
    move-result-object p1

    .line 20
    const v0, 0x7f0101a8    # @anim/activity_close_exit 'res/anim/activity_close_exit.xml'

    .line 21
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;

    .line 28
    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    .line 36
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 47
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 49
    const/4 v2, 0x1

    .line 51
    if-ne v1, v2, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x2

    .line 58
    if-ne v1, v0, :cond_2

    .line 59
    invoke-virtual {p1, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 61
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 64
    const/4 p1, 0x3

    .line 66
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 67
    :goto_1
    return-void
    .line 69
.end method
