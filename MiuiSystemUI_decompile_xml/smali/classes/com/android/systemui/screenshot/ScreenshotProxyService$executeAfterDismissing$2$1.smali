.class public final Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/screenshot/IOnDoneCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/IOnDoneCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-interface {p0, v0}, Lcom/android/systemui/screenshot/IOnDoneCallback;->onDone(Z)V

    .line 5
    return-void
    .line 8
.end method
