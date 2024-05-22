.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic val$dividerLeash:Landroid/view/SurfaceControl;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const-string p1, "alpha"

    .line 10
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 12
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 18
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getValidAlpha(F)F

    .line 22
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils$1;->val$dividerLeash:Landroid/view/SurfaceControl;

    .line 28
    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    :cond_0
    return-void
    .line 37
.end method
