.class Lmiuix/appcompat/internal/app/widget/ActionBarView$13;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field final synthetic val$toVisible:Z


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;->val$toVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1262
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;->val$toVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    .line 1264
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
