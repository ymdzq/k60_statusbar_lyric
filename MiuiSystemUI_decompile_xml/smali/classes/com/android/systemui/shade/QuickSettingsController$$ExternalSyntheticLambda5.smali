.class public final synthetic Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    const-wide/16 v4, 0x168

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController;

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansionEnabledAmbient()V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 26
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController;

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 44
    iput-wide v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 46
    iput-wide v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->setClippingBounds()V

    .line 50
    :cond_1
    return-void

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 54
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 62
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 74
    iput-wide v4, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 76
    iput-wide v2, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 78
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextTopPaddingChange:Z

    .line 84
    :cond_2
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method
