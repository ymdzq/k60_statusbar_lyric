.class public final Lcom/miui/systemui/controller/GestureObserver$5$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/miui/systemui/controller/GestureObserver$5;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/GestureObserver$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$5$1;->this$1:Lcom/miui/systemui/controller/GestureObserver$5;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver$5$1;->this$1:Lcom/miui/systemui/controller/GestureObserver$5;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver$5;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 4
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 12
    if-ltz v0, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method
