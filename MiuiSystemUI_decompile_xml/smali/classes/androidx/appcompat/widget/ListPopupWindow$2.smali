.class public final Landroidx/appcompat/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 8
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 17
    :cond_0
    return-void

    .line 20
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 27
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 35
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 37
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    .line 39
    move-result v0

    .line 42
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 43
    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 45
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    .line 47
    move-result v1

    .line 50
    if-le v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 53
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 55
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    .line 57
    move-result v0

    .line 60
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 61
    iget v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 63
    if-gt v0, v2, :cond_1

    .line 65
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 67
    const/4 v1, 0x2

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 70
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow$2;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 75
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
