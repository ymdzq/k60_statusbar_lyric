.class public Lcom/android/settings/utils/KeyboardHelper;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

.field private mActivity:Landroid/app/Activity;

.field private mChildOfContent:Landroid/view/View;

.field private mDisplayHeight:I

.field private mFocusedLocation:I

.field private mIsInMulti:Z

.field private mKeyboardShow:Z

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mStatusBarHeight:I

.field private mUsableHeightPrevious:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/utils/KeyboardHelper;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardShow(Lcom/android/settings/utils/KeyboardHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mKeyboardShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNestedScrollView(Lcom/android/settings/utils/KeyboardHelper;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpossiblyResizeChildOfContent(Lcom/android/settings/utils/KeyboardHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/utils/KeyboardHelper;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mKeyboardShow:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    .line 51
    new-instance v1, Lcom/android/settings/utils/KeyboardHelper$1;

    invoke-direct {v1, p0}, Lcom/android/settings/utils/KeyboardHelper$1;-><init>(Lcom/android/settings/utils/KeyboardHelper;)V

    iput-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 73
    iput-object p1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    .line 76
    invoke-direct {p0}, Lcom/android/settings/utils/KeyboardHelper;->refreshSoftInputMode()V

    .line 78
    iget-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$id;->scrollview:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    iput-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez v1, :cond_0

    const-string p0, "KeyboardHelper"

    const-string p1, "mNestedScrollView is empty !!!"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string/jumbo v4, "status_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mStatusBarHeight:I

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002    # @android:id/content

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mChildOfContent:Landroid/view/View;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/KeyboardHelper$2;

    invoke-direct {v1, p0}, Lcom/android/settings/utils/KeyboardHelper$2;-><init>(Lcom/android/settings/utils/KeyboardHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mDisplayHeight:I

    .line 106
    instance-of v0, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 107
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 108
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, p1, p0}, Lcom/android/settings/utils/KeyboardHelper;->setEditActionListener(Landroid/view/ViewGroup;Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)Lcom/android/settings/utils/KeyboardHelper;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/settings/utils/KeyboardHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/KeyboardHelper;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private computeUsableHeight()I
    .locals 1

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 217
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 218
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0
.end method

.method private getFocusedLocation(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 204
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p1

    .line 212
    iget p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    .line 137
    iget-boolean v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    if-eq v0, v1, :cond_0

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    .line 139
    invoke-direct {p0}, Lcom/android/settings/utils/KeyboardHelper;->refreshSoftInputMode()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/utils/KeyboardHelper;->computeUsableHeight()I

    move-result v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "possiblyResizeChildOfContent -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyboardHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mUsableHeightPrevious:I

    if-eq v1, v2, :cond_6

    .line 147
    iget-object v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v4, v2, v1

    .line 149
    div-int/lit8 v5, v2, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 150
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/utils/KeyboardHelper;->mKeyboardShow:Z

    .line 152
    iget-object v8, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v8, :cond_3

    if-eqz v5, :cond_2

    .line 154
    invoke-virtual {v8, v7}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v8, v6}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 161
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, v5}, Lcom/android/settings/utils/KeyboardHelper;->getFocusedLocation(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/utils/KeyboardHelper;->mFocusedLocation:I

    .line 165
    iget-boolean v6, p0, Lcom/android/settings/utils/KeyboardHelper;->mKeyboardShow:Z

    if-eqz v6, :cond_4

    sub-int/2addr v5, v1

    .line 166
    iget-object v6, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    .line 168
    :cond_4
    iget-object v5, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    :goto_2
    if-gez v5, :cond_5

    goto :goto_3

    :cond_5
    move v7, v5

    .line 175
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/utils/KeyboardHelper;->mFocusedLocation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mDisplayHeight:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 177
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 182
    iput v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mUsableHeightPrevious:I

    :cond_6
    return-void
.end method

.method private refreshSoftInputMode()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 189
    iget-boolean p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mIsInMulti:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    .line 192
    invoke-virtual {v0, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void
.end method

.method private setEditActionListener(Landroid/view/ViewGroup;Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 4

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 122
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 123
    check-cast v2, Landroid/widget/EditText;

    .line 125
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_1

    .line 127
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 128
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/utils/KeyboardHelper;->setEditActionListener(Landroid/view/ViewGroup;Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/utils/KeyboardHelper;->setEditActionListener(Landroid/view/ViewGroup;Landroid/widget/TextView$OnEditorActionListener;)V

    .line 224
    iput-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    .line 225
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    .line 227
    iput-object v1, p0, Lcom/android/settings/utils/KeyboardHelper;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    .line 241
    iget-object p2, p0, Lcom/android/settings/utils/KeyboardHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 242
    new-instance p2, Lcom/android/settings/utils/KeyboardHelper$3;

    invoke-direct {p2, p0}, Lcom/android/settings/utils/KeyboardHelper$3;-><init>(Lcom/android/settings/utils/KeyboardHelper;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public relocateFocused(Landroid/view/ViewGroup;)V
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/utils/KeyboardHelper;->getFocusedLocation(Landroid/view/View;)I

    move-result p1

    .line 233
    invoke-direct {p0}, Lcom/android/settings/utils/KeyboardHelper;->computeUsableHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 235
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    .line 236
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    return-void
.end method
