.class public final Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

.field public final synthetic val$finalCarrier:Ljava/lang/String;

.field public final synthetic val$slot:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierObserver$1;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->this$1:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->val$slot:I

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->val$finalCarrier:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->this$1:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 4
    iget v1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->val$slot:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;->val$finalCarrier:Ljava/lang/String;

    .line 8
    if-ltz v1, :cond_1

    .line 10
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCarriers:[Ljava/lang/String;

    .line 12
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    aput-object p0, v2, v1

    .line 17
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 24
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    if-ltz v0, :cond_2

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 39
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->onCarrierChanged([Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :cond_2
    return-void
    .line 50
.end method
