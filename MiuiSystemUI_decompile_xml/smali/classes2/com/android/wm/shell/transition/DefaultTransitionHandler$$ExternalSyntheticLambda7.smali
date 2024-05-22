.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/WindowThumbnail;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v4, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 20
    if-nez v4, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 25
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 28
    iget-object v4, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 31
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 33
    iput-object v1, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 36
    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 38
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 40
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    return-void

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget-object v4, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 58
    if-nez v4, :cond_1

    .line 60
    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 63
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 66
    iget-object v4, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 69
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 71
    iput-object v1, v2, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 74
    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 78
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 81
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 86
.end method
