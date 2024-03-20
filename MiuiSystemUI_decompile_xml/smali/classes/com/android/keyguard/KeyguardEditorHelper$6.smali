.class public final Lcom/android/keyguard/KeyguardEditorHelper$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$6;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$6;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 6
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    if-ne p1, v0, :cond_2

    .line 10
    invoke-static {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->-$$Nest$misUnlocked(Lcom/android/keyguard/KeyguardEditorHelper;)Z

    .line 12
    move-result p1

    .line 15
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 20
    const-string v1, "onKeyguardBouncerStateChanged ; unlocked="

    .line 22
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->sendKeyguardBouncerStateChangedCommandToEditor(Z)V

    .line 37
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->notificationPanelViewStartAnimation(Z)V

    .line 41
    :cond_2
    return-void
    .line 44
.end method

.method public final onUserSwitching(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$6;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;

    .line 8
    iget-object v0, p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 10
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    const-string v1, "com.miui.keyguardeditor.IMiuiKeyguardEditorService"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {p1, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 29
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 32
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :goto_0
    :try_start_3
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 44
    const-string v1, "onUserSwitching: unregisterCallback error "

    .line 46
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 51
    return-void

    .line 54
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 55
    throw p1
    .line 58
.end method
