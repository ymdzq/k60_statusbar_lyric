.class public final Lcom/android/systemui/shared/rotation/RotationButtonController$2;
.super Landroid/view/IRotationWatcher$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 2
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$2$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method
