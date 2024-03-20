.class public final Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

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
    iget v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    .line 10
    check-cast v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeInDuration:I

    .line 16
    int-to-long v2, v0

    .line 18
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(JLandroid/view/View;)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHidden:Z

    .line 25
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 30
    const/16 v1, 0x8

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    .line 43
    check-cast v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;

    .line 45
    iget-object v1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    .line 49
    int-to-long v2, v0

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JLjava/lang/Runnable;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 56
    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHidden:Z

    .line 59
    iget-object v1, v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHiddenCallback:Ljava/lang/Runnable;

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;->this$0:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mHiddenCallback:Ljava/lang/Runnable;

    .line 70
    :cond_1
    :goto_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
