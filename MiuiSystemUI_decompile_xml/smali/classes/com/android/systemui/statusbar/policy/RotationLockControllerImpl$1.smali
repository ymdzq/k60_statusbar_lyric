.class public final Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 22
    iget-object v3, v2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 24
    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 26
    move-result v3

    .line 29
    iget-object v2, v2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 30
    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    .line 32
    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(Z)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    return-void
    .line 39
.end method
