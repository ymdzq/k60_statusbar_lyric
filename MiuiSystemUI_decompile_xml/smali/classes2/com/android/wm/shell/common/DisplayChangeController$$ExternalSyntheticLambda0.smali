.class public final synthetic Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayChangeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mControllerImpl:Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-void

    .line 14
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 15
    const-string v0, "Unable to register rotation controller"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
    .line 22
.end method
