.class public final synthetic Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/AlertController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 8
    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 12
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 24
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 26
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 31
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 36
    :cond_1
    return-void
    .line 39
.end method
