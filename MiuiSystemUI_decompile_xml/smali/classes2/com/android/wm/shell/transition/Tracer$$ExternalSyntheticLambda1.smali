.class public final synthetic Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Tracer;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Tracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Tracer;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/Tracer;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    .line 6
    check-cast v0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
    .line 29
.end method
