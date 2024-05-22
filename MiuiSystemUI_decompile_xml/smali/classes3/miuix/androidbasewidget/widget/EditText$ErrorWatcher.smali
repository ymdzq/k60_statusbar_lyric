.class public final Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/widget/EditText;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/androidbasewidget/widget/EditText;->setMiuiStyleError(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    .line 8
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    .line 15
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    :cond_0
    return-void
    .line 22
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
    return-void
    .line 2
.end method
