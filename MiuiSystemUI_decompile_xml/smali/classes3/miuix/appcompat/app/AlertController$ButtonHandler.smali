.class final Lmiuix/appcompat/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final MSG_DISMISS_DIALOG:I = -0x626d435d


# instance fields
.field private final mDialog:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/DialogInterface;

    .line 8
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    const v1, -0x626d435d

    .line 12
    if-ne v0, v1, :cond_0

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    .line 25
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method
