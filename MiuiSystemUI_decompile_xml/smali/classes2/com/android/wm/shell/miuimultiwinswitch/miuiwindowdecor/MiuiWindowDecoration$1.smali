.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->handleCaptionClicked()V

    .line 8
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
