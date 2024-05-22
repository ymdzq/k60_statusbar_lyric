.class public final Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;
.super Landroid/view/SurfaceView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 5
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    return-void
    .line 14
.end method
