.class public final synthetic Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 22
    move-result p1

    .line 25
    const/16 v0, 0x8

    .line 26
    if-eq p1, v0, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 32
    move-result p1

    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 38
    if-nez p1, :cond_1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 47
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 48
    check-cast p0, Ljava/lang/Runnable;

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    sget p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->$r8$clinit:I

    .line 54
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 56
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
