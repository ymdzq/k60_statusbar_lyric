.class public final Lcom/android/systemui/statusbar/views/ClickableToast$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/views/ClickableToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/views/ClickableToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->context:Landroid/content/Context;

    .line 11
    instance-of v2, v0, Landroid/app/Activity;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    check-cast v0, Landroid/app/Activity;

    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 25
    iget-object v2, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 31
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 36
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 38
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 42
    return-void

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    move-result-object v0

    .line 54
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 55
    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 61
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    move-result-object v1

    .line 68
    :cond_2
    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 78
    iget-object v1, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mWindowManager:Landroid/view/WindowManager;

    .line 80
    if-eqz v1, :cond_4

    .line 82
    iget-object v2, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 84
    iget-object v0, v0, Lcom/android/systemui/statusbar/views/ClickableToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 86
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/ClickableToast$2;->this$0:Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mCancelRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 93
    if-eqz p0, :cond_5

    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/views/ClickableToast;->sHandler:Landroid/os/Handler;

    .line 97
    const-wide/16 v1, 0xfa0

    .line 99
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_5
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 106
.end method
