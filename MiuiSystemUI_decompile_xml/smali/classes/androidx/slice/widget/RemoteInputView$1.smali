.class public final Landroidx/slice/widget/RemoteInputView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RemoteInputView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RemoteInputView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p3, :cond_1

    .line 4
    const/4 v1, 0x6

    .line 6
    if-eq p2, v1, :cond_0

    .line 7
    const/4 v1, 0x5

    .line 9
    if-eq p2, v1, :cond_0

    .line 10
    const/4 v1, 0x4

    .line 12
    if-ne p2, v1, :cond_1

    .line 13
    :cond_0
    move p2, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p2, v0

    .line 17
    :goto_0
    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    move-result v1

    .line 23
    sget-object v2, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 24
    const/16 v2, 0x17

    .line 26
    if-eq v1, v2, :cond_2

    .line 28
    const/16 v2, 0x3e

    .line 30
    if-eq v1, v2, :cond_2

    .line 32
    const/16 v2, 0x42

    .line 34
    if-eq v1, v2, :cond_2

    .line 36
    const/16 v2, 0xa0

    .line 38
    if-eq v1, v2, :cond_2

    .line 40
    move v1, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v1, p1

    .line 44
    :goto_1
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 47
    move-result p3

    .line 50
    if-nez p3, :cond_3

    .line 51
    move p3, p1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move p3, v0

    .line 55
    :goto_2
    if-nez p2, :cond_5

    .line 56
    if-eqz p3, :cond_4

    .line 58
    goto :goto_3

    .line 60
    :cond_4
    return v0

    .line 61
    :cond_5
    :goto_3
    iget-object p2, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    .line 62
    iget-object p2, p2, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 64
    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    .line 66
    move-result p2

    .line 69
    if-lez p2, :cond_6

    .line 70
    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    .line 72
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    .line 74
    :cond_6
    return p1
    .line 77
.end method
