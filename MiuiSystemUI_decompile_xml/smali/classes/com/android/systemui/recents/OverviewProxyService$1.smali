.class public final Lcom/android/systemui/recents/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final sendEvent(I)V
    .locals 14

    .line 1
    const/4 v6, 0x4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    move-result-wide v3

    .line 6
    new-instance v13, Landroid/view/KeyEvent;

    .line 7
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, -0x1

    .line 11
    const/4 v10, 0x0

    .line 12
    const/16 v11, 0x48

    .line 13
    const/16 v12, 0x101

    .line 15
    move-object v0, v13

    .line 17
    move-wide v1, v3

    .line 18
    move v5, p1

    .line 19
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 31
    move-result p0

    .line 34
    invoke-virtual {v13, p0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 35
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 38
    move-result-object p0

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 43
    return-void
    .line 46
.end method

.method public final verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 10
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 12
    if-eq v0, p0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "Launcher called sysui with invalid user: "

    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", reason: "

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    const-string p1, "OverviewProxyService"

    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x1

    .line 45
    :goto_0
    if-nez p0, :cond_1

    .line 46
    return-void

    .line 48
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    move-result-wide p0

    .line 52
    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return-void

    .line 59
    :catchall_0
    move-exception p2

    .line 60
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p2
    .line 64
.end method

.method public final verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 7
    return-void
    .line 10
.end method
