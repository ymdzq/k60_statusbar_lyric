.class final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $showDismissView:Z

.field final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->$showDismissView:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->stopAnimator()V

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->$showDismissView:Z

    .line 13
    if-eqz p1, :cond_2

    .line 15
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 19
    if-nez p0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    goto :goto_0

    .line 28
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$updateDismissView$listener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 31
    if-nez p0, :cond_3

    .line 33
    goto :goto_0

    .line 35
    :cond_3
    const/16 p1, 0x8

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    return-object p0
    .line 43
.end method
