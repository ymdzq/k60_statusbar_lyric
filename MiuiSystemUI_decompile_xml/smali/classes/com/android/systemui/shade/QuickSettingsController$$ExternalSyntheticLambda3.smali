.class public final synthetic Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    .line 17
    :cond_0
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController;

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 33
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0, v3, v4, v2, v4}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 50
    const/16 v5, 0xc3

    .line 52
    invoke-virtual {v0, v5, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 54
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 57
    :cond_3
    :goto_0
    return-void

    .line 60
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 61
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController$NsslOverscrollTopChangedListener;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$NsslOverscrollTopChangedListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 67
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 69
    if-eqz v0, :cond_4

    .line 71
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 76
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
