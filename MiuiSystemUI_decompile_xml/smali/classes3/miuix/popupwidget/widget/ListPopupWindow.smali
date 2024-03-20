.class public Lmiuix/popupwidget/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

.field public final mHandler:Landroid/os/Handler;

.field public final mListItemExpandMaximum:I

.field public final mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field public final mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$1;

.field public final mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$1;

    .line 5
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, v1, v2}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;II)V

    .line 9
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$1;

    .line 12
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 14
    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    .line 16
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 19
    const v0, 0x7fffffff

    .line 21
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 28
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 42
    const v1, 0x10102ff    # @android:attr/listPopupWindowStyle

    .line 44
    invoke-direct {v0, p1, p2, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 50
    return-void
    .line 52
.end method
