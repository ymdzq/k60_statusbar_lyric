.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.implements Landroid/os/IInterface;


# instance fields
.field public mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.draganddrop.IDragAndDrop"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 3
    return-void
    .line 5
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->onTransact$com$android$wm$shell$draganddrop$IDragAndDrop$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$wm$shell$draganddrop$IDragAndDrop$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.draganddrop.IDragAndDrop"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_2

    .line 18
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    new-array p1, v1, [Z

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 30
    new-instance p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl$$ExternalSyntheticLambda0;

    .line 32
    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl$$ExternalSyntheticLambda0;-><init>([Z)V

    .line 34
    const-string p4, "isReadyToHandleDrag"

    .line 37
    invoke-static {p0, p4, p2, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 39
    const/4 p0, 0x0

    .line 42
    aget-boolean p0, p1, p0

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    return v1

    .line 51
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v1
    .line 55
.end method
