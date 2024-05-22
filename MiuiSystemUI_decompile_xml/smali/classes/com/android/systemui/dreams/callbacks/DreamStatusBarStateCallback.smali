.class public final Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/condition/Monitor$Callback;


# instance fields
.field public final mStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;->mStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "DreamStatusBarCallback"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const-string v0, "DreamStatusBarCallback"

    .line 11
    const-string v2, "onConditionChanged:"

    .line 13
    invoke-static {v2, p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;->mStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 18
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 20
    const-string v0, "SbStateController"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string v0, "SbStateController"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v2, "setIsDreaming:"

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDreaming:Z

    .line 54
    if-ne v0, p1, :cond_2

    .line 56
    goto :goto_2

    .line 58
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDreaming:Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 61
    monitor-enter v0

    .line 63
    :try_start_0
    const-string v1, "StatusBarStateControllerImpl#setIsDreaming"

    .line 64
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 71
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p0

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    .line 90
    iget-object v2, v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 92
    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDreamingChanged(Z)V

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 98
    monitor-exit v0

    .line 101
    :goto_2
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
    .line 105
.end method
