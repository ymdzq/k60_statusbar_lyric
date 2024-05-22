.class public final synthetic Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 2
    const/4 v0, -0x2

    .line 4
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 9
    invoke-virtual {v1, p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    .line 14
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 26
    invoke-interface {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
