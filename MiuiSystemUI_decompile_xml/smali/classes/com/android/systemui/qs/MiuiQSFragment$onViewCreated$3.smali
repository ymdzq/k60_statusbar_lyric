.class public final Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;->$r8$classId:I

    .line 2
    const/4 p2, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    sub-int/2addr p7, p9

    .line 9
    sub-int/2addr p3, p5

    .line 10
    if-eq p7, p3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    const-class p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 23
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 25
    if-nez p1, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 29
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    .line 31
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/MiuiQSFragment;->setQsExpansion(FF)V

    .line 33
    :cond_1
    return-void

    .line 36
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 39
    if-eqz p0, :cond_2

    .line 41
    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNeedsAnimatorUpdate:Z

    .line 43
    :cond_2
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
