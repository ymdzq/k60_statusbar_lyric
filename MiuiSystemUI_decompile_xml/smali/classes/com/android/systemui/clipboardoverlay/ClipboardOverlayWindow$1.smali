.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field public final synthetic val$action:Ljava/lang/Runnable;

.field public final synthetic val$decorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;->val$decorView:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;->val$action:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;->val$decorView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow$1;->val$action:Ljava/lang/Runnable;

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    return-void
    .line 16
.end method

.method public final onWindowDetached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
