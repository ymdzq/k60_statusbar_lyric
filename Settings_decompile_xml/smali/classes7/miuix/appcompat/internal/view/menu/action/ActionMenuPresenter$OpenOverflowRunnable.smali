.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 713
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1602(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    .line 717
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$2002(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method
