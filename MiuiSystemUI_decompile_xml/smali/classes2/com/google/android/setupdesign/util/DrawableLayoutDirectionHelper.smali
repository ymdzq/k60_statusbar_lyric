.class public abstract Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IILcom/google/android/setupcompat/internal/TemplateLayout;)Landroid/graphics/drawable/InsetDrawable;
    .locals 12

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result p3

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p3, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    new-instance p3, Landroid/graphics/drawable/InsetDrawable;

    .line 15
    move-object v0, p3

    .line 17
    move-object v1, p0

    .line 18
    move v2, p2

    .line 19
    move v4, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 21
    goto :goto_1

    .line 24
    :cond_1
    new-instance p3, Landroid/graphics/drawable/InsetDrawable;

    .line 25
    const/4 v9, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    move-object v6, p3

    .line 29
    move-object v7, p0

    .line 30
    move v8, p1

    .line 31
    move v10, p2

    .line 32
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 33
    :goto_1
    return-object p3
    .line 36
.end method
