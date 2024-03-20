.class public final Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.implements Landroid/os/IInterface;


# instance fields
.field public final mBubbleListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "com.android.wm.shell.bubbles.IBubbles"

    .line 7
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 12
    const/4 v0, 0x3

    .line 14
    invoke-direct {p1, v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$7;-><init>(ILjava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mBubbleListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 18
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 20
    new-instance p1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 22
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;

    .line 24
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    .line 27
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda1;

    .line 30
    invoke-direct {v1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 32
    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 35
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 38
    return-void
    .line 40
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
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 3
    return-void
    .line 5
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->onTransact$com$android$wm$shell$bubbles$IBubbles$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$wm$shell$bubbles$IBubbles$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.bubbles.IBubbles"

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
    if-eq p1, v2, :cond_5

    .line 18
    const-string v0, "com.android.wm.shell.bubbles.IBubblesListener"

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 33
    goto/16 :goto_2

    .line 36
    :pswitch_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 38
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 40
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda0;

    .line 42
    const/4 p3, 0x0

    .line 44
    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;I)V

    .line 45
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    goto/16 :goto_2

    .line 53
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 61
    goto/16 :goto_2

    .line 64
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 70
    move-result p3

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 77
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 79
    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;

    .line 81
    invoke-direct {p4, p0, p3, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;ZLjava/lang/String;)V

    .line 83
    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 86
    invoke-virtual {p2, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    goto :goto_2

    .line 91
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 92
    move-result-object p1

    .line 95
    if-nez p1, :cond_1

    .line 96
    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 99
    move-result-object p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    instance-of p3, p1, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 105
    if-eqz p3, :cond_2

    .line 107
    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 109
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 114
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 116
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda0;

    .line 118
    invoke-direct {p2, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;I)V

    .line 120
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 123
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    goto :goto_2

    .line 128
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 129
    move-result-object p1

    .line 132
    if-nez p1, :cond_3

    .line 133
    const/4 p1, 0x0

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 137
    move-result-object p3

    .line 140
    if-eqz p3, :cond_4

    .line 141
    instance-of p4, p3, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 143
    if-eqz p4, :cond_4

    .line 145
    move-object p1, p3

    .line 147
    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 148
    goto :goto_1

    .line 150
    :cond_4
    new-instance p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    .line 151
    invoke-direct {p3, p1}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 153
    move-object p1, p3

    .line 156
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 160
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 162
    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;

    .line 164
    const/4 p4, 0x6

    .line 166
    invoke-direct {p3, p4, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 170
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    :goto_2
    return v1

    .line 175
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 179
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 180
.end method
