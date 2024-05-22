.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setOpening(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getQs()Lcom/android/systemui/qs/MiuiQS;

    .line 16
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    check-cast p1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSFragment;->notifyCustomizeChanged()V

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 33
    :cond_1
    return-void

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 37
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 39
    if-nez v1, :cond_2

    .line 41
    const/16 v1, 0x8

    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 50
    if-eqz p0, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 54
    :cond_3
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 9
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setCustomizing(Z)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setOpening(Z)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 30
    :cond_1
    return-void

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 34
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 36
    if-nez v1, :cond_2

    .line 38
    const/16 v1, 0x8

    .line 40
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer$expandAnimationListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 51
    :cond_3
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
