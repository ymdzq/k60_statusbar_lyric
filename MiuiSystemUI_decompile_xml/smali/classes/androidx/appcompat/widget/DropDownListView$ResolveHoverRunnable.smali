.class public final Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
