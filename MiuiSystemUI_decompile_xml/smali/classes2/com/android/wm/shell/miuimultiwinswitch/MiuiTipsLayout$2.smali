.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field animCount:I

.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->animCount:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->animCount:I

    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->animCount:I

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 10
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 16
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fputmHidden(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 21
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->-$$Nest$fgetTAG(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "hideAllNoAnim complete"

    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method
