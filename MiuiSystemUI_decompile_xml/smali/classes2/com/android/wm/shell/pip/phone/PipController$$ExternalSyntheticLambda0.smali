.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 13
    check-cast p0, Ljava/util/function/Consumer;

    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 17
    iput-object p0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 23
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 25
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v0

    .line 32
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 37
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 41
    check-cast p0, Ljava/util/function/Consumer;

    .line 43
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 45
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 47
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnPipExclusionBoundsChangeCallbacks:Ljava/util/List;

    .line 49
    check-cast v1, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/function/Consumer;

    .line 70
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    return-void

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 81
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController;

    .line 83
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 85
    check-cast p0, Lcom/android/wm/shell/common/DisplayLayout;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 92
    const/4 v7, 0x1

    .line 94
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 95
    const/4 v8, 0x0

    .line 97
    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 100
    move-result-object v1

    .line 103
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 104
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 106
    if-eq v1, v3, :cond_2

    .line 108
    move v3, v7

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v3, v8

    .line 112
    :goto_1
    iget-object v1, v2, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 113
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 115
    if-eqz v3, :cond_3

    .line 118
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 120
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 122
    goto :goto_2

    .line 125
    :cond_3
    const/4 p0, 0x0

    .line 126
    :goto_2
    const/4 v2, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    move-object v1, v0

    .line 130
    move-object v6, p0

    .line 131
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    .line 132
    if-eqz p0, :cond_4

    .line 135
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 137
    invoke-virtual {v0, v7, v8, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(IZLandroid/window/WindowContainerTransaction;)V

    .line 139
    :cond_4
    return-void

    .line 142
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 143
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 145
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 147
    check-cast p0, Ljava/util/function/Consumer;

    .line 149
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 151
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 153
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnPipExclusionBoundsChangeCallbacks:Ljava/util/List;

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 164
.end method
