.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $runnable:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;->$runnable:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 8
    const-string p1, "NotificationPanelView"

    .line 10
    const-string v0, "AlphaAndScaleAnim onAnimationEnd"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;->$runnable:Ljava/lang/Object;

    .line 17
    check-cast p0, Ljava/lang/Runnable;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 23
    :cond_0
    return-void

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAlphaAndScaleAnim$1$2;->$runnable:Ljava/lang/Object;

    .line 27
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 29
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setViewRadius(F)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
