.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimLayoutChangeListener"
.end annotation


# instance fields
.field final screenSize:Landroid/graphics/Point;

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field final windowVisibleFrame:Landroid/graphics/Rect;

.field final wkDecorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final wkDimBgView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->wkDecorView:Ljava/lang/ref/WeakReference;

    .line 370
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->wkDimBgView:Ljava/lang/ref/WeakReference;

    .line 371
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    .line 372
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public isInMultiScreenBottom(Landroid/content/Context;)Z
    .locals 3

    .line 410
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 411
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_0

    .line 414
    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 415
    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method public isInMultiScreenMode(Landroid/content/Context;)Z
    .locals 0

    .line 401
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 379
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->wkDecorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 381
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateDimBgMargin(I)V
    .locals 2

    .line 386
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->wkDimBgView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 389
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 390
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 391
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
