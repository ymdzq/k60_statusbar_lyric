.class public final synthetic Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$1:I

    .line 13
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 15
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 19
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 24
    :cond_0
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$1:I

    .line 32
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 34
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 36
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 41
    return-void

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 45
    check-cast v0, Landroid/view/View;

    .line 47
    iget p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;->f$1:I

    .line 49
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 58
.end method
