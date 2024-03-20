.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 2
    sget v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 9
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda5;

    .line 11
    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda5;-><init>(Landroid/os/Messenger;)V

    .line 13
    new-instance v2, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 16
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;-><init>(Landroid/os/Messenger;)V

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/android/internal/util/ScreenshotRequest;

    .line 23
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->handleRequest(Lcom/android/internal/util/ScreenshotRequest;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    .line 25
    const/4 p0, 0x1

    .line 28
    return p0
    .line 29
.end method
