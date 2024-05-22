.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    check-cast p0, Landroid/os/Bundle;

    .line 4
    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 6
    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    .line 8
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 10
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 12
    move-result-object v0

    .line 15
    :try_start_0
    const-string v1, "com.android.wm.shell.bubbles.IBubblesListener"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    iget-object p0, p1, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    const/4 p1, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0
    .line 40
.end method

.method public final onBubbleExpandChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
