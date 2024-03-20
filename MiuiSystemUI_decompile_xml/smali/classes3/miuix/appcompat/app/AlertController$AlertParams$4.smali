.class Lmiuix/appcompat/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 2
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 6
    iget-object p2, p2, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 8
    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 13
    iget-boolean p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 15
    if-nez p1, :cond_0

    .line 17
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method
