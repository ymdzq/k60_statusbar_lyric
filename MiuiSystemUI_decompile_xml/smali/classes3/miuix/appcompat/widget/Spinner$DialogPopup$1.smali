.class public final Lmiuix/appcompat/widget/Spinner$DialogPopup$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner$DialogPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 4
    invoke-static {p0}, Lmiuix/appcompat/widget/Spinner;->access$200(Lmiuix/appcompat/widget/Spinner;)V

    .line 6
    return-void
    .line 9
.end method
