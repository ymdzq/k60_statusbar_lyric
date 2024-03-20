.class public Lmiuix/androidbasewidget/widget/StateEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    }
.end annotation


# static fields
.field private static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelLayout:Landroid/text/StaticLayout;

.field private mLabelLength:I

.field private mLabelMaxWidth:I

.field private mPressed:Z

.field private mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

.field private mWidgetPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Landroid/content/Context;

    const-class v1, Landroid/util/AttributeSet;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    sget v0, Lmiuix/androidbasewidget/R$attr;->miuixAppcompatStateEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/StateEditText;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createLabelLayout()V
    .locals 5

    .line 289
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method private createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    .locals 2

    const-string p0, "Could not instantiate the WidgetManager: "

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    sget-object v1, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 109
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    .line 110
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error creating WidgetManager "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find WidgetManager: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t access non-public constructor "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p1

    .line 115
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_4
    move-exception p1

    .line 113
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .locals 13

    .line 258
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    .line 262
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    .line 263
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v3

    .line 264
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    .line 265
    aget-object v4, v4, v5

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v4, v7

    .line 266
    :goto_0
    div-int/2addr v1, v5

    move v5, v6

    .line 267
    :goto_1
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 268
    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 269
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 270
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 271
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v3

    add-int/2addr v10, v4

    add-int v11, v10, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    add-int/2addr v10, v7

    add-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 276
    :cond_1
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v0

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    sub-int v11, v10, v7

    sub-int/2addr v11, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    sub-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    :goto_2
    iget v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v5, v7

    .line 282
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .locals 6

    .line 238
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 240
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 243
    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v2

    .line 244
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 246
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    :goto_1
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private getLabelLength()I
    .locals 1

    .line 152
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getWidgetLength()I
    .locals 5

    .line 158
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 160
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 161
    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 52
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText:[I

    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_StateEditText_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 55
    sget v1, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatWidgetManager:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatLabel:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 57
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatLabelMaxWidth:I

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 58
    sget v2, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText_miuixAppcompatWidgetPadding:I

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 59
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 61
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lmiuix/androidbasewidget/widget/StateEditText;->createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V

    .line 64
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 69
    :cond_1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private isWidgetResumedEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 180
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    move v2, v1

    .line 182
    :goto_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 183
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 185
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v1
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_3

    .line 209
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    goto :goto_0

    .line 196
    :cond_1
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    .line 198
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v0

    .line 204
    :cond_2
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 212
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 169
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    .line 143
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result p0

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    .line 131
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result p0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 233
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    .line 234
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 218
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    .line 219
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    if-nez p1, :cond_0

    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 221
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 223
    :cond_0
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 224
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/EditText;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 299
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    .line 85
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 86
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    goto :goto_2

    .line 89
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v1, p1

    :goto_1
    iput v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 91
    :goto_2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 92
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 94
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    :cond_1
    return-void
.end method
