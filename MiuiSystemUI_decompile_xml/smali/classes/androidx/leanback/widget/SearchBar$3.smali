.class public final Landroidx/leanback/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;

.field public final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;Landroidx/leanback/widget/SearchBar$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iput-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iget-boolean p2, p1, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 4
    if-eqz p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 9
    iget-object p2, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$3;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 16
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 18
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
    .line 25
.end method
