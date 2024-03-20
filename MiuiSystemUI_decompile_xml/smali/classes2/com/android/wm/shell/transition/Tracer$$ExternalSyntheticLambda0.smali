.class public final synthetic Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Tracer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Tracer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Tracer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/Tracer;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    .line 4
    check-cast p0, Ljava/util/HashMap;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Runnable;

    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    return-void
    .line 26
.end method
