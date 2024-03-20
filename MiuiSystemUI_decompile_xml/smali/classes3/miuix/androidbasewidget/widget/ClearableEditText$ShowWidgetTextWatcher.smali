.class public final Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 13
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 15
    move-result p1

    .line 18
    const/4 v1, 0x1

    .line 19
    if-lez p1, :cond_1

    .line 20
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eq v0, p1, :cond_2

    .line 25
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 27
    xor-int/2addr p1, v1

    .line 29
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 30
    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 32
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 35
    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 39
    :cond_2
    return-void
    .line 42
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
