.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Binder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

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
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 9
    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 13
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v1

    .line 24
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 25
    if-ltz v1, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 33
    invoke-interface {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onHomeRotationEnabled(Z)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 40
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 44
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v0

    .line 53
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 54
    if-ltz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 58
    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 60
    check-cast v1, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 68
    invoke-interface {v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown()V

    .line 70
    goto :goto_1

    .line 73
    :cond_1
    return-void

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 75
    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 77
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 79
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 83
    check-cast v0, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v1

    .line 90
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 91
    if-ltz v1, :cond_2

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 98
    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 99
    invoke-interface {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onTaskbarAutohideSuspend(Z)V

    .line 101
    goto :goto_2

    .line 104
    :cond_2
    return-void

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 106
    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 108
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 110
    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 112
    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    .line 116
    const/4 v3, 0x3

    .line 118
    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Binder;ZI)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void

    .line 125
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Binder;

    .line 126
    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$4;

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    .line 130
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 132
    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 134
    const/high16 v2, 0x2000000

    .line 136
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 138
    iget-object p0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 143
    move-result p0

    .line 146
    invoke-virtual {v1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 147
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 152
.end method
