.class public Lcom/miui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/SingleRootListener;->setRoot(Lcom/miui/maml/ScreenElementRoot;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/miui/maml/SingleRootListener;->setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/RendererController$IRenderable;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public finish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 4
    return-void
    .line 7
.end method

.method public forceUpdate()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/RendererController$IRenderable;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    instance-of v0, p0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    check-cast p0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 20
    invoke-interface {p0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    .line 4
    return-void
    .line 7
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    return-void
    .line 10
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    return-void
    .line 10
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->pause()V

    .line 4
    return-void
    .line 7
.end method

.method public resume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->resume()V

    .line 4
    return-void
    .line 7
.end method

.method public setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
    .line 13
.end method

.method public setRoot(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 7
    const-string p1, "root is null"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
    .line 14
.end method

.method public tick(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    .line 4
    return-void
    .line 7
.end method

.method public triggerUpdate()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/RendererController$IRenderable;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    instance-of v0, p0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    check-cast p0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 20
    invoke-interface {p0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    .line 22
    :cond_1
    return-void
    .line 25
.end method
