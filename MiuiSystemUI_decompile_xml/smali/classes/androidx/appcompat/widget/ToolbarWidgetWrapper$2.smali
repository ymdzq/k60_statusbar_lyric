.class public final Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCanceled:Z

.field public final synthetic this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2
    iput p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    .line 4
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iget p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onAnimationStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    return-void
    .line 10
.end method
