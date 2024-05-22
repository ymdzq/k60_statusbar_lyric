.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

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
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->-$$Nest$fputmAttached(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;Z)V

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->-$$Nest$mupdateSamplingListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;)V

    .line 10
    return-void
    .line 13
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->-$$Nest$fputmAttached(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;Z)V

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->-$$Nest$mupdateSamplingListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;)V

    .line 10
    return-void
    .line 13
.end method
