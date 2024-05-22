.class public final Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final screenSize:Landroid/graphics/Point;

.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field public final synthetic val$dimBgOriginalBottomMargin:I

.field public final windowVisibleFrame:Landroid/graphics/Rect;

.field public final wkDecorView:Ljava/lang/ref/WeakReference;

.field public final wkDimBgView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 2
    iput p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 11
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->wkDecorView:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->wkDimBgView:Ljava/lang/ref/WeakReference;

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    .line 27
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->windowVisibleFrame:Landroid/graphics/Rect;

    .line 32
    new-instance p1, Landroid/graphics/Point;

    .line 34
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->screenSize:Landroid/graphics/Point;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->onLayoutChange$miuix$appcompat$widget$dialoganim$PhoneDialogAnim$AnimLayoutChangeListener(Landroid/view/View;IIIIIIII)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 5
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 11
    move-result p3

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 15
    move-result p3

    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 19
    move-result p4

    .line 22
    invoke-virtual {p2, p4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 23
    move-result-object p4

    .line 26
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 27
    move-result p5

    .line 30
    invoke-virtual {p2, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 31
    move-result-object p2

    .line 34
    if-eqz p3, :cond_1

    .line 35
    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 37
    iget p5, p4, Landroid/graphics/Insets;->bottom:I

    .line 39
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 41
    sub-int/2addr p5, p2

    .line 43
    iput p5, p3, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    const/4 p4, 0x0

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 51
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 52
    move-result p2

    .line 55
    const/4 p3, 0x1

    .line 56
    const/4 p5, 0x0

    .line 57
    if-eqz p2, :cond_2

    .line 58
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 60
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    move p2, p3

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move p2, p5

    .line 68
    :goto_1
    if-eqz p2, :cond_5

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 71
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    const-string p2, "WindowUtils"

    .line 76
    const-string p6, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    .line 78
    invoke-static {p2, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string p2, "window"

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 88
    check-cast p1, Landroid/view/WindowManager;

    .line 89
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 91
    move-result-object p1

    .line 94
    :goto_2
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->screenSize:Landroid/graphics/Point;

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 97
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->windowVisibleFrame:Landroid/graphics/Rect;

    .line 100
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 102
    if-nez p2, :cond_3

    .line 104
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object p6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->screenSize:Landroid/graphics/Point;

    .line 108
    iget p7, p6, Landroid/graphics/Point;->x:I

    .line 110
    if-ne p2, p7, :cond_3

    .line 112
    iget p2, p6, Landroid/graphics/Point;->y:I

    .line 114
    int-to-float p2, p2

    .line 116
    const p6, 0x3e4ccccd    # 0.2f

    .line 117
    mul-float/2addr p2, p6

    .line 120
    float-to-int p2, p2

    .line 121
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 122
    if-lt p1, p2, :cond_3

    .line 124
    goto :goto_3

    .line 126
    :cond_3
    move p3, p5

    .line 127
    :goto_3
    if-eqz p3, :cond_5

    .line 128
    iget p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    .line 130
    if-eqz p4, :cond_4

    .line 132
    iget p5, p4, Landroid/graphics/Insets;->bottom:I

    .line 134
    :cond_4
    add-int/2addr p1, p5

    .line 136
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->wkDimBgView:Ljava/lang/ref/WeakReference;

    .line 137
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 142
    check-cast p0, Landroid/view/View;

    .line 143
    if-eqz p0, :cond_5

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    move-result-object p2

    .line 150
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 151
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 153
    if-eq p3, p1, :cond_5

    .line 155
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 157
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_5
    return-void
.end method

.method public final onLayoutChange$miuix$appcompat$widget$dialoganim$PhoneDialogAnim$AnimLayoutChangeListener(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->wkDecorView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->windowVisibleFrame:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
