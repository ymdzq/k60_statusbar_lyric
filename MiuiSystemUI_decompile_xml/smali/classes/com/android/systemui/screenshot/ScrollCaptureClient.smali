.class public final Lcom/android/systemui/screenshot/ScrollCaptureClient;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final MATCH_ANY_TASK:I = -0x1


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mHostWindowToken:Landroid/os/IBinder;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 5
    move-result-object p3

    .line 8
    const-string v0, "context must be associated with a Display!"

    .line 9
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 16
    return-void
    .line 18
.end method
