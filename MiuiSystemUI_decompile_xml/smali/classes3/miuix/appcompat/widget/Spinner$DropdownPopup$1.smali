.class public final Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 2
    iget-object p1, p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 4
    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 9
    iget-object p1, p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 11
    sget-object p4, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget p4, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 18
    sget p5, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 20
    invoke-static {p1, p4, p5}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 25
    iget-object p1, p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 27
    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 35
    iget-object p4, p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 37
    iget-object p1, p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 39
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    .line 41
    move-result-wide v0

    .line 44
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 45
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 48
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 50
    return-void
    .line 53
.end method
