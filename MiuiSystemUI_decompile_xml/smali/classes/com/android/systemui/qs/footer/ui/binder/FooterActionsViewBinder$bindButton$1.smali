.class public final Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $buttonView:Landroid/view/View;

.field public final synthetic $model:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$r8$classId:I

    .line 2
    iput-object p3, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$model:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$buttonView:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$model:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$buttonView:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    .line 18
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$model:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$buttonView:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    .line 35
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$model:Ljava/lang/Object;

    .line 42
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;

    .line 44
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;->$buttonView:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    .line 52
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
