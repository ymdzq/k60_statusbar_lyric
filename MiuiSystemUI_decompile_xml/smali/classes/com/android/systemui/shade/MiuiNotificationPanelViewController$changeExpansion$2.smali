.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $targetHeight:F

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    iput p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$targetHeight:F

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 11
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$targetHeight:F

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setAnimatingHeight(F)V

    .line 15
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 8
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$targetHeight:F

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setAnimatingHeight(F)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 18
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$2;->$targetHeight:F

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
