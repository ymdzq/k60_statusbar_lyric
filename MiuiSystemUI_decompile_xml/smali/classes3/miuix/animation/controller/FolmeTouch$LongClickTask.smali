.class final Lmiuix/animation/controller/FolmeTouch$LongClickTask;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mTouchRef:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/controller/FolmeTouch;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 12
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lmiuix/animation/controller/FolmeTouch;->access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;

    .line 30
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 36
    invoke-static {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public start(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 12
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 27
    move-result p1

    .line 30
    int-to-long v1, p1

    .line 31
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public stop(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object p1

    .line 7
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lmiuix/animation/ViewTarget;

    .line 12
    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    :cond_0
    return-void
    .line 23
.end method
