.class public final Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

.field public final synthetic val$changed:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;->this$1:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;->val$changed:[Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;->this$1:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2$1;->val$changed:[Ljava/lang/String;

    .line 6
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCustomCarrier:[Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 18
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 19
    if-ltz v2, :cond_1

    .line 21
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$Callback;

    .line 35
    if-eqz v3, :cond_0

    .line 37
    check-cast v3, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 39
    array-length v4, p0

    .line 41
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 45
    check-cast v4, [Ljava/lang/String;

    .line 46
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCustomCarrier:[Ljava/lang/String;

    .line 48
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 50
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
    .line 60
.end method
