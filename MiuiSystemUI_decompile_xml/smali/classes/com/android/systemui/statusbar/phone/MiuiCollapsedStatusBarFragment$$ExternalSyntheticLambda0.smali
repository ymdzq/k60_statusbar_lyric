.class public final synthetic Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 17
    :cond_0
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 27
    return-void

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 31
    check-cast p0, Landroid/view/View;

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 40
.end method
