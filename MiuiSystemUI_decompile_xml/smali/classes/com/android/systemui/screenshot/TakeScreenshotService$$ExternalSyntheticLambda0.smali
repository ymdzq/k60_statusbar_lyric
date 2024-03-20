.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

.field public final synthetic f$1:Lcom/android/internal/util/ScreenshotRequest;

.field public final synthetic f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Lcom/android/internal/util/ScreenshotRequest;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/ScreenshotRequest;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/ScreenshotRequest;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 6
    sget v2, Lcom/android/systemui/screenshot/TakeScreenshotService;->$r8$clinit:I

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v2, "Skipping screenshot because an IT admin has disabled screenshots on the device"

    .line 13
    const-string v3, "Screenshot"

    .line 15
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    .line 20
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 23
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 25
    move-result-object v1

    .line 28
    new-instance v2, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda3;

    .line 29
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    .line 31
    const-string v4, "SystemUi.SCREENSHOT_BLOCKED_BY_ADMIN"

    .line 34
    invoke-virtual {v1, v4, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v4, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda4;

    .line 42
    invoke-direct {v4, v0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 50
    const-string v0, "ignored remote exception"

    .line 52
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 54
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x1

    .line 57
    :try_start_0
    invoke-static {v1, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 58
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_0
    const/4 v2, 0x2

    .line 70
    :try_start_1
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_1

    .line 78
    :catch_1
    move-exception p0

    .line 79
    invoke-static {v3, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_1
    return-void
    .line 83
.end method
