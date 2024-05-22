.class public final Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 9
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget-object p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    .line 16
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 20
    const-wide/16 v1, 0x1f4

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
    .line 28
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
