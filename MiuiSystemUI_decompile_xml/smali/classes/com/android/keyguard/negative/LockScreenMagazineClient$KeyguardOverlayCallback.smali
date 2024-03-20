.class public final Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IInterface;


# instance fields
.field public mClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

.field public final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.keyguard.negative.IKeyguardOverlayCallback"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 15
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    iput-object v0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mUIHandler:Landroid/os/Handler;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 2
    const-string v1, "LockScreenMagazineClient"

    .line 4
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    const-string p0, "mClient == null"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return v2

    .line 14
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 15
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_2

    .line 18
    if-eq v3, v2, :cond_1

    .line 20
    return v4

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "MSG_STATUS_CHANGED"

    .line 25
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 30
    invoke-static {v0, v3, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 35
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->notifyStatusChanged(I)V

    .line 39
    return v2

    .line 42
    :cond_2
    iget v0, v0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mServiceStatus:I

    .line 43
    and-int/2addr v0, v2

    .line 45
    if-eqz v0, :cond_6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "MSG_OVERLAY_SCROLL_CHANGED"

    .line 50
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    check-cast v3, Ljava/lang/Float;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mKeyguardClientCallback:Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    check-cast p1, Ljava/lang/Float;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 81
    move-result p1

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 85
    iget-object v0, v0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 87
    const/4 v1, 0x0

    .line 89
    cmpl-float v3, p1, v1

    .line 90
    if-nez v3, :cond_3

    .line 92
    move v4, v2

    .line 94
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 101
    iget-object v0, v0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mFaceUnlockManager:Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 103
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 105
    iput p1, v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mScrollProgress:F

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 109
    iget v0, v0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 111
    cmpl-float v0, v0, p1

    .line 113
    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 117
    iput p1, v0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 119
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 121
    iget p1, p1, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 123
    cmpl-float p1, p1, v1

    .line 125
    if-eqz p1, :cond_4

    .line 127
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 129
    iget p1, p1, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    cmpl-float p1, p1, v0

    .line 135
    if-nez p1, :cond_5

    .line 137
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    const-string v0, "onOverlayScrollChanged mScrollProgress = "

    .line 141
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 146
    iget v0, v0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 156
    const-string v0, "KeyguardHorizontalMoveLeftViewContainer"

    .line 157
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 162
    iget-object v0, p1, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 164
    iget p1, p1, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 168
    iget-object v1, v1, Lcom/android/keyguard/BaseKeyguardMoveController;->mScreenPoint:Landroid/graphics/Point;

    .line 170
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 172
    int-to-float v1, v1

    .line 174
    mul-float/2addr p1, v1

    .line 175
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 176
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 178
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 180
    invoke-virtual {v0, p1, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 185
    iget-object p1, p1, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 187
    const/4 v0, 0x2

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    .line 190
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 193
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NEGATIVE_SCROLL_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestAuthInternal(Lcom/android/keyguard/FaceAuthUiEvent;)Z

    .line 199
    :cond_6
    return v2
    .line 202
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->onTransact$com$android$keyguard$negative$IKeyguardOverlayCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$keyguard$negative$IKeyguardOverlayCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.keyguard.negative.IKeyguardOverlayCallback"

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
    if-eq p1, v2, :cond_3

    .line 18
    const/4 v0, 0x0

    .line 20
    if-eq p1, v1, :cond_2

    .line 21
    const/4 v2, 0x2

    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 31
    move-result p1

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 35
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mUIHandler:Landroid/os/Handler;

    .line 38
    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 51
    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 55
    iget-object p2, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mUIHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mUIHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    :goto_0
    return v1

    .line 79
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1
    .line 83
.end method
