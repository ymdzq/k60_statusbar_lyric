.class public final Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;)V

    .line 4
    return-object v0
    .line 7
.end method
