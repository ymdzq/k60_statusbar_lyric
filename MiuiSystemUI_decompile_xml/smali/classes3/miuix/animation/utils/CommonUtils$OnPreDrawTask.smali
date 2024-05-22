.class Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field mTask:Ljava/lang/Runnable;

.field mView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 27
    const/4 p0, 0x1

    .line 29
    return p0
    .line 30
.end method

.method public start(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    return-void
    .line 16
.end method
