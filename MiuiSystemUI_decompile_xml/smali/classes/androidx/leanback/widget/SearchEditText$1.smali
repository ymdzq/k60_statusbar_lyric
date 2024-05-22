.class public final Landroidx/leanback/widget/SearchEditText$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchEditText;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    check-cast p0, Landroidx/leanback/widget/SearchBar$4;

    .line 8
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$4;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_0
    return-void
    .line 15
.end method
