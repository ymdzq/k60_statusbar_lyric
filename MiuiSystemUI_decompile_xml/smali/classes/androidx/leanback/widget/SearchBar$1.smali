.class public final Landroidx/leanback/widget/SearchBar$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/leanback/widget/SearchBar$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/leanback/widget/SearchBar$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    if-eqz p2, :cond_0

    .line 9
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 11
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v1, Landroidx/leanback/widget/SearchBar$2;

    .line 15
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p1, v2}, Landroidx/leanback/widget/SearchBar$2;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 25
    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 27
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 35
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 38
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/SearchBar;->updateUi(Z)V

    .line 40
    return-void

    .line 43
    :goto_1
    if-eqz p2, :cond_1

    .line 44
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 46
    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 48
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 50
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 56
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 59
    iget-boolean v1, p1, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 61
    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->startRecognition()V

    .line 65
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 68
    iput-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 70
    goto :goto_2

    .line 72
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 73
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 75
    :cond_2
    :goto_2
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$1;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 78
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/SearchBar;->updateUi(Z)V

    .line 80
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 84
.end method
