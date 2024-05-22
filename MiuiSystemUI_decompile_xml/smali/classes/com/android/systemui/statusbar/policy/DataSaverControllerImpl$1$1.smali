.class public final Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

.field public final synthetic val$isDataSaving:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 8
    monitor-enter v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .line 26
    invoke-interface {v3, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
    .line 38
.end method
