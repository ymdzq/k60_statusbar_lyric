.class public final Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/DropDownListView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/DropDownListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 7
    return-void
    .line 10
.end method
