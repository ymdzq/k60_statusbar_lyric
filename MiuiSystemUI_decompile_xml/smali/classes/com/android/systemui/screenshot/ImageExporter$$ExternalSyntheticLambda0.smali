.class public final synthetic Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageExporter$Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda3;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/screenshot/ImageExporter$Task;

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda3;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/android/systemui/screenshot/ImageExporter$Task;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    .line 9
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-object v1
    .line 14
.end method
