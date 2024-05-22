.class public Lcom/android/systemui/shared/shadow/DoubleShadowTextView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    const/4 v4, 0x4

    and-int/lit8 v5, p4, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    .line 4
    :goto_1
    invoke-direct {v0, v1, v2, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v7, Lcom/android/systemui/shared/R$styleable;->DoubleShadowTextView:[I

    .line 6
    invoke-virtual {v1, v2, v7, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x7

    .line 7
    :try_start_0
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v7, 0x8

    .line 8
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/16 v8, 0x9

    .line 9
    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    const/4 v9, 0x6

    .line 10
    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 11
    new-instance v10, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v10, v5, v7, v8, v9}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 12
    iput-object v10, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/4 v8, 0x2

    .line 14
    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    const/4 v10, 0x3

    .line 15
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 16
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 17
    new-instance v12, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v12, v7, v9, v11, v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 18
    iput-object v12, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v2, 0x5

    .line 19
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 20
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    filled-new-array {v3, v3, v3, v3}, [Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v7, v3

    move v9, v6

    :goto_2
    if-ge v9, v7, :cond_3

    aget-object v14, v3, v9

    if-eqz v14, :cond_2

    .line 24
    new-instance v17, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 25
    iget-object v12, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 26
    iget-object v13, v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    move-object/from16 v11, v17

    move v15, v2

    move/from16 v16, v4

    .line 27
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    aput-object v17, v1, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 28
    :cond_3
    aget-object v2, v1, v6

    aget-object v3, v1, v5

    aget-object v4, v1, v8

    aget-object v1, v1, v10

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static final synthetic access$onDraw$s-938935918(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 4
    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;

    .line 6
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V

    .line 8
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper;->applyShadows(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/widget/TextView;Landroid/graphics/Canvas;Lkotlin/jvm/functions/Function0;)V

    .line 11
    return-void
    .line 14
.end method
