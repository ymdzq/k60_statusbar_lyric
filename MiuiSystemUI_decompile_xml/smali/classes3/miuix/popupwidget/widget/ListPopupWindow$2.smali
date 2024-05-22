.class public final Lmiuix/popupwidget/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    if-eq p3, p1, :cond_0

    .line 3
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 5
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
