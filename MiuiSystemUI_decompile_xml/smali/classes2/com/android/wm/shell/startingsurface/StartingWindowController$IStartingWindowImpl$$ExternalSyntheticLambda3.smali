.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 2
    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->setStartingWindowListener(Lcom/android/internal/util/function/TriConsumer;)V

    .line 5
    return-void
    .line 8
.end method
