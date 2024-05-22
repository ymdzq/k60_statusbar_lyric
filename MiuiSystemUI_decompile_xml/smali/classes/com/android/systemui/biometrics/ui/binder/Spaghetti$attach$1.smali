.class public final Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic $iconController:Lcom/android/systemui/biometrics/AuthIconController;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->$iconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 10
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 13
    return-void
    .line 15
.end method

.method public final onDestroy$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->$iconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 10
    return-void
    .line 12
.end method
