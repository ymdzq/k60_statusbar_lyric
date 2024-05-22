.class public final synthetic Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V

    .line 23
    check-cast p1, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 28
    return-void
    .line 31
.end method
