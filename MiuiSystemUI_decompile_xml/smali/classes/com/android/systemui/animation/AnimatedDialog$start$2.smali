.class public final Lcom/android/systemui/animation/AnimatedDialog$start$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $dialogContentWithBackground:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Ljava/lang/Object;

    .line 15
    check-cast p0, Lcom/android/systemui/animation/AnimatedDialog;

    .line 17
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isOriginalDialogViewLaidOut:Z

    .line 20
    invoke-static {p0}, Lcom/android/systemui/animation/AnimatedDialog;->access$maybeStartLaunchAnimation(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 26
    check-cast p1, Landroid/view/Window;

    .line 28
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 30
    move-result-object p1

    .line 33
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 34
    const/4 p2, -0x1

    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 39
    check-cast p1, Landroid/view/Window;

    .line 41
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 43
    move-result-object p1

    .line 46
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    if-eq p1, p2, :cond_1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Ljava/lang/Object;

    .line 51
    check-cast p1, Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object p1

    .line 58
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 59
    check-cast p3, Landroid/view/Window;

    .line 61
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 63
    move-result-object p3

    .line 66
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 71
    check-cast p3, Landroid/view/Window;

    .line 73
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 75
    move-result-object p3

    .line 78
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 79
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Ljava/lang/Object;

    .line 83
    check-cast p3, Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 85
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Ljava/lang/Object;

    .line 90
    check-cast p0, Landroid/view/Window;

    .line 92
    invoke-virtual {p0, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 94
    :cond_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 98
.end method
