.class public final Lmiuix/popupwidget/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->$r8$classId:I

    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;II)V
    .locals 0

    iput p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->$r8$classId:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 9
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 17
    :cond_0
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    return-void

    .line 26
    :goto_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 27
    iget-object v0, v0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 29
    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    .line 33
    move-result v0

    .line 36
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 37
    iget-object v2, v2, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 39
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    .line 41
    move-result v2

    .line 44
    if-le v0, v2, :cond_4

    .line 45
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 47
    iget-object v0, v0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 49
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    .line 51
    move-result v0

    .line 54
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 55
    iget v3, v2, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 57
    if-le v0, v3, :cond_1

    .line 59
    goto :goto_2

    .line 61
    :cond_1
    iget-object v0, v2, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 62
    const/4 v2, 0x2

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 65
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 68
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 70
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 72
    const/4 v3, 0x0

    .line 74
    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 77
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {v0, v4}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 89
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 101
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 104
    new-instance v1, Lmiuix/popupwidget/widget/ListPopupWindow$2;

    .line 106
    invoke-direct {v1, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 111
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 114
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 121
    invoke-virtual {v2, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 123
    :cond_2
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 126
    move-result-object v0

    .line 129
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 130
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 134
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 137
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 140
    :goto_1
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 143
    new-instance p0, Landroid/graphics/Rect;

    .line 146
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 148
    throw v3

    .line 151
    :cond_4
    :goto_2
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 154
.end method
