.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/touch/TouchInsetManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/touch/TouchInsetManager;

    .line 5
    iput p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/touch/TouchInsetManager;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda3;

    .line 7
    iget v2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    iget p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    invoke-direct {v1, v2, p0, p1, v0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda3;-><init>(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/touch/TouchInsetManager;)V

    .line 13
    iget-object p0, v0, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    const-string p0, "DreamOverlayTouchMonitor::checkWithinTouchRegion"

    .line 21
    return-object p0
    .line 23
.end method
