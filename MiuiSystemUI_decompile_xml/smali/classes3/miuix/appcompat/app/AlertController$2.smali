.class Lmiuix/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onShowAnimComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public onShowAnimStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
