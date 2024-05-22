.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;

.field final synthetic val$onUpdate:Ljava/lang/Runnable;

.field final synthetic val$toClose:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->val$onUpdate:Ljava/lang/Runnable;

    .line 4
    iput-boolean p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->val$toClose:Z

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->val$toClose:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->releaseView()V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;

    .line 12
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;->-$$Nest$mhideCurrentInputMethod(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow;)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$AdditionalWindow$1;->val$onUpdate:Ljava/lang/Runnable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
    .line 7
.end method
