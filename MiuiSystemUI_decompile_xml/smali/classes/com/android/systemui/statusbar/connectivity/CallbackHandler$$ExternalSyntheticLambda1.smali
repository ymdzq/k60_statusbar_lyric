.class public final synthetic Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;->f$3:Z

    .line 8
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoDefaultNetwork:Z

    .line 10
    if-ne v1, v3, :cond_0

    .line 12
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoValidatedNetwork:Z

    .line 14
    if-ne v2, v3, :cond_0

    .line 16
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoNetworksAvailable:Z

    .line 18
    if-ne p0, v3, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoDefaultNetwork:Z

    .line 23
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoValidatedNetwork:Z

    .line 25
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mNoNetworksAvailable:Z

    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 45
    invoke-interface {v3, v1, v2, p0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setConnectivityStatus(ZZZ)V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    return-void
    .line 51
.end method
