.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fgetmFullscreenTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$mcreateBackgroundBlur(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 11
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fgetmSplitLeftTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$mcreateBackgroundBlur(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 20
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fgetmSplitRightTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$mcreateBackgroundBlur(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/View;)V

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 29
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fgetmFreeformTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$mcreateBackgroundBlur(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/View;)V

    .line 35
    return-void
    .line 38
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
